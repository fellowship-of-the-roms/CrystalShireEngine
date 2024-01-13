; Battle Anim Animation Functions

BattleAnim_StepToTarget::
	; Inches object towards the opponent's side, moving half as much in the Y axis as it did in the X axis. Uses lower nybble of A
	and $f
	ld e, a
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	add [hl]
	ld [hl], a
	srl e
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	.loop
	dec [hl]
	dec e
	jr nz, .loop
	ret

BattleAnim_StepCircle::
; Inches object in a circular movement where its height is 1/4 the width
	push af
	push de
	farcall Sine
	sra a
	sra a
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	pop de
	pop af
	farcall Cosine
	ld hl, BATTLEANIMSTRUCT_XOFFSET
	add hl, bc
	ld [hl], a
	ret

BattleAnim_ScatterHorizontal::
; Affects horizontal sine movement based on bit 7 of Obj Param
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld a, [hl]
	bit 7, a
	jr nz, .negative
	cp $20
	jr nc, .plus_256
	cp $18
	jr nc, .plus_384
	ld de, $200
	ret

.plus_384
	ld de, $180
	ret

.plus_256
	ld de, $100
	ret

.negative
	and %00111111
	cp $20
	jr nc, .minus_256
	cp $18
	jr nc, .minus_384
	ld de, -$200
	ret

.minus_384
	ld de, -$180
	ret

.minus_256
	ld de, -$100
	ret

BattleAnim_StepThrownToTarget::
; Inches object towards the opponent's side in a parabola arc defined by the lower and upper nybble of Obj Param
	dec [hl]
	ld d, $20
	farcall Sine
	ld hl, BATTLEANIMSTRUCT_YOFFSET
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_FIX_Y
	add hl, bc
	ld a, [hl]
	add $2
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_VAR1
	add hl, bc
	ld e, [hl]
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld d, [hl]
	ld hl, BATTLEANIMSTRUCT_PARAM
	add hl, bc
	ld h, [hl]
	ld a, h
	and $f
	swap a
	ld l, a
	ld a, h
	and $f0
	swap a
	ld h, a
	add hl, de
	ld e, l
	ld d, h
	ld hl, BATTLEANIMSTRUCT_VAR1
	add hl, bc
	ld [hl], e
	ld hl, BATTLEANIMSTRUCT_XCOORD
	add hl, bc
	ld [hl], d
	ld hl, BATTLEANIMSTRUCT_VAR2
	add hl, bc
	ld a, [hl]
	and $1
	ret nz
	ld hl, BATTLEANIMSTRUCT_YCOORD
	add hl, bc
	dec [hl]
	ret

; Battle Anim Jump Table Functions

BattleAnim_AnonJumptable::
	pop de
	ld hl, BATTLEANIMSTRUCT_JUMPTABLE_INDEX
	add hl, bc
	ld l, [hl]
	ld h, $0
	add hl, hl
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

BattleAnim_IncAnonJumptableIndex::
	ld hl, BATTLEANIMSTRUCT_JUMPTABLE_INDEX
	add hl, bc
	inc [hl]
	ret

; Battle Anim Initialization Functions

DeinitBattleAnimation::
	ld hl, BATTLEANIMSTRUCT_INDEX
	add hl, bc
	ld [hl], $0
	ret

ReinitBattleAnimFrameset::
	ld hl, BATTLEANIMSTRUCT_FRAMESET_ID
	add hl, bc
	ld [hl], a
	ld hl, BATTLEANIMSTRUCT_DURATION
	add hl, bc
	ld [hl], 0
	ld hl, BATTLEANIMSTRUCT_FRAME
	add hl, bc
	ld [hl], -1
	ret
