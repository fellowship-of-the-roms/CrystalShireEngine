DelayFrame::
; Wait for one frame
	ld a, 1
	ld [wVBlankOccurred], a

; Wait for the next VBlank, halting to conserve battery
.halt
	halt
	nop ; no-optimize nops
	ld a, [wVBlankOccurred]
	and a
	jr nz, .halt
	ret

ApplyTilemapInVBlank::
; Tell VBlank to update BG Map
	ld a, 1
_ApplyAttrOrTilemapInVBlank:
	ldh [hBGMapMode], a
Delay2::
	ld c, 2
	jr DelayFrames

Delay3::
	ld c, 3
DelayFrames::
; Wait c frames
	call DelayFrame
	dec c
	jr nz, DelayFrames
	ret
