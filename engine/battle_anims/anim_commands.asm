; Battle animation command interpreter.

PlayBattleAnim:
	ldh a, [rSVBK]
	push af

	ld a, BANK(wActiveAnimObjects)
	ldh [rSVBK], a

	call _PlayBattleAnim

	pop af
	ldh [rSVBK], a
	ret

_PlayBattleAnim:
	ld c, 6
	call DelayFrames

	call BattleAnimAssignPals
	call BattleAnimRequestPals
	call DelayFrame

	ld c, 1
	ldh a, [rKEY1]
	bit 7, a ; check CGB double speed mode
	jr nz, .got_speed
	ld c, 3

.got_speed
	ld hl, hVBlank
	ld a, [hl]
	push af

	ld [hl], c
	call BattleAnimRunScript

	pop af
	ldh [hVBlank], a

	ld a, 1
	ldh [hBGMapMode], a

	ld c, 3
	call DelayFrames
	jmp WaitSFX

BattleAnimRunScript:
	ld a, [wFXAnimID + 1]
	add a
	jr c, .play_anyway

	farcall CheckBattleScene
	jr c, .disabled

; This vc_hook reduces the move animation flashing in the Virtual Console for
; Fissure, Self-Destruct, Thunder, Flash, Explosion, Horn Drill, and Hyper Beam.
	vc_hook Reduce_move_anim_flashing
	call BattleAnimClearHud
	call RunBattleAnimScript

	call BattleAnimAssignPals
	call BattleAnimRequestPals

	vc_hook Stop_reducing_move_anim_flashing
	xor a
	ldh [hSCX], a
	ldh [hSCY], a
	call DelayFrame
	call BattleAnimRestoreHuds

.disabled
	ld a, [wNumHits]
	and a
	jr z, .done

	ld l, a
	ld h, 0
	ld de, ANIM_MISS
	add hl, de
	ld a, l
	ld [wFXAnimID], a
	ld a, h
	ld [wFXAnimID + 1], a

.play_anyway
	call WaitSFX
	call PlayHitSound
	call RunBattleAnimScript

.done
	jmp BattleAnim_RevertPals

RunBattleAnimScript:
	call ClearBattleAnims

.playframe
	call RunBattleAnimCommand
	call _ExecuteBGEffects
	call BattleAnim_UpdateOAM_All
	call PushLYOverrides
	call BattleAnimRequestPals

; Speed up Rollout's animation.
	ld a, [wFXAnimID + 1]
	if HIGH(ROLLOUT)
		cp HIGH(ROLLOUT)
	else
		or a
	endc
	jr nz, .not_rollout

	ld a, [wFXAnimID]
	cp LOW(ROLLOUT)
	jr nz, .not_rollout

	ld a, BATTLE_BG_EFFECT_ROLLOUT
	ld b, NUM_BG_EFFECTS
	ld de, BG_EFFECT_STRUCT_LENGTH
	ld hl, wBGEffect1Function
.find
	cp [hl]
	jr z, .done
	add hl, de
	dec b
	jr nz, .find

.not_rollout
	call DelayFrame

.done
	ld a, [wBattleAnimFlags]
	bit BATTLEANIM_STOP_F, a
	jr z, .playframe

	jr BattleAnim_ClearOAM

BattleAnimClearHud:
	call DelayFrame
	call WaitTop
	call ClearActorHud
	ld a, $1
	ldh [hBGMapMode], a
	call Delay3
	jmp WaitTop

BattleAnimRestoreHuds:
	call DelayFrame
	call WaitTop

	ldh a, [rSVBK]
	push af
	ld a, BANK(wCurBattleMon) ; aka BANK(wTempMon), BANK(wPartyMon1), and several others
	ldh [rSVBK], a

	call UpdateBattleHuds
	farcall FinishBattleAnim

	pop af
	ldh [rSVBK], a

	ld a, $1
	ldh [hBGMapMode], a
	call Delay3
	jmp WaitTop

BattleAnimRequestPals:
	ldh a, [hCGB]
	and a
	ret z

	ldh a, [rBGP]
	ld b, a
	ld a, [wBGP]
	cp b
	call nz, BattleAnim_SetBGPals

	ldh a, [rOBP0]
	ld b, a
	ld a, [wOBP0]
	cp b
	jmp nz, BattleAnim_SetOBPals
	ret

ClearActorHud:
	ldh a, [hBattleTurn]
	and a
	jr z, .player

	hlcoord 1, 0
	lb bc, 4, 10
	jmp ClearBox

.player
	hlcoord 9, 7
	lb bc, 5, 11
	jmp ClearBox

BattleAnim_ClearOAM:
	ld a, [wBattleAnimFlags]
	bit BATTLEANIM_KEEPOAM_F, a
	ret nz
	bit BATTLEANIM_KEEPSPRITES_F, a
	jr z, .delete

	; Instead of deleting the sprites, make them all use PAL_BATTLE_OB_ENEMY
	ld hl, wShadowOAMSprite00Attributes
	ld c, NUM_SPRITE_OAM_STRUCTS
.loop
	ld a, [hl]
	and ~(PALETTE_MASK | VRAM_BANK_1) ; zeros out the palette bits
	assert PAL_BATTLE_OB_ENEMY == 0
	ld [hli], a
rept SPRITEOAMSTRUCT_LENGTH - 1
	inc hl
endr
	dec c
	jr nz, .loop
	ret

.delete
	ld hl, wShadowOAM
	ld c, wShadowOAMEnd - wShadowOAM
	xor a
.loop2
	ld [hli], a
	dec c
	jr nz, .loop2
	ret

RunBattleAnimCommand:
	call .CheckTimer
	ret nc
	jr .RunScript

.CheckTimer:
	ld a, [wBattleAnimDelay]
	and a
	jr z, .done

	dec a
	ld [wBattleAnimDelay], a
	and a
	ret

.done
	scf
	ret

.RunScript:
.loop
	call GetBattleAnimByte

	cp anim_ret_command
	jr nz, .not_done_with_anim

; Return from a subroutine.
	ld hl, wBattleAnimFlags
	bit BATTLEANIM_IN_SUBROUTINE_F, [hl]
	jr nz, .do_anim

	set BATTLEANIM_STOP_F, [hl]
	ret

.not_done_with_anim
	cp anim_obj_command
	jr nc, .do_anim

	ld [wBattleAnimDelay], a
	ret

.do_anim
	call .DoCommand

	jr .loop

.DoCommand:
; Execute battle animation command in [wBattleAnimByte].
	ld a, [wBattleAnimByte]
	sub anim_obj_command

	ld e, a
	ld d, 0
	ld hl, BattleAnimCommands
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

BattleAnimCommands::
; entries correspond to anim_* constants (see macros/scripts/battle_anims.asm)
	table_width 2, BattleAnimCommands
	dw BattleAnimCmd_Obj               ; d0
	dw BattleAnimCmd_1GFX              ; d1
	dw BattleAnimCmd_2GFX              ; d2
	dw BattleAnimCmd_3GFX              ; d3
	dw BattleAnimCmd_4GFX              ; d4
	dw BattleAnimCmd_5GFX              ; d5
	dw BattleAnimCmd_IncObj            ; d6
	dw BattleAnimCmd_SetObj            ; d7
	dw BattleAnimCmd_IncBGEffect       ; d8
	dw BattleAnimCmd_BattlerGFX_1Row   ; d9
	dw BattleAnimCmd_BattlerGFX_2Row   ; da
	dw BattleAnimCmd_CheckPokeball     ; db
	dw BattleAnimCmd_Transform         ; dc
	dw BattleAnimCmd_RaiseSub          ; dd
	dw BattleAnimCmd_DropSub           ; de
	dw BattleAnimCmd_ResetObp0         ; df
	dw BattleAnimCmd_Sound             ; e0
	dw BattleAnimCmd_Cry               ; e1
	dw BattleAnimCmd_MinimizeOpp       ; e2
	dw BattleAnimCmd_OAMOn             ; e3
	dw BattleAnimCmd_OAMOff            ; e4
	dw BattleAnimCmd_ClearObjs         ; e5
	dw BattleAnimCmd_BeatUp            ; e6
	dw BattleAnimCmd_IfParamItemEqual  ; e7
	dw BattleAnimCmd_UpdateActorPic    ; e8
	dw BattleAnimCmd_Minimize          ; e9
	dw BattleAnimCmd_SetBgPal          ; ea
	dw BattleAnimCmd_SetObjPal         ; eb
	dw DoNothing ; BattleAnimCmd_EC    ; ec
	dw DoNothing ; BattleAnimCmd_ED    ; ed
	dw BattleAnimCmd_IfParamAnd        ; ee
	dw BattleAnimCmd_JumpUntil         ; ef
	dw BattleAnimCmd_BGEffect          ; f0
	dw BattleAnimCmd_BGP               ; f1
	dw BattleAnimCmd_OBP0              ; f2
	dw BattleAnimCmd_OBP1              ; f3
	dw BattleAnimCmd_KeepSprites       ; f4
	dw BattleAnimCmd_KeepSpritesAndOAM ; f5
	dw DoNothing ; BattleAnimCmd_F6    ; f6
	dw DoNothing ; BattleAnimCmd_F7    ; f7
	dw BattleAnimCmd_IfParamEqual      ; f8
	dw BattleAnimCmd_SetVar            ; f9
	dw BattleAnimCmd_IncVar            ; fa
	dw BattleAnimCmd_IfVarEqual        ; fb
	dw BattleAnimCmd_Jump              ; fc
	dw BattleAnimCmd_Loop              ; fd
	dw BattleAnimCmd_Call              ; fe
	dw BattleAnimCmd_Ret               ; ff
	assert_table_length $100 - FIRST_BATTLE_ANIM_CMD

BattleAnimCmd_Ret:
	ld hl, wBattleAnimFlags
	res BATTLEANIM_IN_SUBROUTINE_F, [hl]
	ld hl, wBattleAnimParent
	ld a, [hli]
	ld d, [hl]
	ld hl, wBattleAnimAddress
	ld [hli], a
	ld [hl], d
	ld a, [wBattleAnimParentBank]
	ld [wBattleAnimBank], a
	ret

BattleAnimCmd_Call:
	call GetBattleAnimByte
	push af
	call GetBattleAnimByte
	ld e, a
	call GetBattleAnimByte
	ld d, a
	push de
	ld hl, wBattleAnimAddress
	ld a, [hli]
	ld d, [hl]
	ld hl, wBattleAnimParent
	ld [hli], a
	ld [hl], d
	ld a, [wBattleAnimBank]
	ld [wBattleAnimParentBank], a
	pop de
	ld hl, wBattleAnimAddress
	ld a, e
	ld [hli], a
	ld [hl], d
	pop af
	ld [wBattleAnimBank], a
	ld hl, wBattleAnimFlags
	set BATTLEANIM_IN_SUBROUTINE_F, [hl]
	ret

BattleAnimCmd_Jump:
	call GetBattleAnimByte
	ld e, a
	call GetBattleAnimByte
	ld d, a
	ld hl, wBattleAnimAddress
	ld a, e
	ld [hli], a
	ld [hl], d
	ret

BattleAnimCmd_Loop:
	call GetBattleAnimByte
	ld hl, wBattleAnimFlags
	bit BATTLEANIM_IN_LOOP_F, [hl]
	jr nz, .continue_loop
	and a
	jr z, .perpetual
	dec a
	set BATTLEANIM_IN_LOOP_F, [hl]
	ld [wBattleAnimLoops], a
.continue_loop
	ld hl, wBattleAnimLoops
	ld a, [hl]
	and a
	jr z, .return_from_loop
	dec [hl]
.perpetual
	call GetBattleAnimByte
	ld e, a
	call GetBattleAnimByte
	ld d, a
	ld hl, wBattleAnimAddress
	ld a, e
	ld [hli], a
	ld [hl], d
	ret

.return_from_loop
	ld hl, wBattleAnimFlags
	res BATTLEANIM_IN_LOOP_F, [hl]
	ld hl, wBattleAnimAddress
	ld a, [hli]
	ld d, [hl]
	ld e, a
	inc de
	inc de
	ld a, d
	ld [hld], a
	ld [hl], e
	ret

BattleAnimCmd_JumpUntil:
	ld hl, wBattleAnimParam
	ld a, [hl]
	and a
	jr z, .dont_jump

	dec [hl]
	call GetBattleAnimByte
	ld e, a
	call GetBattleAnimByte
	ld d, a
	ld hl, wBattleAnimAddress
	ld a, e
	ld [hli], a
	ld [hl], d
	ret

.dont_jump
	ld hl, wBattleAnimAddress
	ld a, [hli]
	ld d, [hl]
	ld e, a
	inc de
	inc de
	ld a, d
	ld [hld], a
	ld [hl], e
	ret

BattleAnimCmd_SetVar:
	call GetBattleAnimByte
	ld [wBattleAnimVar], a
	ret

BattleAnimCmd_IncVar:
	ld hl, wBattleAnimVar
	inc [hl]
	ret

BattleAnimCmd_IfVarEqual:
	call GetBattleAnimByte
	ld hl, wBattleAnimVar
	cp [hl]
	jr z, .jump

	ld hl, wBattleAnimAddress
	ld a, [hli]
	ld d, [hl]
	ld e, a
	inc de
	inc de
	ld a, d
	ld [hld], a
	ld [hl], e
	ret

.jump
	call GetBattleAnimByte
	ld e, a
	call GetBattleAnimByte
	ld d, a
	ld hl, wBattleAnimAddress
	ld a, e
	ld [hli], a
	ld [hl], d
	ret

BattleAnimCmd_IfParamItemEqual:
	call GetBattleAnimByte
	ld l, a
	call GetBattleAnimByte
	ld h, a
	call GetItemIDFromIndex
	jr BattleAnimCmd_IfParamEqualContinue
BattleAnimCmd_IfParamEqual:
	call GetBattleAnimByte
BattleAnimCmd_IfParamEqualContinue:
	ld hl, wBattleAnimParam
	cp [hl]
	jr z, .jump

	ld hl, wBattleAnimAddress
	ld a, [hli]
	ld d, [hl]
	ld e, a
	inc de
	inc de
	ld a, d
	ld [hld], a
	ld [hl], e
	ret

.jump
	call GetBattleAnimByte
	ld e, a
	call GetBattleAnimByte
	ld d, a
	ld hl, wBattleAnimAddress
	ld a, e
	ld [hli], a
	ld [hl], d
	ret

BattleAnimCmd_IfParamAnd:
	call GetBattleAnimByte
	ld e, a
	ld a, [wBattleAnimParam]
	and e
	jr nz, .jump

	ld hl, wBattleAnimAddress
	ld a, [hli]
	ld d, [hl]
	ld e, a
	inc de
	inc de
	ld a, d
	ld [hld], a
	ld [hl], e
	ret

.jump
	call GetBattleAnimByte
	ld e, a
	call GetBattleAnimByte
	ld d, a
	ld hl, wBattleAnimAddress
	ld a, e
	ld [hli], a
	ld [hl], d
	ret

BattleAnimCmd_Obj:
; index, x, y, param
	call GetBattleAnimByte
	ld [wBattleObjectTempID], a
	call GetBattleAnimByte
	ld [wBattleObjectTempID + 1], a
	call GetBattleAnimByte
	ld [wBattleObjectTempXCoord], a
	call GetBattleAnimByte
	ld [wBattleObjectTempYCoord], a
	call GetBattleAnimByte
	ld [wBattleObjectTempParam], a
	jmp QueueBattleAnimation

BattleAnimCmd_BGEffect:
	call GetBattleAnimByte
	ld [wBattleBGEffectTempID], a
	call GetBattleAnimByte
	ld [wBattleBGEffectTempJumptableIndex], a
	call GetBattleAnimByte
	ld [wBattleBGEffectTempTurn], a
	call GetBattleAnimByte
	ld [wBattleBGEffectTempParam], a
	jmp _QueueBGEffect

BattleAnimCmd_BGP:
	call GetBattleAnimByte
	ld [wBGP], a
	ret

BattleAnimCmd_OBP0:
	call GetBattleAnimByte
	ld [wOBP0], a
	ret

BattleAnimCmd_OBP1:
	call GetBattleAnimByte
	ld [wOBP1], a
	ret

BattleAnimCmd_ResetObp0:
	ldh a, [hSGB]
	and a
	ld a, $e0
	jr z, .not_sgb
	ld a, $f0
.not_sgb
	ld [wOBP0], a
	ret

BattleAnimCmd_ClearObjs:
	ld hl, wActiveAnimObjects
	ld e, NUM_BATTLE_ANIM_STRUCTS * BATTLEANIMSTRUCT_LENGTH
	xor a
.loop
	ld [hli], a
	dec e
	jr nz, .loop
	ret

BattleAnimCmd_1GFX:
BattleAnimCmd_2GFX:
BattleAnimCmd_3GFX:
BattleAnimCmd_4GFX:
BattleAnimCmd_5GFX:
	ld a, [wBattleAnimByte]
	and $f
	ld c, a
	ld hl, wBattleAnimTileDict
	xor a
	ld [wBattleAnimGFXTempTileID], a
.loop
	ld a, [wBattleAnimGFXTempTileID]
	cp (vTiles1 - vTiles0) / LEN_2BPP_TILE - BATTLEANIM_BASE_TILE
	vc_hook Reduce_move_anim_flashing_PRESENT
	ret nc
	call GetBattleAnimByte
	ld [hli], a
	ld a, [wBattleAnimGFXTempTileID]
	ld [hli], a
	push bc
	push hl
	ld l, a
	ld h, 0
rept 4 ; no-optimize hl|bc|de = a * 16 (rept) [size > speed]
	add hl, hl
endr
	ld de, vTiles0 tile BATTLEANIM_BASE_TILE
	add hl, de
	ld a, [wBattleAnimByte]
	farcall LoadBattleAnimGFX
	ld a, [wBattleAnimGFXTempTileID]
	add c
	ld [wBattleAnimGFXTempTileID], a
	pop hl
	pop bc
	dec c
	jr nz, .loop
	ret

BattleAnimCmd_IncObj:
	call GetBattleAnimByte
	ld e, NUM_BATTLE_ANIM_STRUCTS
	ld bc, wActiveAnimObjects
.loop
	ld hl, BATTLEANIMSTRUCT_INDEX
	add hl, bc
	ld d, [hl]
	ld a, [wBattleAnimByte]
	cp d
	jr z, .found
	ld hl, BATTLEANIMSTRUCT_LENGTH
	add hl, bc
	ld c, l
	ld b, h
	dec e
	jr nz, .loop
	ret

.found
	ld hl, BATTLEANIMSTRUCT_JUMPTABLE_INDEX
	add hl, bc
	inc [hl]
	ret

BattleAnimCmd_IncBGEffect:
	call GetBattleAnimByte
	ld e, NUM_BG_EFFECTS
	ld bc, wBGEffect1Function
.loop
	ld hl, $0
	add hl, bc
	ld d, [hl]
	ld a, [wBattleAnimByte]
	cp d
	jr z, .found
	ld hl, 4
	add hl, bc
	ld c, l
	ld b, h
	dec e
	jr nz, .loop
	ret

.found
	ld hl, BG_EFFECT_STRUCT_JT_INDEX
	add hl, bc
	inc [hl]
	ret

BattleAnimCmd_SetObj:
	call GetBattleAnimByte
	ld e, NUM_BATTLE_ANIM_STRUCTS
	ld bc, wActiveAnimObjects
.loop
	ld hl, BATTLEANIMSTRUCT_INDEX
	add hl, bc
	ld d, [hl]
	ld a, [wBattleAnimByte]
	cp d
	jr z, .found
	ld hl, BATTLEANIMSTRUCT_LENGTH
	add hl, bc
	ld c, l
	ld b, h
	dec e
	jr nz, .loop
	ret

.found
	call GetBattleAnimByte
	ld hl, BATTLEANIMSTRUCT_JUMPTABLE_INDEX
	add hl, bc
	ld [hl], a
	ret

BattleAnimCmd_BattlerGFX_1Row:
	ld hl, wBattleAnimTileDict
.loop
	ld a, [hl]
	and a
	jr z, .okay
	inc hl
	inc hl
	jr .loop

.okay
	ld a, BATTLE_ANIM_GFX_PLAYERHEAD
	ld [hli], a
	ld a, ($80 - 6 - 7) - BATTLEANIM_BASE_TILE
	ld [hli], a
	ld a, BATTLE_ANIM_GFX_ENEMYFEET
	ld [hli], a
	ld [hl], ($80 - 6) - BATTLEANIM_BASE_TILE

	ld hl, vTiles0 tile ($80 - 6 - 7)
	ld de, vTiles2 tile $06 ; Enemy feet start tile
	ld a, 7 tiles ; Enemy pic height
	ld [wBattleAnimGFXTempPicHeight], a
	ld a, 7 ; Copy 7x1 tiles
	call .LoadFeet
	ld de, vTiles2 tile $31 ; Player head start tile
	ld a, 6 tiles ; Player pic height
	ld [wBattleAnimGFXTempPicHeight], a
	ld a, 6 ; Copy 6x1 tiles
; fallthrough
.LoadFeet:
	push af
	push hl
	push de
	lb bc, BANK(@), 1
	call Request2bpp
	pop de
	ld a, [wBattleAnimGFXTempPicHeight]
	ld l, a
	ld h, 0
	add hl, de
	ld e, l
	ld d, h
	pop hl
	ld bc, 1 tiles
	add hl, bc
	pop af
	dec a
	jr nz, .LoadFeet
	ret

BattleAnimCmd_BattlerGFX_2Row:
	ld hl, wBattleAnimTileDict
.loop
	ld a, [hl]
	and a
	jr z, .okay
	inc hl
	inc hl
	jr .loop

.okay
	ld a, BATTLE_ANIM_GFX_PLAYERHEAD
	ld [hli], a
	ld a, ($80 - 6 * 2 - 7 * 2) - BATTLEANIM_BASE_TILE
	ld [hli], a
	ld a, BATTLE_ANIM_GFX_ENEMYFEET
	ld [hli], a
	ld [hl], ($80 - 6 * 2) - BATTLEANIM_BASE_TILE

	ld hl, vTiles0 tile ($80 - 6 * 2 - 7 * 2)
	ld de, vTiles2 tile $05 ; Enemy feet start tile
	ld a, 7 tiles ; Enemy pic height
	ld [wBattleAnimGFXTempPicHeight], a
	ld a, 7 ; Copy 7x2 tiles
	call .LoadHead
	ld de, vTiles2 tile $31 ; Player head start tile
	ld a, 6 tiles ; Player pic height
	ld [wBattleAnimGFXTempPicHeight], a
	ld a, 6 ; Copy 6x2 tiles
; fallthrough
.LoadHead:
	push af
	push hl
	push de
	lb bc, BANK(@), 2
	call Request2bpp
	pop de
	ld a, [wBattleAnimGFXTempPicHeight]
	ld l, a
	ld h, 0
	add hl, de
	ld e, l
	ld d, h
	pop hl
	ld bc, 2 tiles
	add hl, bc
	pop af
	dec a
	jr nz, .LoadHead
	ret

BattleAnimCmd_CheckPokeball:
	farcall GetPokeBallWobble
	ld a, c
	ld [wBattleAnimVar], a
	ret

BattleAnimCmd_Transform:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wCurPartySpecies)
	ldh [rSVBK], a

	ld a, [wCurPartySpecies]
	push af

	ldh a, [hBattleTurn]
	and a
	jr z, .player

	ld a, [wTempBattleMonSpecies]
	ld [wCurPartySpecies], a
	ld hl, wBattleMonForm
	predef GetUnownLetter
	ld de, vTiles0 tile $00
	predef GetMonFrontpic
	jr .done

.player
	ld a, [wTempEnemyMonSpecies]
	ld [wCurPartySpecies], a
	ld hl, wEnemyMonForm
	predef GetUnownLetter
	ld de, vTiles0 tile $00
	predef GetMonBackpic

.done
	pop af
	ld [wCurPartySpecies], a

	pop af
	ldh [rSVBK], a
	ret

BattleAnimCmd_UpdateActorPic:
	ld de, vTiles0 tile $00
	ldh a, [hBattleTurn]
	and a
	jr z, .player

	ld hl, vTiles2 tile $00
	lb bc, 0, 7 * 7
	jmp Request2bpp

.player
	ld hl, vTiles2 tile $31
	lb bc, 0, 6 * 6
	jmp Request2bpp

BattleAnimCmd_RaiseSub:
	ldh a, [rSVBK]
	push af
	ld a, 1 ; unnecessary bankswitch?
	ldh [rSVBK], a

	xor a ; BANK(sScratch)
	call OpenSRAM

GetSubstitutePic: ; used only for BANK(GetSubstitutePic)
	ld hl, sScratch
	ld bc, (7 * 7) tiles
.loop
	xor a
	ld [hli], a
	dec bc
	ld a, c
	or b
	jr nz, .loop

	ldh a, [hBattleTurn]
	and a
	jr z, .player

	ld hl, MonsterSpriteGFX + 0 tiles
	ld de, sScratch + (2 * 7 + 5) tiles
	call .CopyTile
	ld hl, MonsterSpriteGFX + 1 tiles
	ld de, sScratch + (3 * 7 + 5) tiles
	call .CopyTile
	ld hl, MonsterSpriteGFX + 2 tiles
	ld de, sScratch + (2 * 7 + 6) tiles
	call .CopyTile
	ld hl, MonsterSpriteGFX + 3 tiles
	ld de, sScratch + (3 * 7 + 6) tiles
	call .CopyTile

	ld hl, vTiles2 tile $00
	ld de, sScratch
	lb bc, BANK(GetSubstitutePic), 7 * 7
	call Request2bpp
	jr .done

.player
	ld hl, MonsterSpriteGFX + 4 tiles
	ld de, sScratch + (2 * 6 + 4) tiles
	call .CopyTile
	ld hl, MonsterSpriteGFX + 5 tiles
	ld de, sScratch + (3 * 6 + 4) tiles
	call .CopyTile
	ld hl, MonsterSpriteGFX + 6 tiles
	ld de, sScratch + (2 * 6 + 5) tiles
	call .CopyTile
	ld hl, MonsterSpriteGFX + 7 tiles
	ld de, sScratch + (3 * 6 + 5) tiles
	call .CopyTile

	ld hl, vTiles2 tile $31
	ld de, sScratch
	lb bc, BANK(GetSubstitutePic), 6 * 6
	call Request2bpp

.done
	call CloseSRAM

	pop af
	ldh [rSVBK], a
	ret

.CopyTile:
	ld bc, 1 tiles
	ld a, BANK(MonsterSpriteGFX)
	jmp FarCopyBytes

BattleAnimCmd_MinimizeOpp:
	ldh a, [rSVBK]
	push af
	ld a, 1 ; unnecessary bankswitch?
	ldh [rSVBK], a

	xor a ; BANK(sScratch)
	call OpenSRAM
	call GetMinimizePic
	call Request2bpp
	call CloseSRAM

	pop af
	ldh [rSVBK], a
	ret

GetMinimizePic:
	ld hl, sScratch
	ld bc, (7 * 7) tiles
.loop
	xor a
	ld [hli], a
	dec bc
	ld a, c
	or b
	jr nz, .loop

	ldh a, [hBattleTurn]
	and a
	jr z, .player

	ld de, sScratch + (3 * 7 + 5) tiles
	call CopyMinimizePic
	ld hl, vTiles2 tile $00
	ld de, sScratch
	lb bc, BANK(GetMinimizePic), 7 * 7
	ret

.player
	ld de, sScratch + (3 * 6 + 4) tiles
	call CopyMinimizePic
	ld hl, vTiles2 tile $31
	ld de, sScratch
	lb bc, BANK(GetMinimizePic), 6 * 6
	ret

CopyMinimizePic:
	ld hl, MinimizePic
	ld bc, $10
	ld a, BANK(MinimizePic)
	jmp FarCopyBytes

MinimizePic:
INCBIN "gfx/battle/minimize.2bpp"

BattleAnimCmd_Minimize:
	ldh a, [rSVBK]
	push af
	ld a, 1 ; unnecessary bankswitch?
	ldh [rSVBK], a

	xor a ; BANK(sScratch)
	call OpenSRAM
	call GetMinimizePic
	ld hl, vTiles0 tile $00
	call Request2bpp
	call CloseSRAM

	pop af
	ldh [rSVBK], a
	ret

	BattleAnimCmd_SetBgPal:
	xor a
	jr SetBattleAnimPal
BattleAnimCmd_SetObjPal:
	ld a, 1
SetBattleAnimPal:
	; This denotes whether to reference bg pals or obj pals.
	ld b, a

	call GetBattleAnimByte
	ld d, a
	call GetBattleAnimByte
	ld e, a
	ld a, d
	cp PAL_BATTLE_BG_USER
	assert PAL_BATTLE_BG_USER + 1 == PAL_BATTLE_BG_TARGET
	ld a, b

	; User/Target pal handling should always index based on bg pal.
	ld b, 0
	jr z, .UserPal
	jr nc, .TargetPal
	ld b, a
.finish
	call .SetPaletteData
	jmp SetPalettes

.UserPal:
	ldh a, [hBattleTurn]
	and a
	jr nz, .EnemyPal
.PlayerPal:
	; Backpic.
	ld d, PAL_BATTLE_BG_PLAYER
	call .SetPaletteData

	; Head. + 8 to reference object palettes.
	ld d, PAL_BATTLE_OB_PLAYER + 8
	jr .finish

.TargetPal:
	ldh a, [hBattleTurn]
	and a
	jr nz, .PlayerPal
.EnemyPal:
	; Frontpic.
	ld d, PAL_BATTLE_BG_ENEMY
	call .SetPaletteData

	; Feet.
	ld d, PAL_BATTLE_OB_ENEMY + 8
	jr .finish

.SetPaletteData:
	push de
	push bc

	; Check if we should reference BG or OBJ pals.
	dec b
	jr nz, .got_pal_target
	ld a, d
	add 8 ; wBGPals + 8 palettes == wOBPals1
	ld d, a

.got_pal_target
	; Get palette to change.
	ld hl, wBGPals1
	ld bc, 1 palettes
	ld a, d
	rst AddNTimes

	; Get palette to set.
	call SwapHLDE
	ld a, l
	inc l
	jr z, .SetDefaultPal
	ld hl, CustomBattlePalettes
	rst AddNTimes

	; Write the palette.
	call FarCopyColorWRAM
.done_setpal
	pop bc
	pop de
	ret

.SetDefaultPal:
	ld b, h
	farcall SetDefaultBattlePalette
	jr .done_setpal

CustomBattlePalettes:
INCLUDE "gfx/battle_anims/custom.pal"

BattleAnimCmd_DropSub:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wCurPartySpecies)
	ldh [rSVBK], a

	ld a, [wCurPartySpecies]
	push af
	ldh a, [hBattleTurn]
	and a
	jr z, .player

	farcall DropEnemySub
	jr .done

.player
	farcall DropPlayerSub

.done
	pop af
	ld [wCurPartySpecies], a

	pop af
	ldh [rSVBK], a
	ret

BattleAnimCmd_BeatUp:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wCurPartySpecies)
	ldh [rSVBK], a

	ld a, [wCurPartySpecies]
	push af

	ld a, [wBattleAnimParam]
	ld [wCurPartySpecies], a

	ldh a, [hBattleTurn]
	and a
	jr z, .player

	ld hl, wBattleMonForm
	predef GetUnownLetter
	ld de, vTiles2 tile $00
	predef GetMonFrontpic
	jr .done

.player
	ld hl, wEnemyMonForm
	predef GetUnownLetter
	ld de, vTiles2 tile $31
	predef GetMonBackpic

.done
	pop af
	ld [wCurPartySpecies], a
	ld b, SCGB_BATTLE_COLORS
	call GetSGBLayout

	pop af
	ldh [rSVBK], a
	ret

BattleAnimCmd_OAMOn:
	xor a
	ldh [hOAMUpdate], a
	ret

BattleAnimCmd_OAMOff:
	ld a, $1
	ldh [hOAMUpdate], a
	ret

BattleAnimCmd_KeepSprites:
	ld hl, wBattleAnimFlags
	set BATTLEANIM_KEEPSPRITES_F, [hl]
	ret

BattleAnimCmd_KeepSpritesAndOAM:
	ld hl, wBattleAnimFlags
	set BATTLEANIM_KEEPSPRITES_F, [hl]
	set BATTLEANIM_KEEPOAM_F, [hl]
	ret

BattleAnimCmd_Sound:
	call GetBattleAnimByte
	ld e, a
	srl a
	srl a
	ld [wSFXDuration], a
	call .GetCryTrack
	maskbits NUM_NOISE_CHANS
	ld [wCryTracks], a

	ld e, a
	ld d, 0
	ld hl, .GetPanning
	add hl, de
	ld a, [hl]
	ld [wStereoPanningMask], a

	call GetBattleAnimByte
	ld e, a
	ld d, 0
	farjp PlayStereoSFX

.GetPanning:
	db $f0, $0f, $f0, $0f

.GetCryTrack:
	ldh a, [hBattleTurn]
	and a
	jr nz, .enemy

	ld a, e
	ret

.enemy
	ld a, e
	xor 1
	ret

BattleAnimCmd_Cry:
	call GetBattleAnimByte
	maskbits NUM_NOISE_CHANS
	ld e, a
	ld d, 0
	ld hl, .CryData
rept 4
	add hl, de
endr

	ldh a, [rSVBK]
	push af
	ld a, BANK(wEnemyMon) ; wBattleMon is in WRAM0, but wEnemyMon is in WRAMX
	ldh [rSVBK], a

	ldh a, [hBattleTurn]
	and a
	jr nz, .enemy

	ld a, $f0
	ld [wCryTracks], a
	ld a, [wBattleMonSpecies]
	jr .done_cry_tracks

.enemy
	ld a, $0f
	ld [wCryTracks], a
	ld a, [wEnemyMonSpecies]

.done_cry_tracks
	push hl
	call LoadCry
	pop hl
	jr c, .done

	ld a, [hli]
	ld c, a
	ld a, [hli]
	ld b, a

	push hl
	ld hl, wCryPitch
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, bc
	ld a, l
	ld [wCryPitch], a
	ld a, h
	ld [wCryPitch + 1], a
	pop hl

	ld a, [hli]
	ld b, [hl]
	ld c, a
	ld hl, wCryLength
	ld a, [hli]
	ld h, [hl]
	ld l, a
	add hl, bc

	ld a, l
	ld [wCryLength], a
	ld a, h
	ld [wCryLength + 1], a
	ld a, 1
	ld [wStereoPanningMask], a

	farcall _PlayCry

.done
	pop af
	ldh [rSVBK], a
	ret

.CryData:
; +pitch, +length
	dw $0000, $00c0
	dw $0000, $0040
	dw $0000, $0000
	dw $0000, $0000

PlayHitSound:
	ld a, [wNumHits]
	cp BATTLEANIM_ENEMY_DAMAGE
	jr z, .okay
	cp BATTLEANIM_PLAYER_DAMAGE
	ret nz

.okay
	ld a, [wTypeModifier]
	and $7f
	ret z

	cp EFFECTIVE
	ld de, SFX_DAMAGE
	jr z, .play

	ld de, SFX_SUPER_EFFECTIVE
	jr nc, .play

	ld de, SFX_NOT_VERY_EFFECTIVE

.play
	jmp PlaySFX

BattleAnimAssignPals:
	ldh a, [hCGB]
	and a
	jr nz, .cgb
	ldh a, [hSGB]
	and a
	ld a, %11100000
	jr z, .sgb
	ld a, %11110000

.sgb
	ld [wOBP0], a
	ld a, %11100100
	ld [wBGP], a
	ld [wOBP1], a
	ret

.cgb
	ld a, %11100100
	ld [wBGP], a
	ld [wOBP0], a
	ld [wOBP1], a
	call DmgToCgbBGPals
	lb de, %11100100, %11100100
	jmp DmgToCgbObjPals

ClearBattleAnims::
; Clear animation block
	ld hl, wLYOverrides
	ld bc, wBattleAnimEnd - wLYOverrides
	xor a
	rst ByteFill

	ld hl, wFXAnimID
	ld a, [hli]
	ld c, a
	ld b, [hl]
	call GetBattleAnimPointer
	call BattleAnimAssignPals
	jmp DelayFrame

BattleAnim_RevertPals:
	ld a, [wBattleAnimFlags]
	bit BATTLEANIM_KEEPSPRITES_F, a
	ret nz

	call WaitTop
	ld a, %11100100
	ld [wBGP], a
	ld [wOBP0], a
	ld [wOBP1], a
	call DmgToCgbBGPals
	lb de, %11100100, %11100100
	call DmgToCgbObjPals
	xor a
	ldh [hSCX], a
	ldh [hSCY], a
	call DelayFrame
	ld a, $1
	ldh [hBGMapMode], a
	ret

BattleAnim_SetBGPals:
	ldh [rBGP], a
	ldh a, [hCGB]
	and a
	ret z
	ldh a, [rSVBK]
	push af
	ld a, BANK(wBGPals1)
	ldh [rSVBK], a
	ld hl, wBGPals2
	ld de, wBGPals1
	ldh a, [rBGP]
	ld b, a
	ld c, 7
	call CopyPals
	ld hl, wOBPals2
	ld de, wOBPals1
	ldh a, [rBGP]
	ld b, a
	ld c, 2
	call CopyPals
	pop af
	ldh [rSVBK], a
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

BattleAnim_SetOBPals:
	ldh [rOBP0], a
	ldh a, [hCGB]
	and a
	ret z
	ldh a, [rSVBK]
	push af
	ld a, BANK(wOBPals1)
	ldh [rSVBK], a
	ld hl, wOBPals2 palette PAL_BATTLE_OB_GRAY
	ld de, wOBPals1 palette PAL_BATTLE_OB_GRAY
	ldh a, [rOBP0]
	ld b, a
	ld c, 2
	call CopyPals
	pop af
	ldh [rSVBK], a
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

BattleAnim_UpdateOAM_All:
	xor a
	ld [wBattleAnimOAMPointerLo], a
	ld hl, wActiveAnimObjects
	ld e, NUM_BATTLE_ANIM_STRUCTS
.loop
	ld a, [hl]
	and a
	jr z, .next
	ld c, l
	ld b, h
	push hl
	push de
	call DoBattleAnimFrame
	call BattleAnimOAMUpdate
	pop de
	pop hl
	ret c

.next
	ld bc, BATTLEANIMSTRUCT_LENGTH
	add hl, bc
	dec e
	jr nz, .loop
	ld a, [wBattleAnimOAMPointerLo]
	ld l, a
	ld h, HIGH(wShadowOAM)
.loop2
	ld a, l
	cp LOW(wShadowOAMEnd)
	ret nc
	xor a
	ld [hli], a
	jr .loop2
