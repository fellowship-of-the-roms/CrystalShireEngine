; HM moves can't be forgotten

IsHM::
	push hl
	call GetItemIndexFromID
	cphl16 HM01
	pop hl
	jr c, .NotHM
	scf
	ret
.NotHM:
	and a
	ret

IsHMMove::
	call GetMoveIndexFromID
	ld b, h
	ld c, l
	ld hl, .HMMoves
	ld de, 2
	jmp IsInWordArray

.HMMoves:
	dw CUT
	dw FLY
	dw SURF
	dw STRENGTH
	dw FLASH
	dw WATERFALL
	dw WHIRLPOOL
	dw -1 ; end
