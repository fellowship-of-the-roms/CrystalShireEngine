ProfOaksPC:
	ld hl, OakPCText1
	call MenuTextbox
	call YesNoBox
	jr c, .shutdown
	call ProfOaksPCBoot ; player chose "yes"?
.shutdown
	ld hl, OakPCText4
	call PrintText
	call JoyWaitAorB
	call ExitMenu
	ret

ProfOaksPCBoot:
	ld hl, OakPCText2
	call PrintText
	call Rate
	call PlaySFX ; sfx loaded by previous Rate function call
	call JoyWaitAorB
	call WaitSFX
	ret

ProfOaksPCRating:
	call Rate
	push de
	ld de, MUSIC_NONE
	call PlayMusic
	pop de
	call PlaySFX
	call JoyWaitAorB
	call WaitSFX
	ret

Rate:
; calculate Seen/Owned
	ld hl, wPokedexCaught
	ld bc, wEndPokedexCaught - wPokedexCaught
	call CountSetBits16
	push bc
	ld hl, wPokedexSeen
	ld bc, wEndPokedexSeen - wPokedexSeen
	call CountSetBits16

; print appropriate rating
	ld hl, wStringBuffer3
	call .UpdateRatingBuffer
	pop bc
	push bc
	ld hl, wStringBuffer4
	call .UpdateRatingBuffer
	ld hl, OakPCText3
	call PrintText
	call JoyWaitAorB
	pop bc
	ld hl, OakRatings
	call FindOakRating
	push de
	call PrintText
	pop de
	ret

.UpdateRatingBuffer:
	ld a, b
	ld b, c
	ld c, a
	push bc
	push hl
	ld a, "@"
	ld bc, ITEM_NAME_LENGTH
	call ByteFill
	ld hl, sp + 2
	ld d, h
	ld e, l
	pop hl
	lb bc, PRINTNUM_LEFTALIGN | 2, 4
	call PrintNum
	pop bc
	ret

FindOakRating:
; return sound effect in de
; return text pointer in hl
	ld a, [hli]
	ld d, a
	ld a, [hli]
	cp b
	jr c, .next
	jr nz, .match
	ld a, d
	cp c
	jr nc, .match
.next
	rept 4
		inc hl
	endr
	jr FindOakRating

.match
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ret

INCLUDE "data/events/pokedex_ratings.asm"

OakPCText1:
	text_far _OakPCText1
	text_end

OakPCText2:
	text_far _OakPCText2
	text_end

OakPCText3:
	text_far _OakPCText3
	text_end

OakRating01:
	text_far _OakRating01
	text_end

OakRating02:
	text_far _OakRating02
	text_end

OakRating03:
	text_far _OakRating03
	text_end

OakRating04:
	text_far _OakRating04
	text_end

OakRating05:
	text_far _OakRating05
	text_end

OakRating06:
	text_far _OakRating06
	text_end

OakRating07:
	text_far _OakRating07
	text_end

OakRating08:
	text_far _OakRating08
	text_end

OakRating09:
	text_far _OakRating09
	text_end

OakRating10:
	text_far _OakRating10
	text_end

OakRating11:
	text_far _OakRating11
	text_end

OakRating12:
	text_far _OakRating12
	text_end

OakRating13:
	text_far _OakRating13
	text_end

OakRating14:
	text_far _OakRating14
	text_end

OakRating15:
	text_far _OakRating15
	text_end

OakRating16:
	text_far _OakRating16
	text_end

OakRating17:
	text_far _OakRating17
	text_end

OakRating18:
	text_far _OakRating18
	text_end

OakRating19:
	text_far _OakRating19
	text_end

OakPCText4:
	text_far _OakPCText4
	text_end
