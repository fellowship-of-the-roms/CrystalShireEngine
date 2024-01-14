Function10032e:
	call Function10034d
	ld e, a
	ret nc
	ld [wcd2b], a
	ret

Function100337:
	call Function10032e
	ret c
	ld a, [wc821]
	bit 4, a
	jr z, .asm_100345
	ld a, e
	and a
	ret

.asm_100345
	ld a, $f9
	ld e, a
	ld [wcd2b], a
	scf
	ret

Function10034d:
	ld a, [wc821]
	bit 1, a
	jr nz, .asm_10036a
	bit 2, a
	jr nz, .asm_10037e
	bit 3, a
	jr nz, .asm_100366
	bit 0, a
	jr nz, .asm_100364
	ld a, $01
	and a
	ret

.asm_100364
	xor a
	ret

.asm_100366
	ld a, $02
	and a
	ret

.asm_10036a
	ld a, MOBILEAPI_00
	call MobileAPI
	ld [wcd2c], a
	ld a, h
	ld [wcd2d], a
	ld a, l
	ld [wcd2e], a
	ld a, $ff
	scf
	ret

.asm_10037e
	ld a, $fe
	scf
	ret

Function100382:
	ld a, [wcd27]
	ld hl, Jumptable_10044e
	jmp JumpTable

Function10038a:
	ld hl, wccb4
	ld a, MOBILEAPI_17
	jmp MobileAPI

Function100393:
	ld hl, wcc60
	ld a, MOBILEAPI_1D
	jmp MobileAPI

Function10039c:
	ld hl, wcc60
	ld de, w3_d000
	ld bc, $54
	ld a, $03
	jmp FarCopyWRAM

Function1003ba:
	ld hl, wccb4
	ld de, w3_d080
	ld bc, $54
	ld a, $03
	jmp FarCopyWRAM

Function1003c9:
;	ld hl, w3_d080
	ld de, wccb4
	ld bc, $54
	ld a, $03
	jmp FarCopyWRAM

Function1003d8:
	ld hl, wccb4
	ld a, [hli]
	ld c, a
	ld b, 0
	push hl
	add hl, bc
	ld a, [wBGMapPalBuffer]
	ld [hl], a
	pop hl
	inc bc
	call Function10043a
	add hl, bc
	ld a, e
	ld [hli], a
	ld [hl], d
	ld a, c
	add $02
	ld [wccb4], a
	ret

Function1003f5:
	ld a, [wcc60]
	sub $03
	ld [wcc60], a
	ld a, [wccb4]
	sub $03
	ld [wccb4], a
	ret

Function100406:
	ld a, [wcc60]
	sub $02
	ld c, a
	ld b, 0
	ld hl, wcc61
	call Function10043a
	add hl, bc
	ld a, [hli]
	cp e
	jr nz, .asm_100426
	ld a, [hld]
	cp d
	jr nz, .asm_100426
	dec hl
	ld a, [wBGMapPalBuffer]
	cp [hl]
	jr nz, .asm_10042d
	xor a
	ret

.asm_100426
	ld a, $f4
	ld [wcd2b], a
	jr .asm_100432

.asm_10042d
	ld a, $f3
	ld [wcd2b], a

.asm_100432
	push hl
	ld hl, wcd7c
	inc [hl]
	pop hl
	scf
	ret

Function10043a:
	push hl
	push bc
	ld de, 0
.asm_10043f
	ld a, [hli]
	add e
	ld e, a
	adc d
	sub e
	ld d, a
	dec bc
	ld a, b
	or c
	jr nz, .asm_10043f
	pop bc
	pop hl
	ret

Jumptable_10044e:
	dw Function10046a
	dw Function10047c
	dw asm_100497
	dw Function1004ba
	dw Function1004f4
	dw Function1004ce
	dw Function1004de
	dw Function1004a4
	dw Function100495
	dw Function1004ce
	dw Function1004de
	dw Function1004e9
	dw Function1004f4
	dw Function1004a4

Function10046a:
	ld hl, wBGMapPalBuffer
	inc [hl]
	call Function1003d8
	call Function1003ba
	ld hl, wcd27
	inc [hl]
	ret

Function10047c:
	call Function100337
	ret c
	ret z
	cp $02
	jr nz, .asm_10048d
	ld a, $08
	ld [wcd27], a
	ret

.asm_10048d
	ld a, $02
	ld [wcd27], a
	ret

Function100495:
; fallthrough
asm_100497:
	call Function100337
	ret c
	ret z
	ld hl, wcd27
	inc [hl]
	ret

Function1004a4:
	call Function100406
	jr c, .asm_1004b8
	call Function1003c9
	call Function1003f5
	ld a, [wcd27]
	set 7, a
	ld [wcd27], a
	ret

.asm_1004b8
	scf
	ret

Function1004ba:
	call Function10038a
	and a
	jr nz, .asm_1004c8
	ld hl, wcd27
	inc [hl]
	ret

.asm_1004c8
	ld a, $08
	ld [wcd27], a
	ret

Function1004ce:
	call Function100337
	ret c
	ret z
	cp $02
	ret nz
	ld hl, wcd27
	inc [hl]
	ret

Function1004de:
	call Function100393
	ld hl, wcd27
	inc [hl]
	ret

Function1004e9:
	call Function10038a
	ld hl, wcd27
	inc [hl]
	ret

Function1004f4:
	call Function100337
	ret c
	ret z
	ld hl, wcd27
	inc [hl]
	jmp Function10039c

AdvanceMobileInactivityTimerAndCheckExpired:
	push bc
	call IncrementMobileInactivityTimerByCFrames
	pop bc
	ld a, [wMobileInactivityTimerMinutes]
	cp b
	jr nc, .timed_out
	and a
	ret

.timed_out
	ld a, $fa
	ld [wcd2b], a
	scf
	ret

StartMobileInactivityTimer:
	xor a
	ld [wMobileInactivityTimerMinutes], a
	ld [wMobileInactivityTimerSeconds], a
	ld [wMobileInactivityTimerFrames], a
	ret

IncrementMobileInactivityTimerByCFrames:
	ld hl, wMobileInactivityTimerFrames ; timer?
	ld a, [hl]
	add c
	cp 60
	jr c, .seconds
	xor a

.seconds
	ld [hld], a
	ret c
	ld a, [hl]
	inc a
	cp 60
	jr c, .minutes
	xor a

.minutes
	ld [hld], a
	ret c
	inc [hl]
	ret

Function1006dc:
	ld a, [hld]
	ld c, a
	ldh a, [hSeconds]
	sub c
	jr nc, .asm_1006e5
	add $3c

.asm_1006e5
	ld [de], a
	dec de
	ld a, [hld]
	ld c, a
	ldh a, [hMinutes]
	sbc c
	jr nc, .asm_1006f0
	add $3c

.asm_1006f0
	ld [de], a
	dec de
	ld a, [hl]
	ld c, a
	ldh a, [hHours]
	sbc c
	jr nc, .asm_1006fb
	add MAX_HOUR

.asm_1006fb
	ld [de], a
	ret

Function10079c:
	ld a, [wcd21]
	cp $01
	jr nz, .dont_quit
	ld hl, wcd2a
	bit 5, [hl]
	jr nz, .dont_quit
	ld hl, wcd2a
	bit 6, [hl]
	jr nz, .dont_quit
	ld a, [wcd6a]
	add c
	cp 60
	jr nc, .overflow
	ld [wcd6a], a
	and a
	ret

.overflow
	sub 60
	ld [wcd6a], a
	ld d, b
	push de
	call Function1007f6
	pop de
	jr c, .quit
	ld a, c
	and a
	jr nz, .quit
	ld a, b
	cp 10
	jr nc, .quit
	ld a, d
	and a
	ret z
	ld a, [wcd6b]
	cp b
	ret z
	ld a, b
	ld [wcd6b], a
	call Function1008e0
	and a
	ret

.quit
	call Function1008e0
	ld hl, wcd2a
	set 4, [hl]
	ld a, $fc
	ld [wcd2b], a
	scf
	ret

.dont_quit
	and a
	ret

Function1007f6:
	call UpdateTime
	ld hl, wcd74
	ld de, wcd71
	call Function1006dc
	ld a, $04
	call OpenSRAM
	ld hl, $a802
	call Function100826
	call CloseSRAM
	ld hl, wcd6e
	call Function100826
	ldh a, [hHours]
	ld [wcd72], a
	ldh a, [hMinutes]
	ld [wcd73], a
	ldh a, [hSeconds]
	ld [wcd74], a
	ret

Function100826:
	ld a, [wcd71]
	add [hl]
	sub $3c
	jr nc, .asm_100830
	add $3c

.asm_100830
	ld [hld], a
	ccf
	ld a, [wcd70]
	adc [hl]
	sub $3c
	jr nc, .asm_10083c
	add $3c

.asm_10083c
	ld [hld], a
	ld b, a
	ccf
	ld a, [wcd6f]
	adc [hl]
	ld [hl], a
	ld c, a
	ret

Function1008e0:
	ldh a, [hBGMapMode]
	ld b, a
	ldh a, [hVBlank]
	ld c, a
	push bc
	xor a
	ldh [hBGMapMode], a
	ld a, $03
	ldh [hVBlank], a
	call Function100970
	call Function100902
	call Function100989
	call DelayFrame
	pop bc
	ld a, c
	ldh [hVBlank], a
	ld a, b
	ldh [hBGMapMode], a
	ret

Function100902:
	hlcoord 3, 10
	lb bc, $01, $0b
	call Textbox
	ld a, [wcd6d]
	cpl
	add $0a + 1
	ld [wStringBuffer2], a
	jr z, .asm_10093f
	ld de, .string_100966
	hlcoord 4, 11
	rst PlaceString
	hlcoord 8, 11
	lb bc, 1, 2
	ld de, wStringBuffer2
	call PrintNum
	ld de, SFX_TWO_PC_BEEPS
	call PlaySFX
	farcall ReloadMapPart
	ld c, $3c
	jmp DelayFrames

.asm_10093f
	ld de, .string_10095a
	hlcoord 4, 11
	rst PlaceString
	ld de, SFX_4_NOTE_DITTY
	call PlaySFX
	farcall ReloadMapPart
	ld c, 120
	jmp DelayFrames

.string_10095a
	db "たいせん　しゅうりょう@"
.string_100966
	db "のこり　　　ふん！@"

Function100970:
	hlcoord 0, 0
;	ld de, w3_dc00
	call Function1009a5
	hlcoord 0, 0, wAttrmap
;	ld de, w3_dd68
	call Function1009a5
	call Function1009d2
	jr Function1009ae

Function100989:
;	ld hl, w3_dc00
	decoord 0, 0
	call Function1009a5
	call Function1009ae
	farcall ReloadMapPart
;	ld hl, w3_dd68
	decoord 0, 0, wAttrmap
; fallthrough
Function1009a5:
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	ld a, $03
	jmp FarCopyWRAM

Function1009ae:
	ldh a, [rSVBK]
	push af
	ld a, BANK("Battle Tower RAM")
	ldh [rSVBK], a

;	ld hl, w3_d800
	decoord 0, 0, wAttrmap
	lb bc, SCREEN_HEIGHT, SCREEN_WIDTH
.loop_row
	push bc
.loop_col
	ld a, [hli]
	ld [de], a
	inc de
	dec c
	jr nz, .loop_col
	ld bc, BG_MAP_WIDTH - SCREEN_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, .loop_row

	pop af
	ldh [rSVBK], a
	ret

Function1009d2:
	ldh a, [rSVBK]
	push af
	ld a, BANK("Battle Tower RAM")
	ldh [rSVBK], a

	ldh a, [rVBK]
	push af
	ld a, $01
	ldh [rVBK], a

;	ld hl, w3_d800
	debgcoord 0, 0
	lb bc, $03, $24
	call Get2bpp

	pop af
	ldh [rVBK], a

	pop af
	ldh [rSVBK], a
	ret

Function1009f3:
	ldh a, [hJoyDown]
	or ~SELECT + A_BUTTON
	inc a
	jr nz, .select_a
	ld hl, wcd2a
	set 4, [hl]
	ld a, $f8
	ld [wcd2b], a
	scf
	ret

.select_a
	xor a
	ret

_LinkBattleSendReceiveAction:
	call .StageForSend
	ld [wLinkBattleSentAction], a
	vc_hook Wireless_start_exchange
	farcall PlaceWaitingText
	ld a, [wLinkMode]
	cp LINK_MOBILE
	jr nz, .LinkBattle_SendReceiveAction

	call .MobileBattle_SendReceiveAction
	call Function100da5
	farjp FinishBattleAnim

.StageForSend:
	ld a, [wBattlePlayerAction]
	and a ; BATTLEPLAYERACTION_USEMOVE?
	jr nz, .switch
	ld a, [wCurPlayerMove]
	call GetMoveIndexFromID
	ld b, BATTLEACTION_STRUGGLE
	ld a, h
	if HIGH(STRUGGLE)
		cp HIGH(STRUGGLE)
	else
		and a
	endc
	jr nz, .not_struggle
	ld a, l
	cp LOW(STRUGGLE)
	jr z, .struggle
.not_struggle
	ld b, BATTLEACTION_SKIPTURN
	cp $ff
	jr z, .struggle
	ld a, [wCurMoveNum]
	jr .use_move

.switch
	ld a, [wCurPartyMon]
	add BATTLEACTION_SWITCH1
	jr .use_move

.struggle
	ld a, b

.use_move
	and $0f
	ret

.LinkBattle_SendReceiveAction:
	ld a, [wLinkBattleSentAction]
	ld [wPlayerLinkAction], a
	ld a, $ff
	ld [wOtherPlayerLinkAction], a
.waiting
	call LinkTransfer
	call DelayFrame
	ld a, [wOtherPlayerLinkAction]
	inc a
	jr z, .waiting

	vc_hook Wireless_end_exchange
	vc_patch Wireless_net_delay_3
if DEF(_CRYSTAL_VC)
	ld b, 26
else
	ld b, 10
endc
	vc_patch_end
.receive
	call DelayFrame
	call LinkTransfer
	dec b
	jr nz, .receive

	vc_hook Wireless_start_send_zero_bytes
	vc_patch Wireless_net_delay_4
if DEF(_CRYSTAL_VC)
	ld b, 26
else
	ld b, 10
endc
	vc_patch_end
.acknowledge
	call DelayFrame
	call LinkDataReceived
	dec b
	jr nz, .acknowledge

	vc_hook Wireless_end_send_zero_bytes
	ld a, [wOtherPlayerLinkAction]
	ld [wBattleAction], a
	ret

.MobileBattle_SendReceiveAction:
	call Function100acf
	call StartMobileInactivityTimer
	xor a
	ld [wcd27], a
.asm_100a92
	call DelayFrame
	call GetJoypad
	call Function100382
	lb bc, $03, $01
	push bc
	call AdvanceMobileInactivityTimerAndCheckExpired
	pop bc
	jr c, .asm_100ac7
	ld b, $01
	call Function10079c
	jr c, .asm_100ac7
	call Function1009f3
	jr c, .asm_100ac7
	ld a, [wcd2b]
	and a
	jr nz, .asm_100ac7
	ld a, [wcd27]
	bit 7, a
	jr z, .asm_100a92
	jr Function100ae7

.asm_100ac7
	ld a, $0f
	ld [wd430], a
	ret

Function100acf:
	ld de, Unknown_100b0a
	ld hl, wccb5
	ld a, [wLinkBattleSentAction]
	ld [hli], a
	ld c, $01
.asm_100adb
	ld a, [de]
	inc de
	ld [hli], a
	inc c
	and a
	jr nz, .asm_100adb
	ld a, c
	ld [wccb4], a
	ret

Function100ae7:
	ld de, Unknown_100b0a
	ld hl, wcc62
.asm_100aed
	ld a, [de]
	inc de
	and a
	jr z, .asm_100af8
	cp [hl]
	jr nz, .asm_100aff
	inc hl
	jr .asm_100aed

.asm_100af8
	ld a, [wcc61]
	ld [wd430], a
	ret

.asm_100aff
	ld a, $0f
	ld [wd430], a
	ld a, $f1
	ld [wcd2b], a
	ret

pushc
setcharmap ascii

Unknown_100b0a:
	db "tetsuji", 0

popc

Mobile_LoadBattleMenu:
	call Function100dd8
	ret c
	ld hl, BattleMenuHeader
	ld a, BANK(BattleMenuHeader)
	ld de, LoadMenuHeader
	call FarCall_de
	ld a, BANK(BattleMenuHeader)
	ld [wMenuData_2DMenuItemStringsBank], a
	ld a, [wBattleMenuCursorPosition]
	ld [wMenuCursorPosition], a
	call Function100e72
	call Function100b45
	farcall InitPartyMenuBGPal7
	call Function100ed4
	ld a, [wMenuCursorPosition]
	ld [wBattleMenuCursorPosition], a
	jmp ExitMenu

Function100b45:
	call Function100b7a
.loop
	call Mobile_SetOverworldDelay
	farcall MobileMenuJoypad
	push bc
	farcall HDMATransferTilemapToWRAMBank3
	call Function100e2d
	pop bc
	jr c, .asm_100b6b
	ld a, [wMenuJoypadFilter]
	and c
	jr z, .loop
	farjp Mobile_GetMenuSelection

.asm_100b6b
	ld a, [w2DMenuNumCols]
	ld c, a
	ld a, [w2DMenuNumRows]
	call SimpleMultiply
	ld [wMenuCursorPosition], a
	and a
	ret

Function100b7a:
	ld hl, CopyMenuData
	ld a, [wMenuData_2DMenuItemStringsBank]
	call FarCall_hl
	farcall Draw2DMenu
	call MobileTextBorder
	call UpdateSprites
	call ApplyTilemap
	farcall Init2DMenuCursorPosition
	ld hl, w2DMenuFlags1
	set 7, [hl]
	ret

Mobile_MoveSelectionScreen:
	xor a
	ld [wSwappingMove], a
	farcall CheckPlayerHasUsableMoves
	ret z
	call Function100dd8
	jmp c, xor_a_dec_a
	call Function100e72
	call .GetMoveSelection
	push af
	farcall InitPartyMenuBGPal7
	call Function100ed4
	pop af
	ret

.GetMoveSelection:
	xor a
	ldh [hBGMapMode], a
	call .ListMoves
	call Function100c98
.master_loop
	farcall MoveInfoBox
.loop
	call Mobile_SetOverworldDelay
	farcall MobileMenuJoypad
	push bc
	farcall HDMATransferTilemapToWRAMBank3
	call Function100e2d
	pop bc
	jr c, .b_button
	ld a, [wMenuJoypadFilter]
	and c
	bit D_UP_F, a
	jr nz, .d_up
	bit D_DOWN_F, a
	jr nz, .d_down
	bit A_BUTTON_F, a
	jr nz, .a_button
	bit B_BUTTON_F, a
	jr nz, .b_button
	jr .loop

.d_up
	ld a, [wMenuCursorY]
	and a
	jr nz, .master_loop
	ld a, [wNumMoves]
	inc a
	ld [wMenuCursorY], a
	jr .master_loop

.d_down
	ld a, [wMenuCursorY]
	ld b, a
	ld a, [wNumMoves]
	inc a
	inc a
	cp b
	jr nz, .master_loop
	ld a, $01
	ld [wMenuCursorY], a
	jr .master_loop

.b_button
	ld a, [wMenuCursorY]
	dec a
	ld [wCurMoveNum], a
	ld a, $01
	and a
	ret

.a_button
	ld a, [wMenuCursorY]
	dec a
	ld [wCurMoveNum], a
	ld a, [wMenuCursorY]
	dec a
	ld c, a
	ld b, 0
	ld hl, wBattleMonPP
	add hl, bc
	ld a, [hl]
	and $3f
	jr z, .no_pp_left
	ld a, [wPlayerDisableCount]
	swap a
	and $0f
	dec a
	cp c
	jr z, .move_disabled
	ld a, [wMenuCursorY]
	dec a
	ld c, a
	ld b, 0
	ld hl, wBattleMonMoves
	add hl, bc
	ld a, [hl]
	ld [wCurPlayerMove], a
	xor a
	ret

.move_disabled
	ld hl, BattleText_TheMoveIsDisabled
	jr .print_text

.no_pp_left
	ld hl, BattleText_TheresNoPPLeftForThisMove

.print_text
	call StdBattleTextbox
	call SafeLoadTempTilemapToTilemap
	jmp .GetMoveSelection

.ListMoves:
	hlcoord 0, 8
	lb bc, 8, 8
	call Textbox
	ld hl, wBattleMonMoves
	ld de, wListMoves_MoveIndicesBuffer
	ld bc, NUM_MOVES
	rst CopyBytes
	ld a, SCREEN_WIDTH * 2
	ld [wListMovesLineSpacing], a
	hlcoord 2, 10
	predef_jump ListMoves

Function100c98:
	ld de, .data
	call Load2DMenuData
	ld a, [wNumMoves]
	inc a
	ld [w2DMenuNumRows], a
	ld a, [wCurMoveNum]
	inc a
	ld [wMenuCursorY], a
	ret

.data:
	db 10, 1 ; cursor start y, x
	db -1, 1 ; rows, columns
	db $a0, $00 ; flags
	dn 2, 0 ; cursor offsets
	db D_UP | D_DOWN | A_BUTTON | B_BUTTON ; accepted buttons

Mobile_PartyMenuSelect:
	call Function100dd8
	ret c
	ld hl, w2DMenuFlags1
	set 7, [hl]
	res 6, [hl]
.loop
	call Mobile_SetOverworldDelay
	farcall MobileMenuJoypad
	push bc
	farcall PlaySpriteAnimations
	farcall HDMATransferTilemapToWRAMBank3
	call MobileComms_CheckInactivityTimer
	pop bc
	jr c, .done
	ld a, [wMenuJoypadFilter]
	and c
	jr z, .loop
	call PlaceHollowCursor
	ld a, [wPartyCount]
	inc a
	ld b, a
	ld a, [wMenuCursorY]
	cp b
	jr z, .done
	ld [wPartyMenuCursor], a
	ldh a, [hJoyLast]
	ld b, a
	bit 1, b
	jr nz, .done
	ld a, [wMenuCursorY]
	dec a
	ld [wCurPartyMon], a
	ld c, a
	ld b, 0
	ld hl, wPartySpecies
	add hl, bc
	ld a, [hl]
	ld [wCurPartySpecies], a
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	call WaitSFX
	and a
	ret

.done
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	call WaitSFX
	scf
	ret

MobileBattleMonMenu:
	call Function100dd8
	ret c
	call Function100d67
	ld hl, w2DMenuFlags1
	set 7, [hl]
	res 6, [hl]
.asm_100d30
	call Mobile_SetOverworldDelay
	farcall MobileMenuJoypad
	push bc
	farcall PlaySpriteAnimations
	farcall HDMATransferTilemapToWRAMBank3
	call MobileComms_CheckInactivityTimer
	pop bc
	jr c, .asm_100d54
	ld a, [wMenuJoypadFilter]
	and c
	jr nz, .asm_100d56
	jr .asm_100d30

.asm_100d54
	scf
	ret

.asm_100d56
	push af
	ld de, SFX_READ_TEXT_2
	call PlaySFX
	pop af
	bit 1, a
	jr z, .asm_100d65
	ret z
	scf
	ret

.asm_100d65
	and a
	ret

Function100d67:
	ld hl, .MenuHeader
	call CopyMenuHeader
	xor a
	ldh [hBGMapMode], a
	call MenuBox
	call UpdateSprites
	call PlaceVerticalMenuItems
	call WaitBGMap
	call CopyMenuData
	call InitVerticalMenuCursor
	ld hl, w2DMenuFlags1
	set 6, [hl]
	ret

.MenuHeader:
	db 0 ; flags
	menu_coords 11, 11, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR | STATICMENU_NO_TOP_SPACING ; flags
	db 3
	db "いれかえる@"  ; TRADE
	db "つよさをみる@" ; STATS
	db "キャンセル@"  ; CANCEL

Function100da5:
	ld hl, wcd2a
	res 3, [hl]
	ld hl, wcd29
	res 0, [hl]
	ret

Function100db0:
	ld hl, wcd2a
	bit 3, [hl]
	jr nz, .asm_100dbe
	ld hl, wcd2a
	set 3, [hl]
	scf
	ret

.asm_100dbe
	xor a
	ret

Function100dc0:
	ld a, [wLinkMode]
	cp LINK_MOBILE
	jr nz, .mobile
	ld hl, wcd2a
	bit 3, [hl]
	jr z, .mobile
	scf
	ret

.mobile
	xor a
	ret

Mobile_SetOverworldDelay:
	ld a, 30
	ld [wOverworldDelay], a
	ret

Function100dd8:
	lb bc, $03, $01
	call AdvanceMobileInactivityTimerAndCheckExpired
	jr c, .asm_100dfb
	lb bc, $01, $3c
	call Function10079c
	jr c, .asm_100dfb
	call Function10032e
	ld a, [wcd2b]
	and a
	jr nz, .asm_100dfb
	xor a
	ret

.asm_100dfb
	scf
	ret

MobileComms_CheckInactivityTimer:
	ld a, [wOverworldDelay]
	cpl
	add 30 + 1
	ld c, a
	ld b, 3
	push bc
	call AdvanceMobileInactivityTimerAndCheckExpired
	pop bc
	jr c, .quit
	ld b, 1
	call Function10079c
	jr c, .quit
	call Function1009f3
	jr c, .quit
	call Function10032e
	ld a, [wcd2b]
	and a
	jr nz, .quit
	xor a
	ret

.quit
	scf
	ret

Function100e2d:
	ld a, [wOverworldDelay]
	cpl
	add 30 + 1
	ld c, a
	ld b, 3
	push bc
	call AdvanceMobileInactivityTimerAndCheckExpired
	pop bc
	jr c, .asm_100e61
	ld b, 1
	call Function10079c
	jr c, .asm_100e61
	call Function1009f3
	jr c, .asm_100e61
	call Function10032e
	ld a, [wcd2b]
	and a
	jr nz, .asm_100e61
	call Function100e63
	call Function100e84
	xor a
	ret

.asm_100e61
	scf
	ret

Function100e63:
	ld a, e
	cp $02
	ret nz
	call Function100db0
	ret nc
	ld de, SFX_ELEVATOR_END
	jmp PlaySFX

Function100e72:
	xor a
	ld hl, wcd29
	bit 0, [hl]
	jr z, .asm_100e7c
	ld a, $0a

.asm_100e7c
	ld [wcd67], a
	xor a
	ld [wcd68], a
	ret

Function100e84:
	ld a, [wcd67]
	ld hl, Jumptable_100e8c
	jmp JumpTable

Jumptable_100e8c:
	dw Function100ea2
	dw Function100eae
	dw Function100eb4
	dw Function100eae
	dw Function100eb4
	dw Function100eae
	dw Function100eb4
	dw Function100eae
	dw Function100eb4
	dw Function100eae
	dw DoNothing

Function100ea2:
	call Function100dc0
	ret nc
	ld hl, wcd29
	set 0, [hl]
	call Function100ec5

Function100eae:
	scf
	call Function100eca
	jr asm_100eb8

Function100eb4:
	and a
	call Function100eca

asm_100eb8:
	ld hl, wcd68
	inc [hl]
	ld a, [hl]
	cp $02
	ret c
	ld [hl], 0
; fallthrough
Function100ec5:
	ld hl, wcd67
	inc [hl]
	ret

Function100eca:
	farcall Mobile_InitPartyMenuBGPal7
; fallthrough
Function100ed4:
	farcall ApplyPals
	ld a, TRUE
	ldh [hCGBPalUpdate], a
	ret

MACRO macro_100fc0
	; first byte:
	;     Bit 7 set: Not SRAM
	;     Lower 7 bits: Bank if SRAM
	; address, size[, OT address]
	db ($80 * (\1 >= (STARTOF(SRAM) + SIZEOF(SRAM)))) | (BANK(\1) * (\1 < (STARTOF(SRAM) + SIZEOF(SRAM)))
	dw \1, \2
	if _NARG == 3
		dw \3
	else
		dw NULL
	endc
ENDM
