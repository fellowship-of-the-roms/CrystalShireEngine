DisplayCaughtContestMonStats:
	call ClearBGPalettes
	call ClearTilemap
	call ClearSprites
	call LoadFontsBattleExtra

	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]

	hlcoord 0, 0
	lb bc, 4, 13
	call Textbox

	hlcoord 0, 6
	lb bc, 4, 13
	call Textbox

	hlcoord 2, 0
	ld de, .Stock
	rst PlaceString

	hlcoord 2, 6
	ld de, .This
	rst PlaceString

	hlcoord 5, 4
	ld de, .Health
	rst PlaceString

	hlcoord 5, 10
	ld de, .Health
	rst PlaceString

	ld a, [wContestMon]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld de, wStringBuffer1
	hlcoord 1, 2
	rst PlaceString

	ld h, b
	ld l, c
	ld a, [wContestMonLevel]
	ld [wTempMonLevel], a
	call PrintLevel

	ld de, wEnemyMonNickname
	hlcoord 1, 8
	rst PlaceString

	ld h, b
	ld l, c
	ld a, [wEnemyMonLevel]
	ld [wTempMonLevel], a
	call PrintLevel

	hlcoord 11, 4
	ld de, wContestMonMaxHP
	lb bc, 2, 3
	call PrintNum

	hlcoord 11, 10
	ld de, wEnemyMonMaxHP
	call PrintNum

	ld hl, ContestAskSwitchText
	call PrintText

	pop af
	ld [wOptions], a

	call WaitBGMap
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	jmp SetPalettes

.Health:
	db "HEALTH@"
.Stock:
	db " STOCK <PKMN> @"
.This:
	db " THIS <PKMN>  @"

ContestAskSwitchText:
	text_far _ContestAskSwitchText
	text_end

DisplayAlreadyCaughtText:
	call GetPokemonName
	ld hl, .ContestAlreadyCaughtText
	jmp PrintText

.ContestAlreadyCaughtText:
	text_far _ContestAlreadyCaughtText
	text_end
