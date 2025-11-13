EvolvePokemon:
	ld hl, wEvolvableFlags
	xor a
	ld [hl], a
	ld a, [wCurPartyMon]
	ld c, a
	ld b, SET_FLAG
	call EvoFlagAction
EvolveAfterBattle:
	xor a
	ld [wMonTriedToEvolve], a
	dec a
	ld [wCurPartyMon], a
	push hl
	push bc
	push de
	ld hl, wPartyCount

	push hl

EvolveAfterBattle_MasterLoop:
	ld hl, wCurPartyMon
	inc [hl]

	pop hl

	inc hl
	ld a, [hl]
	cp $ff
	jmp z, .ReturnToMap

	ld [wEvolutionOldSpecies], a

	push hl
	ld a, [wCurPartyMon]
	ld c, a
	ld hl, wEvolvableFlags
	ld b, CHECK_FLAG
	call EvoFlagAction
	ld a, c
	and a
	jr z, EvolveAfterBattle_MasterLoop

	ld a, [wEvolutionOldSpecies]
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld hl, EvosAttacksPointers
	ld a, BANK(EvosAttacksPointers)
	call LoadDoubleIndirectPointer
	ldh [hTemp], a

	push hl
	xor a
	ld [wMonType], a
	predef CopyMonToTempMon
	pop hl

.loop
	call GetNextEvoAttackByte
	and a
	jr z, EvolveAfterBattle_MasterLoop

	ld b, a

	cp EVOLVE_TRADE
	jr z, .trade

	ld a, [wLinkMode]
	and a
	jmp nz, .dont_evolve_check

	ld a, b
	cp EVOLVE_ITEM
	jr z, .item

	ld a, [wForceEvolution]
	and a
	jmp nz, .dont_evolve_check

	ld a, b
	cp EVOLVE_LEVEL
	jmp z, .level

	cp EVOLVE_PV
	jr z, .pv

	cp EVOLVE_STAT
	jmp z, .stat

	cp EVOLVE_HAPPINESS
	jr z, .happiness

; EVOLVE_HAPPINESS_TIME
	call GetEvoTime
	jmp c, .skip_evolution_species ; MORN_F or DAY_F < NITE_F

.happiness
	ld a, [wTempMonHappiness]
	cp HAPPINESS_TO_EVOLVE
	jmp c, .skip_evolution_species

	call IsMonHoldingEverstone
	jmp nc, .skip_evolution_species ; NITE_F or EVE_F >= NITE_F
	jmp .proceed

.trade
	ld a, [wLinkMode]
	cp LINK_TIMECAPSULE
	jmp z, .skip_evolution_species_parameter_word

	and a
	jmp z, .skip_evolution_species_parameter_word

	call IsMonHoldingEverstone
	jmp z, .skip_evolution_species_parameter_word

	call GetEvoItem
	inc a
	jr z, .proceed

	ld a, [wTempMonItem]
	cp b
	jmp nz, .skip_evolution_species

	xor a
	ld [wTempMonItem], a
	jr .proceed

.item
	call GetEvoItem
	ld a, [wCurItem]
	cp b
	jmp nz, .skip_evolution_species

	ld a, [wForceEvolution]
	and a
	jmp z, .skip_evolution_species
	ld a, [wLinkMode]
	and a
	jmp nz, .skip_evolution_species
	jr .proceed

.pv
	call GetEvoLevel
	jmp c, .skip_evolution_species_parameter_word

	call IsMonHoldingEverstone
	jmp z, .skip_evolution_species_parameter_word

	push hl

	ld hl, wTempMonPersonality
	ld a, [hli]
	ldh [hDividend], a
	ld a, [hl]
	ldh [hDividend + 1], a
	ld a, 10
	ldh [hDivisor], a
	ld b, 2
	call Divide
	ldh a, [hRemainder]

	pop hl

	cp 4

	call nc, GetNextEvoAttackWord ; high_pv
	jr .proceed

.stat
	push hl
	ld de, wTempMonAttack
	ld hl, wTempMonDefense
	ld c, 2
	call CompareBytes
	ld c, ATK_EQ_DEF
	jr z, .got_tyrogue_evo
	ld c, ATK_LT_DEF
	jr c, .got_tyrogue_evo
	ld c, ATK_GT_DEF
.got_tyrogue_evo
	pop hl

	call GetNextEvoAttackByte
	cp c
	jmp nz, .skip_evolution_species_parameter_byte
	; fallthrough

.level
	call GetEvoLevel
	jmp c, .skip_evolution_species
	call IsMonHoldingEverstone
	jmp z, .skip_evolution_species

.proceed
	ld a, [wTempMonLevel]
	ld [wCurPartyLevel], a
	ld a, $1
	ld [wMonTriedToEvolve], a

	ldh a, [hTemp]
	call GetFarWord
	call GetPokemonIDFromIndex
	ld [wEvolutionNewSpecies], a
	call GetCurNickname
	call CopyName1
	ld hl, EvolvingText
	call PrintText

	ld c, 50
	call DelayFrames

	xor a
	ldh [hBGMapMode], a
	hlcoord 0, 0
	lb bc, 12, 20
	call ClearBox

	ld a, $1
	ldh [hBGMapMode], a
	call ClearSprites

	farcall EvolutionAnimation

	push af
	call ClearSprites
	pop af
	jmp c, CancelEvolution

	ld hl, CongratulationsYourPokemonText
	call PrintText

	ld a, [wEvolutionNewSpecies]
	ld [wCurSpecies], a
	ld [wTempMonSpecies], a
	ld [wNamedObjectIndex], a
	call GetPokemonName

	push hl
	ld hl, EvolvedIntoText
	call PrintTextboxText
	farcall StubbedTrainerRankings_MonsEvolved

	ld de, MUSIC_NONE
	call PlayMusic
	ld de, SFX_CAUGHT_MON
	call PlaySFX
	call WaitSFX

	ld c, 40
	call DelayFrames

	call ClearTilemap
	call UpdateSpeciesNameIfNotNicknamed
	call GetBaseData

	ld hl, wTempMonExp + 2
	ld de, wTempMonMaxHP
	ld b, TRUE
	predef CalcMonStats

	ld a, [wCurPartyMon]
	ld hl, wPartyMons
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes
	ld e, l
	ld d, h
	ld bc, MON_MAXHP
	add hl, bc
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wTempMonMaxHP + 1
	ld a, [hld]
	sub c
	ld c, a
	ld a, [hl]
	sbc b
	ld b, a
	ld hl, wTempMonHP + 1
	ld a, [hl]
	add c
	ld [hld], a
	ld a, [hl]
	adc b
	ld [hl], a

	ld hl, wTempMonSpecies
	ld bc, PARTYMON_STRUCT_LENGTH
	rst CopyBytes

	ld a, [wCurSpecies]
	ld [wTempSpecies], a
	xor a
	ld [wMonType], a
	call LearnLevelMoves
	ld a, [wTempSpecies]
	call SetSeenAndCaughtMon

	; Check if party is full
	ld a, [wPartyCount]
	cp PARTY_LENGTH
	jr z, .skip_shedinja

	ld a, [wTempSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(NINJASK)
	if HIGH(NINJASK) == 0
		or h
	else
		jr nz, .skip_shedinja
		if HIGH(NINJASK) == 1
			dec h
		else
			ld a, h
			cp HIGH(NINJASK)
		endc
	endc
	call z, GiveShedinja

.skip_shedinja
	ld a, [wTempSpecies]
	call GetPokemonIndexFromID
	ld a, l
	sub LOW(UNOWN)
	if HIGH(UNOWN) == 0
		or h
	else
		jr nz, .skip_unown
		if HIGH(UNOWN) == 1
			dec h
		else
			ld a, h
			cp HIGH(UNOWN)
		endc
	endc
	jr nz, .skip_unown
	ld hl, wTempMonForm
	predef GetUnownLetter
	call UpdateUnownDex

.skip_unown
	pop de
	pop hl
	ld a, [wTempMonSpecies]
	ld [hl], a
	push hl
	ld l, e
	ld h, d
	jmp EvolveAfterBattle_MasterLoop

.dont_evolve_check
	ld a, b
	cp EVOLVE_HAPPINESS
	jr z, .skip_evolution_species
	cp EVOLVE_PV
	jr z, .skip_evolution_two_species_parameter_byte
	cp EVOLVE_LEVEL
	jr z, .skip_evolution_species_parameter_byte
	cp EVOLVE_HAPPINESS_TIME
	jr z, .skip_evolution_species_parameter_byte
	jr .skip_evolution_species_parameter_word

.skip_evolution_two_species_parameter_byte
	inc hl
.skip_evolution_species_parameter_word
	inc hl
.skip_evolution_species_parameter_byte
	inc hl
.skip_evolution_species
	inc hl
	inc hl
	jmp .loop

.ReturnToMap:
	pop de
	pop bc
	pop hl
	ld a, [wLinkMode]
	and a
	ret nz
	ld a, [wBattleMode]
	and a
	ret nz
	ld a, [wMonTriedToEvolve]
	and a
	jmp nz, RestartMapMusic
	ret

UpdateSpeciesNameIfNotNicknamed:
	ld a, [wCurSpecies]
	push af
	ld a, [wBaseSpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	pop af
	ld [wCurSpecies], a
	ld hl, wStringBuffer1
	ld de, wStringBuffer2
.loop
	ld a, [de]
	inc de
	cp [hl]
	inc hl
	ret nz
	cp '@'
	jr nz, .loop

	ld a, [wCurPartyMon]
	ld bc, MON_NAME_LENGTH
	ld hl, wPartyMonNicknames
	rst AddNTimes
	push hl
	ld a, [wCurSpecies]
	ld [wNamedObjectIndex], a
	call GetPokemonName
	ld hl, wStringBuffer1
	pop de
	ld bc, MON_NAME_LENGTH
	jmp CopyBytes

CancelEvolution:
	ld hl, StoppedEvolvingText
	call PrintText
	call ClearTilemap
	jmp EvolveAfterBattle_MasterLoop

IsMonHoldingEverstone:
	push hl
	ld a, [wTempMonItem]
	call GetItemIndexFromID
	cphl16 EVERSTONE
	pop hl
	ret

CongratulationsYourPokemonText:
	text_far _CongratulationsYourPokemonText
	text_end

EvolvedIntoText:
	text_far _EvolvedIntoText
	text_end

StoppedEvolvingText:
	text_far _StoppedEvolvingText
	text_end

EvolvingText:
	text_far _EvolvingText
	text_end

LearnLevelMoves:
	ld a, [wTempSpecies]
	ld [wCurPartySpecies], a
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld hl, EvosAttacksPointers
	ld a, BANK(EvosAttacksPointers)
	call LoadDoubleIndirectPointer
	ldh [hTemp], a
	call SkipEvolutions

.find_move
	call GetNextEvoAttackByte
	and a
	jr z, .done

	ld b, a
	ld a, [wCurPartyLevel]
	cp b
	call GetNextEvoAttackWord
	jr nz, .find_move

	push hl
	ld h, d
	ld l, e
	call GetMoveIDFromIndex
	ld d, a
	ld hl, wPartyMon1Moves
	ld a, [wCurPartyMon]
	ld bc, PARTYMON_STRUCT_LENGTH
	rst AddNTimes

	ld b, NUM_MOVES
.check_move
	call GetNextEvoAttackByte
	cp d
	jr z, .has_move
	dec b
	jr nz, .check_move
	jr .learn
.has_move

	pop hl
	jr .find_move

.learn
	ld a, d
	ld [wPutativeTMHMMove], a
	ld [wNamedObjectIndex], a
	call GetMoveName
	call CopyName1
	predef LearnMove
	pop hl
	jr .find_move

.done
	ld a, [wCurPartySpecies]
	ld [wTempSpecies], a
	ret

FillMoves:
; Fill in moves at de for wCurPartySpecies at wCurPartyLevel

	push hl
	push de
	push bc
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld b, h
	ld c, l
	ld hl, EvosAttacksPointers
	ld a, BANK(EvosAttacksPointers)
	call LoadDoubleIndirectPointer
	ldh [hTemp], a
	call SkipEvolutions
	jr .GetLevel

.NextMove:
	pop de
.GetMove:
	inc hl
	inc hl
.GetLevel:
	call GetNextEvoAttackByte
	and a
	jr z, .done
	ld b, a
	ld a, [wCurPartyLevel]
	cp b
	jr c, .done
	ld a, [wSkipMovesBeforeLevelUp]
	and a
	jr z, .CheckMove
	ld a, [wPrevPartyLevel]
	cp b
	jr nc, .GetMove

.CheckMove:
	push de
	ld c, NUM_MOVES
	ldh a, [hTemp]
	push hl
	call GetFarWord
	call GetMoveIDFromIndex
	pop hl
	ld b, a
.CheckRepeat:
	ld a, [de]
	inc de
	cp b
	jr z, .NextMove
	dec c
	jr nz, .CheckRepeat
	pop de
	push de
	ld c, NUM_MOVES
.CheckSlot:
	ld a, [de]
	and a
	jr z, .LearnMove
	inc de
	dec c
	jr nz, .CheckSlot
	pop de
	push de
	push hl
	ld h, d
	ld l, e
	call ShiftMoves
	ld a, [wEvolutionOldSpecies]
	and a
	jr z, .ShiftedMove
	push de
	ld bc, wPartyMon1PP - (wPartyMon1Moves + NUM_MOVES - 1)
	add hl, bc
	ld d, h
	ld e, l
	call ShiftMoves
	pop de

.ShiftedMove:
	pop hl

.LearnMove:
	ldh a, [hTemp]
	push hl
	call GetFarWord
	call GetMoveIDFromIndex
	pop hl
	ld b, a
	ld [de], a
	ld a, [wEvolutionOldSpecies]
	and a
	jr z, .NextMove
	push hl
	ld a, b
	ld hl, MON_PP - MON_MOVES
	add hl, de
	push hl
	ld l, a
	ld a, MOVE_PP
	call GetMoveAttribute
	pop hl
	ld [hl], a
	pop hl
	jr .NextMove

.done
	jmp PopBCDEHL

ShiftMoves:
	ld c, NUM_MOVES - 1
.loop
	inc de
	ld a, [de]
	ld [hli], a
	dec c
	jr nz, .loop
	ret

EvoFlagAction:
	push de
	ld d, $0
	predef SmallFarFlagAction
	pop de
	ret

GetLowestEvolutionStage:
; Return the first mon to evolve into wCurPartySpecies.
; Instead of looking it up, we just load it from a table. This is a lot more efficient.
	ld a, [wCurPartySpecies]
	call GetPokemonIndexFromID
	ld bc, FirstEvoStages - 2
	add hl, hl
	add hl, bc
	ld a, BANK(FirstEvoStages)
	call GetFarWord
	call GetPokemonIDFromIndex
	ld [wCurPartySpecies], a
	ret

SkipEvolutions::
; Receives a pointer to the evos and attacks for a mon in b:hl, and skips to the attacks.
	ld a, b
	call GetFarByte
	inc hl
	and a
	ret z
	cp EVOLVE_HAPPINESS
	jr z, .no_skip
	cp EVOLVE_PV
	jr z, .two_extra_skips
	cp EVOLVE_LEVEL
	jr z, .no_extra_skip
	cp EVOLVE_HAPPINESS_TIME
	jr z, .no_extra_skip
	jr .one_extra_skip

.two_extra_skips
	inc hl
.one_extra_skip
	inc hl
.no_extra_skip
	inc hl
.no_skip
	inc hl
	inc hl
	jr SkipEvolutions

DetermineEvolutionItemResults::
; in: b:de: pointer to evos and attacks struct, wCurItem: item
; out: de: species ID or zero; a, b, hl: clobbered
	ld h, d
	ld l, e
	ld de, 0
	ld a, b
	ldh [hTemp], a
.loop
	call GetNextEvoAttackByte
	and a
	ret z
	cp EVOLVE_HAPPINESS
	jr z, .skip_species
	cp EVOLVE_PV
	jr z, .skip_two_species_parameter_byte
	cp EVOLVE_LEVEL
	jr z, .skip_species_parameter_byte
	cp EVOLVE_HAPPINESS
	jr z, .skip_species_parameter_byte
	cp EVOLVE_ITEM
	jr nz, .skip_species_parameter_word
	call GetEvoItem
	ld a, [wCurItem]
	cp b
	jr nz, .skip_species
	jr GetNextEvoAttackWord

.skip_two_species_parameter_byte
	inc hl
.skip_species_parameter_word
	inc hl
.skip_species_parameter_byte
	inc hl
.skip_species
	inc hl
	inc hl
	jr .loop

GetNextEvoAttackByte:
	ldh a, [hTemp]
	call GetFarByte
	inc hl
	ret
	
GetNextEvoAttackWord:
	call GetNextEvoAttackByte
	ld e, a
	call GetNextEvoAttackByte
	ld d, a
	ret

GiveShedinja:
; Generate Evolved Mon's OT Name
	push hl
	ld a, [wCurPartyMon]
	ld bc, NAME_LENGTH
	ld hl, wPartyMonOTs
	rst AddNTimes
	ld e, l
	ld d, h
	pop hl
	push de
; Add Shedinja to Party
	xor a ; PARTYMON
	ld [wMonType], a
	ld hl, SHEDINJA
	call GetPokemonIDFromIndex
	ld [wCurPartySpecies], a
	predef TryAddMonToParty
; Get Evolved Mon's OT Name and set
; the OT Name of the new Shedinja
	pop de
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMonOTs
	call SkipNames
	call CopyName2
; Starting at Move 1 in the Pokemon Data Structure,
; transfer the Evolved Mon's bytes up to Level to
; the new Shedinja
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMon1Moves
	rst AddNTimes
	push hl
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wCurPartyMon]
	ld hl, wPartyMon1Moves
	rst AddNTimes
	ld e, l
	ld d, h
	pop hl
.loop
	ld a, [de]
	ld [hli], a
	inc de
	inc b
	ld a, b
	cp MON_LEVEL
	jr nz, .loop
; Set the approprite Caught Data for Shedinja
	farjp SetGiftPartyMonCaughtData

GetEvoItem:
; Return evolution item in register b
	call GetNextEvoAttackWord
	push hl
	ld h, d
	ld l, e
	call GetItemIDFromIndex
	ld b, a
	pop hl
	ret

GetEvoLevel:
	call GetNextEvoAttackByte
	ld b, a
	ld a, [wTempMonLevel]
	cp b
	ret

GetEvoTime:
	call GetNextEvoAttackByte
	ld b, a
	ld a, [wTimeOfDay]
	cp NITE_F

	; a = carry ? TR_MORNDAY : TR_EVENITE
	assert TR_MORNDAY + 1 == TR_EVENITE
	sbc a
	add TR_EVENITE

	cp b
	ret