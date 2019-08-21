; Trainer data structure:
; - db "NAME@", TRAINERTYPE_* constant
; - 1 to 6 Pokémon:
;    * for TRAINERTYPE_NORMAL:     db level, species
;    * for TRAINERTYPE_MOVES:      db level, species, 4 moves
;    * for TRAINERTYPE_ITEM:       db level, species, item
;    * for TRAINERTYPE_ITEM_MOVES: db level, species, item, 4 moves
; - db -1 ; end

SECTION "Enemy Trainer Parties 1", ROMX

FalknerGroup:
	next_list_item ; FALKNER (1)
	db "FALKNER@", TRAINERTYPE_MOVES
	db 7
	dw PIDGEY
	db TACKLE, MUD_SLAP, NO_MOVE, NO_MOVE
	db 9
	dw PIDGEOTTO
	db TACKLE, MUD_SLAP, GUST, NO_MOVE
	db -1 ; end

	end_list_items

WhitneyGroup:
	next_list_item ; WHITNEY (1)
	db "WHITNEY@", TRAINERTYPE_MOVES
	db 18
	dw CLEFAIRY
	db DOUBLESLAP, MIMIC, ENCORE, METRONOME
	db 20
	dw MILTANK
	db ROLLOUT, ATTRACT, STOMP, MILK_DRINK
	db -1 ; end

	end_list_items

BugsyGroup:
	next_list_item ; BUGSY (1)
	db "BUGSY@", TRAINERTYPE_MOVES
	db 14
	dw METAPOD
	db TACKLE, STRING_SHOT, HARDEN, NO_MOVE
	db 14
	dw KAKUNA
	db POISON_STING, STRING_SHOT, HARDEN, NO_MOVE
	db 16
	dw SCYTHER
	db QUICK_ATTACK, LEER, FURY_CUTTER, NO_MOVE
	db -1 ; end

	end_list_items

MortyGroup:
	next_list_item ; MORTY (1)
	db "MORTY@", TRAINERTYPE_MOVES
	db 21
	dw GASTLY
	db LICK, SPITE, MEAN_LOOK, CURSE
	db 21
	dw HAUNTER
	db HYPNOSIS, MIMIC, CURSE, NIGHT_SHADE
	db 25
	dw GENGAR
	db HYPNOSIS, SHADOW_BALL, MEAN_LOOK, DREAM_EATER
	db 23
	dw HAUNTER
	db SPITE, MEAN_LOOK, MIMIC, NIGHT_SHADE
	db -1 ; end

	end_list_items

PryceGroup:
	next_list_item ; PRYCE (1)
	db "PRYCE@", TRAINERTYPE_MOVES
	db 27
	dw SEEL
	db HEADBUTT, ICY_WIND, AURORA_BEAM, REST
	db 29
	dw DEWGONG
	db HEADBUTT, ICY_WIND, AURORA_BEAM, REST
	db 31
	dw PILOSWINE
	db ICY_WIND, FURY_ATTACK, MIST, BLIZZARD
	db -1 ; end

	end_list_items

JasmineGroup:
	next_list_item ; JASMINE (1)
	db "JASMINE@", TRAINERTYPE_MOVES
	db 30
	dw MAGNEMITE
	db THUNDERBOLT, SUPERSONIC, SONICBOOM, THUNDER_WAVE
	db 30
	dw MAGNEMITE
	db THUNDERBOLT, SUPERSONIC, SONICBOOM, THUNDER_WAVE
	db 35
	dw STEELIX
	db SCREECH, SUNNY_DAY, ROCK_THROW, IRON_TAIL
	db -1 ; end

	end_list_items

ChuckGroup:
	next_list_item ; CHUCK (1)
	db "CHUCK@", TRAINERTYPE_MOVES
	db 27
	dw PRIMEAPE
	db LEER, RAGE, KARATE_CHOP, FURY_SWIPES
	db 30
	dw POLIWRATH
	db HYPNOSIS, MIND_READER, SURF, DYNAMICPUNCH
	db -1 ; end

	end_list_items

ClairGroup:
	next_list_item ; CLAIR (1)
	db "CLAIR@", TRAINERTYPE_MOVES
	db 37
	dw DRAGONAIR
	db THUNDER_WAVE, SURF, SLAM, DRAGONBREATH
	db 37
	dw DRAGONAIR
	db THUNDER_WAVE, THUNDERBOLT, SLAM, DRAGONBREATH
	db 37
	dw DRAGONAIR
	db THUNDER_WAVE, ICE_BEAM, SLAM, DRAGONBREATH
	db 40
	dw KINGDRA
	db SMOKESCREEN, SURF, HYPER_BEAM, DRAGONBREATH
	db -1 ; end

	end_list_items

Rival1Group:
	next_list_item ; RIVAL1 (1)
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CHIKORITA
	db -1 ; end

	next_list_item ; RIVAL1 (2)
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw CYNDAQUIL
	db -1 ; end

	next_list_item ; RIVAL1 (3)
	db "?@", TRAINERTYPE_NORMAL
	db 5
	dw TOTODILE
	db -1 ; end

	next_list_item ; RIVAL1 (4)
	db "?@", TRAINERTYPE_NORMAL
	db 12
	dw GASTLY
	db 14
	dw ZUBAT
	db 16
	dw BAYLEEF
	db -1 ; end

	next_list_item ; RIVAL1 (5)
	db "?@", TRAINERTYPE_NORMAL
	db 12
	dw GASTLY
	db 14
	dw ZUBAT
	db 16
	dw QUILAVA
	db -1 ; end

	next_list_item ; RIVAL1 (6)
	db "?@", TRAINERTYPE_NORMAL
	db 12
	dw GASTLY
	db 14
	dw ZUBAT
	db 16
	dw CROCONAW
	db -1 ; end

	next_list_item ; RIVAL1 (7)
	db "?@", TRAINERTYPE_MOVES
	db 20
	dw HAUNTER
	db LICK, SPITE, MEAN_LOOK, CURSE
	db 18
	dw MAGNEMITE
	db TACKLE, THUNDERSHOCK, SUPERSONIC, SONICBOOM
	db 20
	dw ZUBAT
	db LEECH_LIFE, SUPERSONIC, BITE, CONFUSE_RAY
	db 22
	dw BAYLEEF
	db GROWL, REFLECT, RAZOR_LEAF, POISONPOWDER
	db -1 ; end

	next_list_item ; RIVAL1 (8)
	db "?@", TRAINERTYPE_MOVES
	db 20
	dw HAUNTER
	db LICK, SPITE, MEAN_LOOK, CURSE
	db 18
	dw MAGNEMITE
	db TACKLE, THUNDERSHOCK, SUPERSONIC, SONICBOOM
	db 20
	dw ZUBAT
	db LEECH_LIFE, SUPERSONIC, BITE, CONFUSE_RAY
	db 22
	dw QUILAVA
	db LEER, SMOKESCREEN, EMBER, QUICK_ATTACK
	db -1 ; end

	next_list_item ; RIVAL1 (9)
	db "?@", TRAINERTYPE_MOVES
	db 20
	dw HAUNTER
	db LICK, SPITE, MEAN_LOOK, CURSE
	db 18
	dw MAGNEMITE
	db TACKLE, THUNDERSHOCK, SUPERSONIC, SONICBOOM
	db 20
	dw ZUBAT
	db LEECH_LIFE, SUPERSONIC, BITE, CONFUSE_RAY
	db 22
	dw CROCONAW
	db LEER, RAGE, WATER_GUN, BITE
	db -1 ; end

	next_list_item ; RIVAL1 (10)
	db "?@", TRAINERTYPE_MOVES
	db 30
	dw GOLBAT
	db LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 28
	dw MAGNEMITE
	db TACKLE, THUNDERSHOCK, SONICBOOM, THUNDER_WAVE
	db 30
	dw HAUNTER
	db LICK, MEAN_LOOK, CURSE, SHADOW_BALL
	db 32
	dw SNEASEL
	db LEER, QUICK_ATTACK, SCREECH, FAINT_ATTACK
	db 32
	dw MEGANIUM
	db REFLECT, RAZOR_LEAF, POISONPOWDER, BODY_SLAM
	db -1 ; end

	next_list_item ; RIVAL1 (11)
	db "?@", TRAINERTYPE_MOVES
	db 30
	dw GOLBAT
	db LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 28
	dw MAGNEMITE
	db TACKLE, THUNDERSHOCK, SONICBOOM, THUNDER_WAVE
	db 30
	dw HAUNTER
	db LICK, MEAN_LOOK, CURSE, SHADOW_BALL
	db 32
	dw SNEASEL
	db LEER, QUICK_ATTACK, SCREECH, FAINT_ATTACK
	db 32
	dw QUILAVA
	db SMOKESCREEN, EMBER, QUICK_ATTACK, FLAME_WHEEL
	db -1 ; end

	next_list_item ; RIVAL1 (12)
	db "?@", TRAINERTYPE_MOVES
	db 30
	dw GOLBAT
	db LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 28
	dw MAGNEMITE
	db TACKLE, THUNDERSHOCK, SONICBOOM, THUNDER_WAVE
	db 30
	dw HAUNTER
	db LICK, MEAN_LOOK, CURSE, SHADOW_BALL
	db 32
	dw SNEASEL
	db LEER, QUICK_ATTACK, SCREECH, FAINT_ATTACK
	db 32
	dw FERALIGATR
	db RAGE, WATER_GUN, BITE, SCARY_FACE
	db -1 ; end

	next_list_item ; RIVAL1 (13)
	db "?@", TRAINERTYPE_MOVES
	db 34
	dw SNEASEL
	db QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 36
	dw GOLBAT
	db LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 35
	dw MAGNETON
	db THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 35
	dw HAUNTER
	db MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 35
	dw KADABRA
	db DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	db 38
	dw MEGANIUM
	db REFLECT, RAZOR_LEAF, POISONPOWDER, BODY_SLAM
	db -1 ; end

	next_list_item ; RIVAL1 (14)
	db "?@", TRAINERTYPE_MOVES
	db 34
	dw SNEASEL
	db QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 36
	dw GOLBAT
	db LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 35
	dw MAGNETON
	db THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 35
	dw HAUNTER
	db MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 35
	dw KADABRA
	db DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	db 38
	dw TYPHLOSION
	db SMOKESCREEN, EMBER, QUICK_ATTACK, FLAME_WHEEL
	db -1 ; end

	next_list_item ; RIVAL1 (15)
	db "?@", TRAINERTYPE_MOVES
	db 34
	dw SNEASEL
	db QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 36
	dw GOLBAT
	db LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 34
	dw MAGNETON
	db THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 35
	dw HAUNTER
	db MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 35
	dw KADABRA
	db DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	db 38
	dw FERALIGATR
	db RAGE, WATER_GUN, SCARY_FACE, SLASH
	db -1 ; end

	end_list_items

PokemonProfGroup:

WillGroup:
	next_list_item ; WILL (1)
	db "WILL@", TRAINERTYPE_MOVES
	db 40
	dw XATU
	db QUICK_ATTACK, FUTURE_SIGHT, CONFUSE_RAY, PSYCHIC_M
	db 41
	dw JYNX
	db DOUBLESLAP, LOVELY_KISS, ICE_PUNCH, PSYCHIC_M
	db 41
	dw EXEGGUTOR
	db REFLECT, LEECH_SEED, EGG_BOMB, PSYCHIC_M
	db 41
	dw SLOWBRO
	db CURSE, AMNESIA, BODY_SLAM, PSYCHIC_M
	db 42
	dw XATU
	db QUICK_ATTACK, FUTURE_SIGHT, CONFUSE_RAY, PSYCHIC_M
	db -1 ; end

	end_list_items

PKMNTrainerGroup:
	next_list_item ; CAL (1)
	db "CAL@", TRAINERTYPE_NORMAL
	db 10
	dw CHIKORITA
	db 10
	dw CYNDAQUIL
	db 10
	dw TOTODILE
	db -1 ; end

	next_list_item ; CAL (2)
	db "CAL@", TRAINERTYPE_NORMAL
	db 30
	dw BAYLEEF
	db 30
	dw QUILAVA
	db 30
	dw CROCONAW
	db -1 ; end

	next_list_item ; CAL (3)
	db "CAL@", TRAINERTYPE_NORMAL
	db 50
	dw MEGANIUM
	db 50
	dw TYPHLOSION
	db 50
	dw FERALIGATR
	db -1 ; end

	end_list_items

SECTION "Enemy Trainer Parties 2", ROMX

BrunoGroup:
	next_list_item ; BRUNO (1)
	db "BRUNO@", TRAINERTYPE_MOVES
	db 42
	dw HITMONTOP
	db PURSUIT, QUICK_ATTACK, DIG, DETECT
	db 42
	dw HITMONLEE
	db SWAGGER, DOUBLE_KICK, HI_JUMP_KICK, FORESIGHT
	db 42
	dw HITMONCHAN
	db THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH, MACH_PUNCH
	db 43
	dw ONIX
	db BIND, EARTHQUAKE, SANDSTORM, ROCK_SLIDE
	db 46
	dw MACHAMP
	db ROCK_SLIDE, FORESIGHT, VITAL_THROW, CROSS_CHOP
	db -1 ; end

	end_list_items

KarenGroup:
	next_list_item ; KAREN (1)
	db "KAREN@", TRAINERTYPE_MOVES
	db 42
	dw UMBREON
	db SAND_ATTACK, CONFUSE_RAY, FAINT_ATTACK, MEAN_LOOK
	db 42
	dw VILEPLUME
	db STUN_SPORE, ACID, MOONLIGHT, PETAL_DANCE
	db 45
	dw GENGAR
	db LICK, SPITE, CURSE, DESTINY_BOND
	db 44
	dw MURKROW
	db QUICK_ATTACK, WHIRLWIND, PURSUIT, FAINT_ATTACK
	db 47
	dw HOUNDOOM
	db ROAR, PURSUIT, FLAMETHROWER, CRUNCH
	db -1 ; end

	end_list_items

KogaGroup:
	next_list_item ; KOGA (1)
	db "KOGA@", TRAINERTYPE_MOVES
	db 40
	dw ARIADOS
	db DOUBLE_TEAM, SPIDER_WEB, BATON_PASS, GIGA_DRAIN
	db 41
	dw VENOMOTH
	db SUPERSONIC, GUST, PSYCHIC_M, TOXIC
	db 43
	dw FORRETRESS
	db PROTECT, SWIFT, EXPLOSION, SPIKES
	db 42
	dw MUK
	db MINIMIZE, ACID_ARMOR, SLUDGE_BOMB, TOXIC
	db 44
	dw CROBAT
	db DOUBLE_TEAM, QUICK_ATTACK, WING_ATTACK, TOXIC
	db -1 ; end

	end_list_items

ChampionGroup:
	next_list_item ; CHAMPION (1)
	db "LANCE@", TRAINERTYPE_MOVES
	db 44
	dw GYARADOS
	db FLAIL, RAIN_DANCE, SURF, HYPER_BEAM
	db 47
	dw DRAGONITE
	db THUNDER_WAVE, TWISTER, THUNDER, HYPER_BEAM
	db 47
	dw DRAGONITE
	db THUNDER_WAVE, TWISTER, BLIZZARD, HYPER_BEAM
	db 46
	dw AERODACTYL
	db WING_ATTACK, ANCIENTPOWER, ROCK_SLIDE, HYPER_BEAM
	db 46
	dw CHARIZARD
	db FLAMETHROWER, WING_ATTACK, SLASH, HYPER_BEAM
	db 50
	dw DRAGONITE
	db FIRE_BLAST, SAFEGUARD, OUTRAGE, HYPER_BEAM
	db -1 ; end

	end_list_items

BrockGroup:
	next_list_item ; BROCK (1)
	db "BROCK@", TRAINERTYPE_MOVES
	db 41
	dw GRAVELER
	db DEFENSE_CURL, ROCK_SLIDE, ROLLOUT, EARTHQUAKE
	db 41
	dw RHYHORN
	db FURY_ATTACK, SCARY_FACE, EARTHQUAKE, HORN_DRILL
	db 42
	dw OMASTAR
	db BITE, SURF, PROTECT, SPIKE_CANNON
	db 44
	dw ONIX
	db BIND, ROCK_SLIDE, BIDE, SANDSTORM
	db 42
	dw KABUTOPS
	db SLASH, SURF, ENDURE, GIGA_DRAIN
	db -1 ; end

	end_list_items

MistyGroup:
	next_list_item ; MISTY (1)
	db "MISTY@", TRAINERTYPE_MOVES
	db 42
	dw GOLDUCK
	db SURF, DISABLE, PSYCH_UP, PSYCHIC_M
	db 42
	dw QUAGSIRE
	db SURF, AMNESIA, EARTHQUAKE, RAIN_DANCE
	db 44
	dw LAPRAS
	db SURF, PERISH_SONG, BLIZZARD, RAIN_DANCE
	db 47
	dw STARMIE
	db SURF, CONFUSE_RAY, RECOVER, ICE_BEAM
	db -1 ; end

	end_list_items

LtSurgeGroup:
	next_list_item ; LT_SURGE (1)
	db "LT.SURGE@", TRAINERTYPE_MOVES
	db 44
	dw RAICHU
	db THUNDER_WAVE, QUICK_ATTACK, THUNDERBOLT, THUNDER
	db 40
	dw ELECTRODE
	db SCREECH, DOUBLE_TEAM, SWIFT, EXPLOSION
	db 40
	dw MAGNETON
	db LOCK_ON, DOUBLE_TEAM, SWIFT, ZAP_CANNON
	db 40
	dw ELECTRODE
	db SCREECH, DOUBLE_TEAM, SWIFT, EXPLOSION
	db 46
	dw ELECTABUZZ
	db QUICK_ATTACK, THUNDERPUNCH, LIGHT_SCREEN, THUNDER
	db -1 ; end

	end_list_items

ScientistGroup:
	next_list_item ; SCIENTIST (1)
	db "ROSS@", TRAINERTYPE_NORMAL
	db 22
	dw KOFFING
	db 22
	dw KOFFING
	db -1 ; end

	next_list_item ; SCIENTIST (2)
	db "MITCH@", TRAINERTYPE_NORMAL
	db 24
	dw DITTO
	db -1 ; end

	next_list_item ; SCIENTIST (3)
	db "JED@", TRAINERTYPE_NORMAL
	db 20
	dw MAGNEMITE
	db 20
	dw MAGNEMITE
	db 20
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SCIENTIST (4)
	db "MARC@", TRAINERTYPE_NORMAL
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SCIENTIST (5)
	db "RICH@", TRAINERTYPE_MOVES
	db 30
	dw PORYGON
	db CONVERSION, CONVERSION2, RECOVER, TRI_ATTACK
	db -1 ; end

	end_list_items

ErikaGroup:
	next_list_item ; ERIKA (1)
	db "ERIKA@", TRAINERTYPE_MOVES
	db 42
	dw TANGELA
	db VINE_WHIP, BIND, GIGA_DRAIN, SLEEP_POWDER
	db 41
	dw JUMPLUFF
	db MEGA_DRAIN, LEECH_SEED, COTTON_SPORE, GIGA_DRAIN
	db 46
	dw VICTREEBEL
	db SUNNY_DAY, SYNTHESIS, ACID, RAZOR_LEAF
	db 46
	dw BELLOSSOM
	db SUNNY_DAY, SYNTHESIS, PETAL_DANCE, SOLARBEAM
	db -1 ; end

	end_list_items

YoungsterGroup:
	next_list_item ; YOUNGSTER (1)
	db "JOEY@", TRAINERTYPE_NORMAL
	db 4
	dw RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER (2)
	db "MIKEY@", TRAINERTYPE_NORMAL
	db 2
	dw PIDGEY
	db 4
	dw RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER (3)
	db "ALBERT@", TRAINERTYPE_NORMAL
	db 6
	dw RATTATA
	db 8
	dw ZUBAT
	db -1 ; end

	next_list_item ; YOUNGSTER (4)
	db "GORDON@", TRAINERTYPE_NORMAL
	db 10
	dw WOOPER
	db -1 ; end

	next_list_item ; YOUNGSTER (5)
	db "SAMUEL@", TRAINERTYPE_NORMAL
	db 7
	dw RATTATA
	db 10
	dw SANDSHREW
	db 8
	dw SPEAROW
	db 8
	dw SPEAROW
	db -1 ; end

	next_list_item ; YOUNGSTER (6)
	db "IAN@", TRAINERTYPE_NORMAL
	db 10
	dw MANKEY
	db 12
	dw DIGLETT
	db -1 ; end

	next_list_item ; YOUNGSTER (7)
	db "JOEY@", TRAINERTYPE_NORMAL
	db 15
	dw RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER (8)
	db "JOEY@", TRAINERTYPE_MOVES
	db 21
	dw RATICATE
	db TAIL_WHIP, QUICK_ATTACK, HYPER_FANG, SCARY_FACE
	db -1 ; end

	next_list_item ; YOUNGSTER (9)
	db "WARREN@", TRAINERTYPE_NORMAL
	db 35
	dw FEAROW
	db -1 ; end

	next_list_item ; YOUNGSTER (10)
	db "JIMMY@", TRAINERTYPE_NORMAL
	db 33
	dw RATICATE
	db 33
	dw ARBOK
	db -1 ; end

	next_list_item ; YOUNGSTER (11)
	db "OWEN@", TRAINERTYPE_NORMAL
	db 35
	dw GROWLITHE
	db -1 ; end

	next_list_item ; YOUNGSTER (12)
	db "JASON@", TRAINERTYPE_NORMAL
	db 33
	dw SANDSLASH
	db 33
	dw CROBAT
	db -1 ; end

	next_list_item ; YOUNGSTER (13)
	db "JOEY@", TRAINERTYPE_MOVES
	db 30
	dw RATICATE
	db TAIL_WHIP, QUICK_ATTACK, HYPER_FANG, PURSUIT
	db -1 ; end

	next_list_item ; YOUNGSTER (14)
	db "JOEY@", TRAINERTYPE_MOVES
	db 37
	dw RATICATE
	db HYPER_BEAM, QUICK_ATTACK, HYPER_FANG, PURSUIT
	db -1 ; end

	end_list_items

SchoolboyGroup:
	next_list_item ; SCHOOLBOY (1)
	db "JACK@", TRAINERTYPE_NORMAL
	db 12
	dw ODDISH
	db 15
	dw VOLTORB
	db -1 ; end

	next_list_item ; SCHOOLBOY (2)
	db "KIPP@", TRAINERTYPE_NORMAL
	db 27
	dw VOLTORB
	db 27
	dw MAGNEMITE
	db 31
	dw VOLTORB
	db 31
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (3)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 16
	dw TANGELA
	db -1 ; end

	next_list_item ; SCHOOLBOY (4)
	db "JOHNNY@", TRAINERTYPE_NORMAL
	db 29
	dw BELLSPROUT
	db 31
	dw WEEPINBELL
	db 33
	dw VICTREEBEL
	db -1 ; end

	next_list_item ; SCHOOLBOY (5)
	db "DANNY@", TRAINERTYPE_NORMAL
	db 31
	dw JYNX
	db 31
	dw ELECTABUZZ
	db 31
	dw MAGMAR
	db -1 ; end

	next_list_item ; SCHOOLBOY (6)
	db "TOMMY@", TRAINERTYPE_NORMAL
	db 32
	dw XATU
	db 34
	dw ALAKAZAM
	db -1 ; end

	next_list_item ; SCHOOLBOY (7)
	db "DUDLEY@", TRAINERTYPE_NORMAL
	db 35
	dw ODDISH
	db -1 ; end

	next_list_item ; SCHOOLBOY (8)
	db "JOE@", TRAINERTYPE_NORMAL
	db 33
	dw TANGELA
	db 33
	dw VAPOREON
	db -1 ; end

	next_list_item ; SCHOOLBOY (9)
	db "BILLY@", TRAINERTYPE_NORMAL
	db 27
	dw PARAS
	db 27
	dw PARAS
	db 27
	dw POLIWHIRL
	db 35
	dw DITTO
	db -1 ; end

	next_list_item ; SCHOOLBOY (10)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 19
	dw MR__MIME
	db -1 ; end

	next_list_item ; SCHOOLBOY (11)
	db "NATE@", TRAINERTYPE_NORMAL
	db 32
	dw LEDIAN
	db 32
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; SCHOOLBOY (12)
	db "RICKY@", TRAINERTYPE_NORMAL
	db 32
	dw AIPOM
	db 32
	dw DITTO
	db -1 ; end

	next_list_item ; SCHOOLBOY (13)
	db "JACK@", TRAINERTYPE_NORMAL
	db 14
	dw ODDISH
	db 17
	dw VOLTORB
	db -1 ; end

	next_list_item ; SCHOOLBOY (14)
	db "JACK@", TRAINERTYPE_NORMAL
	db 28
	dw GLOOM
	db 31
	dw ELECTRODE
	db -1 ; end

	next_list_item ; SCHOOLBOY (15)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 17
	dw TANGELA
	db 17
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (16)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 20
	dw NATU
	db 22
	dw TANGELA
	db 20
	dw QUAGSIRE
	db 25
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (17)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 19
	dw MR__MIME
	db 19
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SCHOOLBOY (18)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 27
	dw MR__MIME
	db 31
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (19)
	db "JACK@", TRAINERTYPE_NORMAL
	db 30
	dw GLOOM
	db 33
	dw GROWLITHE
	db 33
	dw ELECTRODE
	db -1 ; end

	next_list_item ; SCHOOLBOY (20)
	db "JACK@", TRAINERTYPE_MOVES
	db 35
	dw ELECTRODE
	db SCREECH, SONICBOOM, ROLLOUT, LIGHT_SCREEN
	db 35
	dw GROWLITHE
	db SUNNY_DAY, LEER, TAKE_DOWN, FLAME_WHEEL
	db 37
	dw VILEPLUME
	db SOLARBEAM, SLEEP_POWDER, ACID, MOONLIGHT
	db -1 ; end

	next_list_item ; SCHOOLBOY (21)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 27
	dw NATU
	db 27
	dw TANGELA
	db 30
	dw QUAGSIRE
	db 30
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (22)
	db "ALAN@", TRAINERTYPE_MOVES
	db 35
	dw XATU
	db PECK, NIGHT_SHADE, SWIFT, FUTURE_SIGHT
	db 32
	dw TANGELA
	db POISONPOWDER, VINE_WHIP, BIND, MEGA_DRAIN
	db 32
	dw YANMA
	db QUICK_ATTACK, DOUBLE_TEAM, SONICBOOM, SUPERSONIC
	db 35
	dw QUAGSIRE
	db TAIL_WHIP, SLAM, AMNESIA, EARTHQUAKE
	db -1 ; end

	next_list_item ; SCHOOLBOY (23)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 30
	dw MR__MIME
	db 34
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (24)
	db "CHAD@", TRAINERTYPE_MOVES
	db 34
	dw MR__MIME
	db PSYCHIC_M, LIGHT_SCREEN, REFLECT, ENCORE
	db 38
	dw MAGNETON
	db ZAP_CANNON, THUNDER_WAVE, LOCK_ON, SWIFT
	db -1 ; end

	end_list_items

BirdKeeperGroup:
	next_list_item ; BIRD_KEEPER (1)
	db "ROD@", TRAINERTYPE_NORMAL
	db 7
	dw PIDGEY
	db 7
	dw PIDGEY
	db -1 ; end

	next_list_item ; BIRD_KEEPER (2)
	db "ABE@", TRAINERTYPE_NORMAL
	db 9
	dw SPEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (3)
	db "BRYAN@", TRAINERTYPE_NORMAL
	db 12
	dw PIDGEY
	db 14
	dw PIDGEOTTO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (4)
	db "THEO@", TRAINERTYPE_NORMAL
	db 17
	dw PIDGEY
	db 15
	dw PIDGEY
	db 19
	dw PIDGEY
	db 15
	dw PIDGEY
	db 15
	dw PIDGEY
	db -1 ; end

	next_list_item ; BIRD_KEEPER (5)
	db "TOBY@", TRAINERTYPE_NORMAL
	db 15
	dw DODUO
	db 16
	dw DODUO
	db 17
	dw DODUO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (6)
	db "DENIS@", TRAINERTYPE_NORMAL
	db 18
	dw SPEAROW
	db 20
	dw FEAROW
	db 18
	dw SPEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (7)
	db "VANCE@", TRAINERTYPE_NORMAL
	db 25
	dw PIDGEOTTO
	db 25
	dw PIDGEOTTO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (8)
	db "HANK@", TRAINERTYPE_NORMAL
	db 12
	dw PIDGEY
	db 34
	dw PIDGEOT
	db -1 ; end

	next_list_item ; BIRD_KEEPER (9)
	db "ROY@", TRAINERTYPE_NORMAL
	db 29
	dw FEAROW
	db 35
	dw FEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (10)
	db "BORIS@", TRAINERTYPE_NORMAL
	db 30
	dw DODUO
	db 28
	dw DODUO
	db 32
	dw DODRIO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (11)
	db "BOB@", TRAINERTYPE_NORMAL
	db 34
	dw NOCTOWL
	db -1 ; end

	next_list_item ; BIRD_KEEPER (12)
	db "JOSE@", TRAINERTYPE_NORMAL
	db 36
	dw FARFETCH_D
	db -1 ; end

	next_list_item ; BIRD_KEEPER (13)
	db "PETER@", TRAINERTYPE_NORMAL
	db 6
	dw PIDGEY
	db 6
	dw PIDGEY
	db 8
	dw SPEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (14)
	db "JOSE@", TRAINERTYPE_NORMAL
	db 34
	dw FARFETCH_D
	db -1 ; end

	next_list_item ; BIRD_KEEPER (15)
	db "PERRY@", TRAINERTYPE_NORMAL
	db 34
	dw FARFETCH_D
	db -1 ; end

	next_list_item ; BIRD_KEEPER (16)
	db "BRET@", TRAINERTYPE_NORMAL
	db 32
	dw PIDGEOTTO
	db 32
	dw FEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (17)
	db "JOSE@", TRAINERTYPE_MOVES
	db 40
	dw FARFETCH_D
	db FURY_ATTACK, DETECT, FLY, SLASH
	db -1 ; end

	next_list_item ; BIRD_KEEPER (18)
	db "VANCE@", TRAINERTYPE_NORMAL
	db 32
	dw PIDGEOTTO
	db 32
	dw PIDGEOTTO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (19)
	db "VANCE@", TRAINERTYPE_MOVES
	db 38
	dw PIDGEOT
	db TOXIC, QUICK_ATTACK, WHIRLWIND, FLY
	db 38
	dw PIDGEOT
	db SWIFT, DETECT, STEEL_WING, FLY
	db -1 ; end

	end_list_items

LassGroup:
	next_list_item ; LASS (1)
	db "CARRIE@", TRAINERTYPE_MOVES
	db 18
	dw SNUBBULL
	db SCARY_FACE, CHARM, BITE, LICK
	db -1 ; end

	next_list_item ; LASS (2)
	db "BRIDGET@", TRAINERTYPE_NORMAL
	db 15
	dw JIGGLYPUFF
	db 15
	dw JIGGLYPUFF
	db 15
	dw JIGGLYPUFF
	db -1 ; end

	next_list_item ; LASS (3)
	db "ALICE@", TRAINERTYPE_NORMAL
	db 30
	dw GLOOM
	db 34
	dw ARBOK
	db 30
	dw GLOOM
	db -1 ; end

	next_list_item ; LASS (4)
	db "KRISE@", TRAINERTYPE_NORMAL
	db 12
	dw ODDISH
	db 15
	dw CUBONE
	db -1 ; end

	next_list_item ; LASS (5)
	db "CONNIE@", TRAINERTYPE_NORMAL
	db 21
	dw MARILL
	db -1 ; end

	next_list_item ; LASS (6)
	db "LINDA@", TRAINERTYPE_NORMAL
	db 30
	dw BULBASAUR
	db 32
	dw IVYSAUR
	db 34
	dw VENUSAUR
	db -1 ; end

	next_list_item ; LASS (7)
	db "LAURA@", TRAINERTYPE_NORMAL
	db 28
	dw GLOOM
	db 31
	dw PIDGEOTTO
	db 31
	dw BELLOSSOM
	db -1 ; end

	next_list_item ; LASS (8)
	db "SHANNON@", TRAINERTYPE_NORMAL
	db 29
	dw PARAS
	db 29
	dw PARAS
	db 32
	dw PARASECT
	db -1 ; end

	next_list_item ; LASS (9)
	db "MICHELLE@", TRAINERTYPE_NORMAL
	db 32
	dw SKIPLOOM
	db 33
	dw HOPPIP
	db 34
	dw JUMPLUFF
	db -1 ; end

	next_list_item ; LASS (10)
	db "DANA@", TRAINERTYPE_MOVES
	db 18
	dw FLAAFFY
	db TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
	db 18
	dw PSYDUCK
	db SCRATCH, TAIL_WHIP, DISABLE, CONFUSION
	db -1 ; end

	next_list_item ; LASS (11)
	db "ELLEN@", TRAINERTYPE_NORMAL
	db 30
	dw WIGGLYTUFF
	db 34
	dw GRANBULL
	db -1 ; end

	next_list_item ; LASS (12)
	db "CONNIE@", TRAINERTYPE_NORMAL
	db 21
	dw MARILL
	db -1 ; end

	next_list_item ; LASS (13)
	db "CONNIE@", TRAINERTYPE_NORMAL
	db 21
	dw MARILL
	db -1 ; end

	next_list_item ; LASS (14)
	db "DANA@", TRAINERTYPE_MOVES
	db 21
	dw FLAAFFY
	db TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
	db 21
	dw PSYDUCK
	db SCRATCH, TAIL_WHIP, DISABLE, CONFUSION
	db -1 ; end

	next_list_item ; LASS (15)
	db "DANA@", TRAINERTYPE_MOVES
	db 29
	dw PSYDUCK
	db SCRATCH, DISABLE, CONFUSION, SCREECH
	db 29
	dw AMPHAROS
	db TACKLE, THUNDERSHOCK, THUNDER_WAVE, COTTON_SPORE
	db -1 ; end

	next_list_item ; LASS (16)
	db "DANA@", TRAINERTYPE_MOVES
	db 32
	dw PSYDUCK
	db SCRATCH, DISABLE, CONFUSION, SCREECH
	db 32
	dw AMPHAROS
	db TACKLE, THUNDERPUNCH, THUNDER_WAVE, COTTON_SPORE
	db -1 ; end

	next_list_item ; LASS (17)
	db "DANA@", TRAINERTYPE_MOVES
	db 36
	dw AMPHAROS
	db SWIFT, THUNDERPUNCH, THUNDER_WAVE, COTTON_SPORE
	db 36
	dw GOLDUCK
	db DISABLE, SURF, PSYCHIC_M, SCREECH
	db -1 ; end

	end_list_items

JanineGroup:
	next_list_item ; JANINE (1)
	db "JANINE@", TRAINERTYPE_MOVES
	db 36
	dw CROBAT
	db SCREECH, SUPERSONIC, CONFUSE_RAY, WING_ATTACK
	db 36
	dw WEEZING
	db SMOG, SLUDGE_BOMB, TOXIC, EXPLOSION
	db 36
	dw WEEZING
	db SMOG, SLUDGE_BOMB, TOXIC, EXPLOSION
	db 33
	dw ARIADOS
	db SCARY_FACE, GIGA_DRAIN, STRING_SHOT, NIGHT_SHADE
	db 39
	dw VENOMOTH
	db FORESIGHT, DOUBLE_TEAM, GUST, PSYCHIC_M
	db -1 ; end

	end_list_items

CooltrainerMGroup:
	next_list_item ; COOLTRAINERM (1)
	db "NICK@", TRAINERTYPE_MOVES
	db 26
	dw CHARMANDER
	db EMBER, SMOKESCREEN, RAGE, SCARY_FACE
	db 26
	dw SQUIRTLE
	db WITHDRAW, WATER_GUN, BITE, CURSE
	db 26
	dw BULBASAUR
	db LEECH_SEED, POISONPOWDER, SLEEP_POWDER, RAZOR_LEAF
	db -1 ; end

	next_list_item ; COOLTRAINERM (2)
	db "AARON@", TRAINERTYPE_NORMAL
	db 24
	dw IVYSAUR
	db 24
	dw CHARMELEON
	db 24
	dw WARTORTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (3)
	db "PAUL@", TRAINERTYPE_NORMAL
	db 34
	dw DRATINI
	db 34
	dw DRATINI
	db 34
	dw DRATINI
	db -1 ; end

	next_list_item ; COOLTRAINERM (4)
	db "CODY@", TRAINERTYPE_NORMAL
	db 34
	dw HORSEA
	db 36
	dw SEADRA
	db -1 ; end

	next_list_item ; COOLTRAINERM (5)
	db "MIKE@", TRAINERTYPE_NORMAL
	db 37
	dw DRAGONAIR
	db -1 ; end

	next_list_item ; COOLTRAINERM (6)
	db "GAVEN@", TRAINERTYPE_MOVES
	db 35
	dw VICTREEBEL
	db WRAP, TOXIC, ACID, RAZOR_LEAF
	db 35
	dw KINGLER
	db BUBBLEBEAM, STOMP, GUILLOTINE, PROTECT
	db 35
	dw FLAREON
	db SAND_ATTACK, QUICK_ATTACK, BITE, FIRE_SPIN
	db -1 ; end

	next_list_item ; COOLTRAINERM (7)
	db "GAVEN@", TRAINERTYPE_ITEM_MOVES
	db 39
	dw VICTREEBEL
	db NO_ITEM, GIGA_DRAIN, TOXIC, SLUDGE_BOMB, RAZOR_LEAF
	db 39
	dw KINGLER
	db KINGS_ROCK, SURF, STOMP, GUILLOTINE, BLIZZARD
	db 39
	dw FLAREON
	db NO_ITEM, FLAMETHROWER, QUICK_ATTACK, BITE, FIRE_SPIN
	db -1 ; end

	next_list_item ; COOLTRAINERM (8)
	db "RYAN@", TRAINERTYPE_MOVES
	db 25
	dw PIDGEOT
	db SAND_ATTACK, QUICK_ATTACK, WHIRLWIND, WING_ATTACK
	db 27
	dw ELECTABUZZ
	db THUNDERPUNCH, LIGHT_SCREEN, SWIFT, SCREECH
	db -1 ; end

	next_list_item ; COOLTRAINERM (9)
	db "JAKE@", TRAINERTYPE_MOVES
	db 33
	dw PARASECT
	db LEECH_LIFE, SPORE, SLASH, SWORDS_DANCE
	db 35
	dw GOLDUCK
	db CONFUSION, SCREECH, PSYCH_UP, FURY_SWIPES
	db -1 ; end

	next_list_item ; COOLTRAINERM (10)
	db "GAVEN@", TRAINERTYPE_MOVES
	db 32
	dw VICTREEBEL
	db WRAP, TOXIC, ACID, RAZOR_LEAF
	db 32
	dw KINGLER
	db BUBBLEBEAM, STOMP, GUILLOTINE, PROTECT
	db 32
	dw FLAREON
	db SAND_ATTACK, QUICK_ATTACK, BITE, FIRE_SPIN
	db -1 ; end

	next_list_item ; COOLTRAINERM (11)
	db "BLAKE@", TRAINERTYPE_MOVES
	db 33
	dw MAGNETON
	db THUNDERBOLT, SUPERSONIC, SWIFT, SCREECH
	db 31
	dw QUAGSIRE
	db WATER_GUN, SLAM, AMNESIA, EARTHQUAKE
	db 31
	dw EXEGGCUTE
	db LEECH_SEED, CONFUSION, SLEEP_POWDER, SOLARBEAM
	db -1 ; end

	next_list_item ; COOLTRAINERM (12)
	db "BRIAN@", TRAINERTYPE_MOVES
	db 35
	dw SANDSLASH
	db SAND_ATTACK, POISON_STING, SLASH, SWIFT
	db -1 ; end

	next_list_item ; COOLTRAINERM (13)
	db "ERICK@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 10
	dw CHARMANDER
	db 10
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (14)
	db "ANDY@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 10
	dw CHARMANDER
	db 10
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (15)
	db "TYLER@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 10
	dw CHARMANDER
	db 10
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (16)
	db "SEAN@", TRAINERTYPE_NORMAL
	db 35
	dw FLAREON
	db 35
	dw TANGELA
	db 35
	dw TAUROS
	db -1 ; end

	next_list_item ; COOLTRAINERM (17)
	db "KEVIN@", TRAINERTYPE_NORMAL
	db 38
	dw RHYHORN
	db 35
	dw CHARMELEON
	db 35
	dw WARTORTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (18)
	db "STEVE@", TRAINERTYPE_NORMAL
	db 14
	dw BULBASAUR
	db 14
	dw CHARMANDER
	db 14
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (19)
	db "ALLEN@", TRAINERTYPE_MOVES
	db 27
	dw CHARMELEON
	db EMBER, SMOKESCREEN, RAGE, SCARY_FACE
	db -1 ; end

	next_list_item ; COOLTRAINERM (20)
	db "DARIN@", TRAINERTYPE_MOVES
	db 37
	dw DRAGONAIR
	db WRAP, SURF, DRAGON_RAGE, SLAM
	db -1 ; end

	end_list_items

CooltrainerFGroup:
	next_list_item ; COOLTRAINERF (1)
	db "GWEN@", TRAINERTYPE_NORMAL
	db 26
	dw EEVEE
	db 22
	dw FLAREON
	db 22
	dw VAPOREON
	db 22
	dw JOLTEON
	db -1 ; end

	next_list_item ; COOLTRAINERF (2)
	db "LOIS@", TRAINERTYPE_MOVES
	db 25
	dw SKIPLOOM
	db SYNTHESIS, POISONPOWDER, MEGA_DRAIN, LEECH_SEED
	db 25
	dw NINETALES
	db EMBER, QUICK_ATTACK, CONFUSE_RAY, SAFEGUARD
	db -1 ; end

	next_list_item ; COOLTRAINERF (3)
	db "FRAN@", TRAINERTYPE_NORMAL
	db 37
	dw SEADRA
	db -1 ; end

	next_list_item ; COOLTRAINERF (4)
	db "LOLA@", TRAINERTYPE_NORMAL
	db 34
	dw DRATINI
	db 36
	dw DRAGONAIR
	db -1 ; end

	next_list_item ; COOLTRAINERF (5)
	db "KATE@", TRAINERTYPE_NORMAL
	db 26
	dw SHELLDER
	db 28
	dw CLOYSTER
	db -1 ; end

	next_list_item ; COOLTRAINERF (6)
	db "IRENE@", TRAINERTYPE_NORMAL
	db 22
	dw GOLDEEN
	db 24
	dw SEAKING
	db -1 ; end

	next_list_item ; COOLTRAINERF (7)
	db "KELLY@", TRAINERTYPE_NORMAL
	db 27
	dw MARILL
	db 24
	dw WARTORTLE
	db 24
	dw WARTORTLE
	db -1 ; end

	next_list_item ; COOLTRAINERF (8)
	db "JOYCE@", TRAINERTYPE_MOVES
	db 36
	dw PIKACHU
	db QUICK_ATTACK, DOUBLE_TEAM, THUNDERBOLT, THUNDER
	db 32
	dw BLASTOISE
	db BITE, CURSE, SURF, RAIN_DANCE
	db -1 ; end

	next_list_item ; COOLTRAINERF (9)
	db "BETH@", TRAINERTYPE_MOVES
	db 36
	dw RAPIDASH
	db STOMP, FIRE_SPIN, FURY_ATTACK, AGILITY
	db -1 ; end

	next_list_item ; COOLTRAINERF (10)
	db "REENA@", TRAINERTYPE_NORMAL
	db 31
	dw STARMIE
	db 33
	dw NIDOQUEEN
	db 31
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (11)
	db "MEGAN@", TRAINERTYPE_MOVES
	db 32
	dw BULBASAUR
	db GROWL, LEECH_SEED, POISONPOWDER, RAZOR_LEAF
	db 32
	dw IVYSAUR
	db GROWL, LEECH_SEED, POISONPOWDER, RAZOR_LEAF
	db 32
	dw VENUSAUR
	db BODY_SLAM, SLEEP_POWDER, RAZOR_LEAF, SWEET_SCENT
	db -1 ; end

	next_list_item ; COOLTRAINERF (12)
	db "BETH@", TRAINERTYPE_MOVES
	db 39
	dw RAPIDASH
	db STOMP, FIRE_SPIN, FURY_ATTACK, AGILITY
	db -1 ; end

	next_list_item ; COOLTRAINERF (13)
	db "CAROL@", TRAINERTYPE_NORMAL
	db 35
	dw ELECTRODE
	db 35
	dw STARMIE
	db 35
	dw NINETALES
	db -1 ; end

	next_list_item ; COOLTRAINERF (14)
	db "QUINN@", TRAINERTYPE_NORMAL
	db 38
	dw IVYSAUR
	db 38
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (15)
	db "EMMA@", TRAINERTYPE_NORMAL
	db 28
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; COOLTRAINERF (16)
	db "CYBIL@", TRAINERTYPE_MOVES
	db 25
	dw BUTTERFREE
	db CONFUSION, SLEEP_POWDER, WHIRLWIND, GUST
	db 25
	dw BELLOSSOM
	db ABSORB, STUN_SPORE, ACID, SOLARBEAM
	db -1 ; end

	next_list_item ; COOLTRAINERF (17)
	db "JENN@", TRAINERTYPE_NORMAL
	db 24
	dw STARYU
	db 26
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (18)
	db "BETH@", TRAINERTYPE_ITEM_MOVES
	db 43
	dw RAPIDASH
	db FOCUS_BAND, STOMP, FIRE_SPIN, FURY_ATTACK, FIRE_BLAST
	db -1 ; end

	next_list_item ; COOLTRAINERF (19)
	db "REENA@", TRAINERTYPE_NORMAL
	db 34
	dw STARMIE
	db 36
	dw NIDOQUEEN
	db 34
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (20)
	db "REENA@", TRAINERTYPE_ITEM_MOVES
	db 38
	dw STARMIE
	db NO_ITEM, DOUBLE_TEAM, PSYCHIC_M, WATERFALL, CONFUSE_RAY
	db 40
	dw NIDOQUEEN
	db PINK_BOW, EARTHQUAKE, DOUBLE_KICK, TOXIC, BODY_SLAM
	db 38
	dw STARMIE
	db NO_ITEM, BLIZZARD, PSYCHIC_M, WATERFALL, RECOVER
	db -1 ; end

	next_list_item ; COOLTRAINERF (21)
	db "CARA@", TRAINERTYPE_MOVES
	db 33
	dw HORSEA
	db SMOKESCREEN, LEER, WHIRLPOOL, TWISTER
	db 33
	dw HORSEA
	db SMOKESCREEN, LEER, WHIRLPOOL, TWISTER
	db 35
	dw SEADRA
	db SWIFT, LEER, WATERFALL, TWISTER
	db -1 ; end

	end_list_items

BeautyGroup:
	next_list_item ; BEAUTY (1)
	db "VICTORIA@", TRAINERTYPE_NORMAL
	db 9
	dw SENTRET
	db 13
	dw SENTRET
	db 17
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (2)
	db "SAMANTHA@", TRAINERTYPE_MOVES
	db 16
	dw MEOWTH
	db SCRATCH, GROWL, BITE, PAY_DAY
	db 16
	dw MEOWTH
	db SCRATCH, GROWL, BITE, SLASH
	db -1 ; end

	next_list_item ; BEAUTY (3)
	db "JULIE@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (4)
	db "JACLYN@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (5)
	db "BRENDA@", TRAINERTYPE_NORMAL
	db 16
	dw FURRET
	db -1 ; end

	next_list_item ; BEAUTY (6)
	db "CASSIE@", TRAINERTYPE_NORMAL
	db 28
	dw VILEPLUME
	db 34
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BEAUTY (7)
	db "CAROLINE@", TRAINERTYPE_NORMAL
	db 30
	dw MARILL
	db 32
	dw SEEL
	db 30
	dw MARILL
	db -1 ; end

	next_list_item ; BEAUTY (8)
	db "CARLENE@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (9)
	db "JESSICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (10)
	db "RACHAEL@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (11)
	db "ANGELICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (12)
	db "KENDRA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (13)
	db "VERONICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (14)
	db "JULIA@", TRAINERTYPE_NORMAL
	db 32
	dw PARAS
	db 32
	dw EXEGGCUTE
	db 35
	dw PARASECT
	db -1 ; end

	next_list_item ; BEAUTY (15)
	db "THERESA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (16)
	db "VALERIE@", TRAINERTYPE_MOVES
	db 17
	dw HOPPIP
	db SYNTHESIS, TAIL_WHIP, TACKLE, POISONPOWDER
	db 17
	dw SKIPLOOM
	db SYNTHESIS, TAIL_WHIP, TACKLE, STUN_SPORE
	db -1 ; end

	next_list_item ; BEAUTY (17)
	db "OLIVIA@", TRAINERTYPE_NORMAL
	db 19
	dw CORSOLA
	db -1 ; end

	end_list_items

PokemaniacGroup:
	next_list_item ; POKEMANIAC (1)
	db "LARRY@", TRAINERTYPE_NORMAL
	db 10
	dw SLOWPOKE
	db -1 ; end

	next_list_item ; POKEMANIAC (2)
	db "ANDREW@", TRAINERTYPE_NORMAL
	db 24
	dw MAROWAK
	db 24
	dw MAROWAK
	db -1 ; end

	next_list_item ; POKEMANIAC (3)
	db "CALVIN@", TRAINERTYPE_NORMAL
	db 26
	dw KANGASKHAN
	db -1 ; end

	next_list_item ; POKEMANIAC (4)
	db "SHANE@", TRAINERTYPE_NORMAL
	db 16
	dw NIDORINA
	db 16
	dw NIDORINO
	db -1 ; end

	next_list_item ; POKEMANIAC (5)
	db "BEN@", TRAINERTYPE_NORMAL
	db 19
	dw SLOWBRO
	db -1 ; end

	next_list_item ; POKEMANIAC (6)
	db "BRENT@", TRAINERTYPE_NORMAL
	db 19
	dw LICKITUNG
	db -1 ; end

	next_list_item ; POKEMANIAC (7)
	db "RON@", TRAINERTYPE_NORMAL
	db 19
	dw NIDOKING
	db -1 ; end

	next_list_item ; POKEMANIAC (8)
	db "ETHAN@", TRAINERTYPE_NORMAL
	db 31
	dw RHYHORN
	db 31
	dw RHYDON
	db -1 ; end

	next_list_item ; POKEMANIAC (9)
	db "BRENT@", TRAINERTYPE_NORMAL
	db 25
	dw KANGASKHAN
	db -1 ; end

	next_list_item ; POKEMANIAC (10)
	db "BRENT@", TRAINERTYPE_MOVES
	db 36
	dw PORYGON
	db RECOVER, PSYCHIC_M, CONVERSION2, TRI_ATTACK
	db -1 ; end

	next_list_item ; POKEMANIAC (11)
	db "ISSAC@", TRAINERTYPE_MOVES
	db 12
	dw LICKITUNG
	db LICK, SUPERSONIC, CUT, NO_MOVE
	db -1 ; end

	next_list_item ; POKEMANIAC (12)
	db "DONALD@", TRAINERTYPE_NORMAL
	db 10
	dw SLOWPOKE
	db 10
	dw SLOWPOKE
	db -1 ; end

	next_list_item ; POKEMANIAC (13)
	db "ZACH@", TRAINERTYPE_NORMAL
	db 27
	dw RHYHORN
	db -1 ; end

	next_list_item ; POKEMANIAC (14)
	db "BRENT@", TRAINERTYPE_MOVES
	db 41
	dw CHANSEY
	db ROLLOUT, ATTRACT, EGG_BOMB, SOFTBOILED
	db -1 ; end

	next_list_item ; POKEMANIAC (15)
	db "MILLER@", TRAINERTYPE_NORMAL
	db 17
	dw NIDOKING
	db 17
	dw NIDOQUEEN
	db -1 ; end

	end_list_items

GruntMGroup:
	next_list_item ; GRUNTM (1)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 14
	dw KOFFING
	db -1 ; end

	next_list_item ; GRUNTM (2)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 7
	dw RATTATA
	db 9
	dw ZUBAT
	db 9
	dw ZUBAT
	db -1 ; end

	next_list_item ; GRUNTM (3)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 24
	dw RATICATE
	db 24
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (4)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 23
	dw GRIMER
	db 23
	dw GRIMER
	db 25
	dw MUK
	db -1 ; end

	next_list_item ; GRUNTM (5)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 21
	dw RATTATA
	db 21
	dw RATTATA
	db 23
	dw RATTATA
	db 23
	dw RATTATA
	db 23
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (6)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 26
	dw ZUBAT
	db 26
	dw ZUBAT
	db -1 ; end

	next_list_item ; GRUNTM (7)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 23
	dw KOFFING
	db 23
	dw GRIMER
	db 23
	dw ZUBAT
	db 23
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (8)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 26
	dw WEEZING
	db -1 ; end

	next_list_item ; GRUNTM (9)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 24
	dw RATICATE
	db 26
	dw KOFFING
	db -1 ; end

	next_list_item ; GRUNTM (10)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 22
	dw ZUBAT
	db 24
	dw GOLBAT
	db 22
	dw GRIMER
	db -1 ; end

	next_list_item ; GRUNTM (11)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 23
	dw MUK
	db 23
	dw KOFFING
	db 25
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (12)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 33
	dw HOUNDOUR
	db -1 ; end

	next_list_item ; GRUNTM (13)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 27
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (14)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 24
	dw RATICATE
	db 24
	dw GOLBAT
	db -1 ; end

	next_list_item ; GRUNTM (15)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 26
	dw GRIMER
	db 23
	dw WEEZING
	db -1 ; end

	next_list_item ; GRUNTM (16)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 16
	dw RATTATA
	db 16
	dw RATTATA
	db 16
	dw RATTATA
	db 16
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (17)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 18
	dw GOLBAT
	db -1 ; end

	next_list_item ; GRUNTM (18)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 17
	dw RATTATA
	db 17
	dw ZUBAT
	db 17
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (19)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 18
	dw VENONAT
	db 18
	dw VENONAT
	db -1 ; end

	next_list_item ; GRUNTM (20)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 17
	dw DROWZEE
	db 19
	dw ZUBAT
	db -1 ; end

	next_list_item ; GRUNTM (21)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 16
	dw ZUBAT
	db 17
	dw GRIMER
	db 18
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (22)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 36
	dw GOLBAT
	db -1 ; end

	next_list_item ; GRUNTM (23)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 30
	dw KOFFING
	db -1 ; end

	next_list_item ; GRUNTM (24)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 25
	dw KOFFING
	db 25
	dw KOFFING
	db -1 ; end

	next_list_item ; GRUNTM (25)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 24
	dw KOFFING
	db 24
	dw MUK
	db -1 ; end

	next_list_item ; GRUNTM (26)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 15
	dw RATTATA
	db 15
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (27)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 22
	dw ZUBAT
	db -1 ; end

	next_list_item ; GRUNTM (28)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 19
	dw RATICATE
	db -1 ; end

	next_list_item ; GRUNTM (29)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 9
	dw RATTATA
	db 9
	dw RATTATA
	db -1 ; end

	next_list_item ; GRUNTM (30)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 25
	dw GOLBAT
	db 25
	dw GOLBAT
	db 30
	dw ARBOK
	db -1 ; end

	next_list_item ; GRUNTM (31)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 30
	dw GOLBAT
	db -1 ; end

	end_list_items

GentlemanGroup:
	next_list_item ; GENTLEMAN (1)
	db "PRESTON@", TRAINERTYPE_NORMAL
	db 18
	dw GROWLITHE
	db 18
	dw GROWLITHE
	db -1 ; end

	next_list_item ; GENTLEMAN (2)
	db "EDWARD@", TRAINERTYPE_NORMAL
	db 33
	dw PERSIAN
	db -1 ; end

	next_list_item ; GENTLEMAN (3)
	db "GREGORY@", TRAINERTYPE_NORMAL
	db 37
	dw PIKACHU
	db 33
	dw FLAAFFY
	db -1 ; end

	next_list_item ; GENTLEMAN (4)
	db "VIRGIL@", TRAINERTYPE_NORMAL
	db 20
	dw PONYTA
	db -1 ; end

	next_list_item ; GENTLEMAN (5)
	db "ALFRED@", TRAINERTYPE_NORMAL
	db 20
	dw NOCTOWL
	db -1 ; end

	end_list_items

SkierGroup:
	next_list_item ; SKIER (1)
	db "ROXANNE@", TRAINERTYPE_NORMAL
	db 28
	dw JYNX
	db -1 ; end

	next_list_item ; SKIER (2)
	db "CLARISSA@", TRAINERTYPE_NORMAL
	db 28
	dw DEWGONG
	db -1 ; end

	end_list_items

TeacherGroup:
	next_list_item ; TEACHER (1)
	db "COLETTE@", TRAINERTYPE_NORMAL
	db 36
	dw CLEFAIRY
	db -1 ; end

	next_list_item ; TEACHER (2)
	db "HILLARY@", TRAINERTYPE_NORMAL
	db 32
	dw AIPOM
	db 36
	dw CUBONE
	db -1 ; end

	next_list_item ; TEACHER (3)
	db "SHIRLEY@", TRAINERTYPE_NORMAL
	db 35
	dw JIGGLYPUFF
	db -1 ; end

	end_list_items

SabrinaGroup:
	next_list_item ; SABRINA (1)
	db "SABRINA@", TRAINERTYPE_MOVES
	db 46
	dw ESPEON
	db SAND_ATTACK, QUICK_ATTACK, SWIFT, PSYCHIC_M
	db 46
	dw MR__MIME
	db BARRIER, REFLECT, BATON_PASS, PSYCHIC_M
	db 48
	dw ALAKAZAM
	db RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db -1 ; end

	end_list_items

BugCatcherGroup:
	next_list_item ; BUG_CATCHER (1)
	db "DON@", TRAINERTYPE_NORMAL
	db 3
	dw CATERPIE
	db 3
	dw CATERPIE
	db -1 ; end

	next_list_item ; BUG_CATCHER (2)
	db "ROB@", TRAINERTYPE_NORMAL
	db 32
	dw BEEDRILL
	db 32
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BUG_CATCHER (3)
	db "ED@", TRAINERTYPE_NORMAL
	db 30
	dw BEEDRILL
	db 30
	dw BEEDRILL
	db 30
	dw BEEDRILL
	db -1 ; end

	next_list_item ; BUG_CATCHER (4)
	db "WADE@", TRAINERTYPE_NORMAL
	db 2
	dw CATERPIE
	db 2
	dw CATERPIE
	db 3
	dw WEEDLE
	db 2
	dw CATERPIE
	db -1 ; end

	next_list_item ; BUG_CATCHER (5)
	db "BENNY@", TRAINERTYPE_NORMAL
	db 7
	dw WEEDLE
	db 9
	dw KAKUNA
	db 12
	dw BEEDRILL
	db -1 ; end

	next_list_item ; BUG_CATCHER (6)
	db "AL@", TRAINERTYPE_NORMAL
	db 12
	dw CATERPIE
	db 12
	dw WEEDLE
	db -1 ; end

	next_list_item ; BUG_CATCHER (7)
	db "JOSH@", TRAINERTYPE_NORMAL
	db 13
	dw PARAS
	db -1 ; end

	next_list_item ; BUG_CATCHER (8)
	db "ARNIE@", TRAINERTYPE_NORMAL
	db 15
	dw VENONAT
	db -1 ; end

	next_list_item ; BUG_CATCHER (9)
	db "KEN@", TRAINERTYPE_NORMAL
	db 30
	dw ARIADOS
	db 32
	dw PINSIR
	db -1 ; end

	next_list_item ; BUG_CATCHER (10)
	db "WADE@", TRAINERTYPE_NORMAL
	db 9
	dw METAPOD
	db 9
	dw METAPOD
	db 10
	dw KAKUNA
	db 9
	dw METAPOD
	db -1 ; end

	next_list_item ; BUG_CATCHER (11)
	db "WADE@", TRAINERTYPE_NORMAL
	db 14
	dw BUTTERFREE
	db 14
	dw BUTTERFREE
	db 15
	dw BEEDRILL
	db 14
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BUG_CATCHER (12)
	db "DOUG@", TRAINERTYPE_NORMAL
	db 34
	dw ARIADOS
	db -1 ; end

	next_list_item ; BUG_CATCHER (13)
	db "ARNIE@", TRAINERTYPE_NORMAL
	db 19
	dw VENONAT
	db -1 ; end

	next_list_item ; BUG_CATCHER (14)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 28
	dw VENOMOTH
	db DISABLE, SUPERSONIC, CONFUSION, LEECH_LIFE
	db -1 ; end

	next_list_item ; BUG_CATCHER (15)
	db "WADE@", TRAINERTYPE_MOVES
	db 24
	dw BUTTERFREE
	db CONFUSION, POISONPOWDER, SUPERSONIC, WHIRLWIND
	db 24
	dw BUTTERFREE
	db CONFUSION, STUN_SPORE, SUPERSONIC, WHIRLWIND
	db 25
	dw BEEDRILL
	db FURY_ATTACK, FOCUS_ENERGY, TWINEEDLE, RAGE
	db 24
	dw BUTTERFREE
	db CONFUSION, SLEEP_POWDER, SUPERSONIC, WHIRLWIND
	db -1 ; end

	next_list_item ; BUG_CATCHER (16)
	db "WADE@", TRAINERTYPE_MOVES
	db 30
	dw BUTTERFREE
	db CONFUSION, POISONPOWDER, SUPERSONIC, GUST
	db 30
	dw BUTTERFREE
	db CONFUSION, STUN_SPORE, SUPERSONIC, GUST
	db 32
	dw BEEDRILL
	db FURY_ATTACK, PURSUIT, TWINEEDLE, DOUBLE_TEAM
	db 34
	dw BUTTERFREE
	db PSYBEAM, SLEEP_POWDER, GUST, WHIRLWIND
	db -1 ; end

	next_list_item ; BUG_CATCHER (17)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 36
	dw VENOMOTH
	db GUST, SUPERSONIC, PSYBEAM, LEECH_LIFE
	db -1 ; end

	next_list_item ; BUG_CATCHER (18)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 40
	dw VENOMOTH
	db GUST, SUPERSONIC, PSYCHIC_M, TOXIC
	db -1 ; end

	next_list_item ; BUG_CATCHER (19)
	db "WAYNE@", TRAINERTYPE_NORMAL
	db 8
	dw LEDYBA
	db 10
	dw PARAS
	db -1 ; end

	end_list_items

FisherGroup:
	next_list_item ; FISHER (1)
	db "JUSTIN@", TRAINERTYPE_NORMAL
	db 5
	dw MAGIKARP
	db 5
	dw MAGIKARP
	db 15
	dw MAGIKARP
	db 5
	dw MAGIKARP
	db -1 ; end

	next_list_item ; FISHER (2)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 10
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (3)
	db "ARNOLD@", TRAINERTYPE_NORMAL
	db 34
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; FISHER (4)
	db "KYLE@", TRAINERTYPE_NORMAL
	db 28
	dw SEAKING
	db 31
	dw POLIWHIRL
	db 31
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (5)
	db "HENRY@", TRAINERTYPE_NORMAL
	db 8
	dw POLIWAG
	db 8
	dw POLIWAG
	db -1 ; end

	next_list_item ; FISHER (6)
	db "MARVIN@", TRAINERTYPE_NORMAL
	db 10
	dw MAGIKARP
	db 10
	dw GYARADOS
	db 15
	dw MAGIKARP
	db 15
	dw GYARADOS
	db -1 ; end

	next_list_item ; FISHER (7)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 18
	dw QWILFISH
	db -1 ; end

	next_list_item ; FISHER (8)
	db "ANDRE@", TRAINERTYPE_NORMAL
	db 27
	dw GYARADOS
	db -1 ; end

	next_list_item ; FISHER (9)
	db "RAYMOND@", TRAINERTYPE_NORMAL
	db 22
	dw MAGIKARP
	db 22
	dw MAGIKARP
	db 22
	dw MAGIKARP
	db 22
	dw MAGIKARP
	db -1 ; end

	next_list_item ; FISHER (10)
	db "WILTON@", TRAINERTYPE_NORMAL
	db 23
	dw GOLDEEN
	db 23
	dw GOLDEEN
	db 25
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (11)
	db "EDGAR@", TRAINERTYPE_MOVES
	db 25
	dw REMORAID
	db LOCK_ON, PSYBEAM, AURORA_BEAM, BUBBLEBEAM
	db 25
	dw REMORAID
	db LOCK_ON, PSYBEAM, AURORA_BEAM, BUBBLEBEAM
	db -1 ; end

	next_list_item ; FISHER (12)
	db "JONAH@", TRAINERTYPE_NORMAL
	db 25
	dw SHELLDER
	db 29
	dw OCTILLERY
	db 25
	dw REMORAID
	db 29
	dw CLOYSTER
	db -1 ; end

	next_list_item ; FISHER (13)
	db "MARTIN@", TRAINERTYPE_NORMAL
	db 32
	dw REMORAID
	db 32
	dw REMORAID
	db -1 ; end

	next_list_item ; FISHER (14)
	db "STEPHEN@", TRAINERTYPE_NORMAL
	db 25
	dw MAGIKARP
	db 25
	dw MAGIKARP
	db 31
	dw QWILFISH
	db 31
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; FISHER (15)
	db "BARNEY@", TRAINERTYPE_NORMAL
	db 30
	dw GYARADOS
	db 30
	dw GYARADOS
	db 30
	dw GYARADOS
	db -1 ; end

	next_list_item ; FISHER (16)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 17
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (17)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 17
	dw QWILFISH
	db 19
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (18)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 23
	dw QWILFISH
	db -1 ; end

	next_list_item ; FISHER (19)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 32
	dw GOLDEEN
	db 32
	dw GOLDEEN
	db 32
	dw QWILFISH
	db -1 ; end

	next_list_item ; FISHER (20)
	db "WILTON@", TRAINERTYPE_NORMAL
	db 29
	dw GOLDEEN
	db 29
	dw GOLDEEN
	db 32
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (21)
	db "SCOTT@", TRAINERTYPE_NORMAL
	db 30
	dw QWILFISH
	db 30
	dw QWILFISH
	db 34
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (22)
	db "WILTON@", TRAINERTYPE_MOVES
	db 34
	dw SEAKING
	db SUPERSONIC, WATERFALL, FLAIL, FURY_ATTACK
	db 34
	dw SEAKING
	db SUPERSONIC, WATERFALL, FLAIL, FURY_ATTACK
	db 38
	dw REMORAID
	db PSYBEAM, AURORA_BEAM, BUBBLEBEAM, HYPER_BEAM
	db -1 ; end

	next_list_item ; FISHER (23)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 30
	dw QWILFISH
	db 32
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (24)
	db "RALPH@", TRAINERTYPE_MOVES
	db 35
	dw QWILFISH
	db TOXIC, MINIMIZE, SURF, PIN_MISSILE
	db 39
	dw SEAKING
	db ENDURE, FLAIL, FURY_ATTACK, WATERFALL
	db -1 ; end

	next_list_item ; FISHER (25)
	db "TULLY@", TRAINERTYPE_MOVES
	db 34
	dw SEAKING
	db SUPERSONIC, RAIN_DANCE, WATERFALL, FURY_ATTACK
	db 34
	dw SEAKING
	db SUPERSONIC, RAIN_DANCE, WATERFALL, FURY_ATTACK
	db 37
	dw QWILFISH
	db ROLLOUT, SURF, PIN_MISSILE, TAKE_DOWN
	db -1 ; end

	end_list_items

SwimmerMGroup:
	next_list_item ; SWIMMERM (1)
	db "HAROLD@", TRAINERTYPE_NORMAL
	db 32
	dw REMORAID
	db 30
	dw SEADRA
	db -1 ; end

	next_list_item ; SWIMMERM (2)
	db "SIMON@", TRAINERTYPE_NORMAL
	db 20
	dw TENTACOOL
	db 20
	dw TENTACOOL
	db -1 ; end

	next_list_item ; SWIMMERM (3)
	db "RANDALL@", TRAINERTYPE_NORMAL
	db 18
	dw SHELLDER
	db 20
	dw WARTORTLE
	db 18
	dw SHELLDER
	db -1 ; end

	next_list_item ; SWIMMERM (4)
	db "CHARLIE@", TRAINERTYPE_NORMAL
	db 21
	dw SHELLDER
	db 19
	dw TENTACOOL
	db 19
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; SWIMMERM (5)
	db "GEORGE@", TRAINERTYPE_NORMAL
	db 16
	dw TENTACOOL
	db 17
	dw TENTACOOL
	db 16
	dw TENTACOOL
	db 19
	dw STARYU
	db 17
	dw TENTACOOL
	db 19
	dw REMORAID
	db -1 ; end

	next_list_item ; SWIMMERM (6)
	db "BERKE@", TRAINERTYPE_NORMAL
	db 23
	dw QWILFISH
	db -1 ; end

	next_list_item ; SWIMMERM (7)
	db "KIRK@", TRAINERTYPE_NORMAL
	db 20
	dw GYARADOS
	db 20
	dw GYARADOS
	db -1 ; end

	next_list_item ; SWIMMERM (8)
	db "MATHEW@", TRAINERTYPE_NORMAL
	db 23
	dw KRABBY
	db -1 ; end

	next_list_item ; SWIMMERM (9)
	db "HAL@", TRAINERTYPE_NORMAL
	db 24
	dw SEEL
	db 25
	dw DEWGONG
	db 24
	dw SEEL
	db -1 ; end

	next_list_item ; SWIMMERM (10)
	db "PATON@", TRAINERTYPE_NORMAL
	db 26
	dw PILOSWINE
	db 26
	dw PILOSWINE
	db -1 ; end

	next_list_item ; SWIMMERM (11)
	db "DARYL@", TRAINERTYPE_NORMAL
	db 24
	dw SHELLDER
	db 25
	dw CLOYSTER
	db 24
	dw SHELLDER
	db -1 ; end

	next_list_item ; SWIMMERM (12)
	db "WALTER@", TRAINERTYPE_NORMAL
	db 15
	dw HORSEA
	db 15
	dw HORSEA
	db 20
	dw SEADRA
	db -1 ; end

	next_list_item ; SWIMMERM (13)
	db "TONY@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (14)
	db "JEROME@", TRAINERTYPE_NORMAL
	db 26
	dw SEADRA
	db 28
	dw TENTACOOL
	db 30
	dw TENTACRUEL
	db 28
	dw GOLDEEN
	db -1 ; end

	next_list_item ; SWIMMERM (15)
	db "TUCKER@", TRAINERTYPE_NORMAL
	db 30
	dw SHELLDER
	db 34
	dw CLOYSTER
	db -1 ; end

	next_list_item ; SWIMMERM (16)
	db "RICK@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (17)
	db "CAMERON@", TRAINERTYPE_NORMAL
	db 34
	dw MARILL
	db -1 ; end

	next_list_item ; SWIMMERM (18)
	db "SETH@", TRAINERTYPE_NORMAL
	db 29
	dw QUAGSIRE
	db 29
	dw OCTILLERY
	db 32
	dw QUAGSIRE
	db -1 ; end

	next_list_item ; SWIMMERM (19)
	db "JAMES@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (20)
	db "LEWIS@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (21)
	db "PARKER@", TRAINERTYPE_NORMAL
	db 32
	dw HORSEA
	db 32
	dw HORSEA
	db 35
	dw SEADRA
	db -1 ; end

	end_list_items

SwimmerFGroup:
	next_list_item ; SWIMMERF (1)
	db "ELAINE@", TRAINERTYPE_NORMAL
	db 21
	dw STARYU
	db -1 ; end

	next_list_item ; SWIMMERF (2)
	db "PAULA@", TRAINERTYPE_NORMAL
	db 19
	dw STARYU
	db 19
	dw SHELLDER
	db -1 ; end

	next_list_item ; SWIMMERF (3)
	db "KAYLEE@", TRAINERTYPE_NORMAL
	db 18
	dw GOLDEEN
	db 20
	dw GOLDEEN
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (4)
	db "SUSIE@", TRAINERTYPE_MOVES
	db 20
	dw PSYDUCK
	db SCRATCH, TAIL_WHIP, DISABLE, CONFUSION
	db 22
	dw GOLDEEN
	db PECK, TAIL_WHIP, SUPERSONIC, HORN_ATTACK
	db -1 ; end

	next_list_item ; SWIMMERF (5)
	db "DENISE@", TRAINERTYPE_NORMAL
	db 22
	dw SEEL
	db -1 ; end

	next_list_item ; SWIMMERF (6)
	db "KARA@", TRAINERTYPE_NORMAL
	db 20
	dw STARYU
	db 20
	dw STARMIE
	db -1 ; end

	next_list_item ; SWIMMERF (7)
	db "WENDY@", TRAINERTYPE_MOVES
	db 21
	dw HORSEA
	db BUBBLE, SMOKESCREEN, LEER, WATER_GUN
	db 21
	dw HORSEA
	db DRAGON_RAGE, SMOKESCREEN, LEER, WATER_GUN
	db -1 ; end

	next_list_item ; SWIMMERF (8)
	db "LISA@", TRAINERTYPE_NORMAL
	db 28
	dw JYNX
	db -1 ; end

	next_list_item ; SWIMMERF (9)
	db "JILL@", TRAINERTYPE_NORMAL
	db 28
	dw DEWGONG
	db -1 ; end

	next_list_item ; SWIMMERF (10)
	db "MARY@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (11)
	db "KATIE@", TRAINERTYPE_NORMAL
	db 33
	dw DEWGONG
	db -1 ; end

	next_list_item ; SWIMMERF (12)
	db "DAWN@", TRAINERTYPE_NORMAL
	db 34
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (13)
	db "TARA@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (14)
	db "NICOLE@", TRAINERTYPE_NORMAL
	db 29
	dw MARILL
	db 29
	dw MARILL
	db 32
	dw LAPRAS
	db -1 ; end

	next_list_item ; SWIMMERF (15)
	db "LORI@", TRAINERTYPE_NORMAL
	db 32
	dw STARMIE
	db 32
	dw STARMIE
	db -1 ; end

	next_list_item ; SWIMMERF (16)
	db "JODY@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (17)
	db "NIKKI@", TRAINERTYPE_NORMAL
	db 28
	dw SEEL
	db 28
	dw SEEL
	db 28
	dw SEEL
	db 28
	dw DEWGONG
	db -1 ; end

	next_list_item ; SWIMMERF (18)
	db "DIANA@", TRAINERTYPE_NORMAL
	db 37
	dw GOLDUCK
	db -1 ; end

	next_list_item ; SWIMMERF (19)
	db "BRIANA@", TRAINERTYPE_NORMAL
	db 35
	dw SEAKING
	db 35
	dw SEAKING
	db -1 ; end

	end_list_items

SailorGroup:
	next_list_item ; SAILOR (1)
	db "EUGENE@", TRAINERTYPE_NORMAL
	db 17
	dw POLIWHIRL
	db 17
	dw RATICATE
	db 19
	dw KRABBY
	db -1 ; end

	next_list_item ; SAILOR (2)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 18
	dw POLIWAG
	db 18
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; SAILOR (3)
	db "TERRELL@", TRAINERTYPE_NORMAL
	db 20
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; SAILOR (4)
	db "KENT@", TRAINERTYPE_MOVES
	db 18
	dw KRABBY
	db BUBBLE, LEER, VICEGRIP, HARDEN
	db 20
	dw KRABBY
	db BUBBLEBEAM, LEER, VICEGRIP, HARDEN
	db -1 ; end

	next_list_item ; SAILOR (5)
	db "ERNEST@", TRAINERTYPE_NORMAL
	db 18
	dw MACHOP
	db 18
	dw MACHOP
	db 18
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; SAILOR (6)
	db "JEFF@", TRAINERTYPE_NORMAL
	db 32
	dw RATICATE
	db 32
	dw RATICATE
	db -1 ; end

	next_list_item ; SAILOR (7)
	db "GARRETT@", TRAINERTYPE_NORMAL
	db 34
	dw KINGLER
	db -1 ; end

	next_list_item ; SAILOR (8)
	db "KENNETH@", TRAINERTYPE_NORMAL
	db 28
	dw MACHOP
	db 28
	dw MACHOP
	db 28
	dw POLIWRATH
	db 28
	dw MACHOP
	db -1 ; end

	next_list_item ; SAILOR (9)
	db "STANLY@", TRAINERTYPE_NORMAL
	db 31
	dw MACHOP
	db 33
	dw MACHOKE
	db 26
	dw PSYDUCK
	db -1 ; end

	next_list_item ; SAILOR (10)
	db "HARRY@", TRAINERTYPE_NORMAL
	db 19
	dw WOOPER
	db -1 ; end

	next_list_item ; SAILOR (11)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 28
	dw POLIWHIRL
	db 28
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; SAILOR (12)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 34
	dw POLIWHIRL
	db 34
	dw POLIWRATH
	db -1 ; end

	next_list_item ; SAILOR (13)
	db "HUEY@", TRAINERTYPE_MOVES
	db 38
	dw POLITOED
	db WHIRLPOOL, RAIN_DANCE, BODY_SLAM, PERISH_SONG
	db 38
	dw POLIWRATH
	db SURF, STRENGTH, ICE_PUNCH, SUBMISSION
	db -1 ; end

	end_list_items

SuperNerdGroup:
	next_list_item ; SUPER_NERD (1)
	db "STAN@", TRAINERTYPE_NORMAL
	db 20
	dw GRIMER
	db -1 ; end

	next_list_item ; SUPER_NERD (2)
	db "ERIC@", TRAINERTYPE_NORMAL
	db 11
	dw GRIMER
	db 11
	dw GRIMER
	db -1 ; end

	next_list_item ; SUPER_NERD (3)
	db "GREGG@", TRAINERTYPE_NORMAL
	db 20
	dw MAGNEMITE
	db 20
	dw MAGNEMITE
	db 20
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (4)
	db "JAY@", TRAINERTYPE_NORMAL
	db 22
	dw KOFFING
	db 22
	dw KOFFING
	db -1 ; end

	next_list_item ; SUPER_NERD (5)
	db "DAVE@", TRAINERTYPE_NORMAL
	db 24
	dw DITTO
	db -1 ; end

	next_list_item ; SUPER_NERD (6)
	db "SAM@", TRAINERTYPE_NORMAL
	db 34
	dw GRIMER
	db 34
	dw MUK
	db -1 ; end

	next_list_item ; SUPER_NERD (7)
	db "TOM@", TRAINERTYPE_NORMAL
	db 32
	dw MAGNEMITE
	db 32
	dw MAGNEMITE
	db 32
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (8)
	db "PAT@", TRAINERTYPE_NORMAL
	db 36
	dw PORYGON
	db -1 ; end

	next_list_item ; SUPER_NERD (9)
	db "SHAWN@", TRAINERTYPE_NORMAL
	db 31
	dw MAGNEMITE
	db 33
	dw MUK
	db 31
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (10)
	db "TERU@", TRAINERTYPE_NORMAL
	db 7
	dw MAGNEMITE
	db 11
	dw VOLTORB
	db 7
	dw MAGNEMITE
	db 9
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (11)
	db "RUSS@", TRAINERTYPE_NORMAL
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (12)
	db "NORTON@", TRAINERTYPE_MOVES
	db 30
	dw PORYGON
	db CONVERSION, CONVERSION2, RECOVER, TRI_ATTACK
	db -1 ; end

	next_list_item ; SUPER_NERD (13)
	db "HUGH@", TRAINERTYPE_MOVES
	db 39
	dw SEADRA
	db SMOKESCREEN, TWISTER, SURF, WATERFALL
	db -1 ; end

	next_list_item ; SUPER_NERD (14)
	db "MARKUS@", TRAINERTYPE_MOVES
	db 19
	dw SLOWPOKE
	db CURSE, WATER_GUN, GROWL, STRENGTH
	db -1 ; end

	end_list_items

Rival2Group:
	next_list_item ; RIVAL2 (1)
	db "?@", TRAINERTYPE_MOVES
	db 41
	dw SNEASEL
	db QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 42
	dw GOLBAT
	db LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 41
	dw MAGNETON
	db THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 43
	dw GENGAR
	db MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 43
	dw ALAKAZAM
	db DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 45
	dw MEGANIUM
	db RAZOR_LEAF, POISONPOWDER, BODY_SLAM, LIGHT_SCREEN
	db -1 ; end

	next_list_item ; RIVAL2 (2)
	db "?@", TRAINERTYPE_MOVES
	db 41
	dw SNEASEL
	db QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 42
	dw GOLBAT
	db LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 41
	dw MAGNETON
	db THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 43
	dw GENGAR
	db MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 43
	dw ALAKAZAM
	db DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 45
	dw TYPHLOSION
	db SMOKESCREEN, QUICK_ATTACK, FLAME_WHEEL, SWIFT
	db -1 ; end

	next_list_item ; RIVAL2 (3)
	db "?@", TRAINERTYPE_MOVES
	db 41
	dw SNEASEL
	db QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 42
	dw GOLBAT
	db LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 41
	dw MAGNETON
	db THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 43
	dw GENGAR
	db MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 43
	dw ALAKAZAM
	db DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 45
	dw FERALIGATR
	db RAGE, WATER_GUN, SCARY_FACE, SLASH
	db -1 ; end

	next_list_item ; RIVAL2 (4)
	db "?@", TRAINERTYPE_MOVES
	db 45
	dw SNEASEL
	db QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 48
	dw CROBAT
	db TOXIC, BITE, CONFUSE_RAY, WING_ATTACK
	db 45
	dw MAGNETON
	db THUNDER, SONICBOOM, THUNDER_WAVE, SWIFT
	db 46
	dw GENGAR
	db MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 46
	dw ALAKAZAM
	db RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 50
	dw MEGANIUM
	db GIGA_DRAIN, BODY_SLAM, LIGHT_SCREEN, SAFEGUARD
	db -1 ; end

	next_list_item ; RIVAL2 (5)
	db "?@", TRAINERTYPE_MOVES
	db 45
	dw SNEASEL
	db QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 48
	dw CROBAT
	db TOXIC, BITE, CONFUSE_RAY, WING_ATTACK
	db 45
	dw MAGNETON
	db THUNDER, SONICBOOM, THUNDER_WAVE, SWIFT
	db 46
	dw GENGAR
	db MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 46
	dw ALAKAZAM
	db RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 50
	dw TYPHLOSION
	db SMOKESCREEN, QUICK_ATTACK, FIRE_BLAST, SWIFT
	db -1 ; end

	next_list_item ; RIVAL2 (6)
	db "?@", TRAINERTYPE_MOVES
	db 45
	dw SNEASEL
	db QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 48
	dw CROBAT
	db TOXIC, BITE, CONFUSE_RAY, WING_ATTACK
	db 45
	dw MAGNETON
	db THUNDER, SONICBOOM, THUNDER_WAVE, SWIFT
	db 46
	dw GENGAR
	db MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 46
	dw ALAKAZAM
	db RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 50
	dw FERALIGATR
	db SURF, RAIN_DANCE, SLASH, SCREECH
	db -1 ; end

	end_list_items

GuitaristGroup:
	next_list_item ; GUITARIST (1)
	db "CLYDE@", TRAINERTYPE_NORMAL
	db 34
	dw ELECTABUZZ
	db -1 ; end

	next_list_item ; GUITARIST (2)
	db "VINCENT@", TRAINERTYPE_NORMAL
	db 27
	dw MAGNEMITE
	db 33
	dw VOLTORB
	db 32
	dw MAGNEMITE
	db 32
	dw MAGNEMITE
	db -1 ; end

	end_list_items

HikerGroup:
	next_list_item ; HIKER (1)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 16
	dw GEODUDE
	db 18
	dw MACHAMP
	db -1 ; end

	next_list_item ; HIKER (2)
	db "RUSSELL@", TRAINERTYPE_NORMAL
	db 4
	dw GEODUDE
	db 6
	dw GEODUDE
	db 8
	dw GEODUDE
	db -1 ; end

	next_list_item ; HIKER (3)
	db "PHILLIP@", TRAINERTYPE_NORMAL
	db 23
	dw GEODUDE
	db 23
	dw GEODUDE
	db 23
	dw GRAVELER
	db -1 ; end

	next_list_item ; HIKER (4)
	db "LEONARD@", TRAINERTYPE_NORMAL
	db 23
	dw GEODUDE
	db 25
	dw MACHOP
	db -1 ; end

	next_list_item ; HIKER (5)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 11
	dw GEODUDE
	db 11
	dw MACHOP
	db -1 ; end

	next_list_item ; HIKER (6)
	db "BENJAMIN@", TRAINERTYPE_NORMAL
	db 14
	dw DIGLETT
	db 14
	dw GEODUDE
	db 16
	dw DUGTRIO
	db -1 ; end

	next_list_item ; HIKER (7)
	db "ERIK@", TRAINERTYPE_NORMAL
	db 24
	dw MACHOP
	db 27
	dw GRAVELER
	db 27
	dw MACHOP
	db -1 ; end

	next_list_item ; HIKER (8)
	db "MICHAEL@", TRAINERTYPE_NORMAL
	db 25
	dw GEODUDE
	db 25
	dw GRAVELER
	db 25
	dw GOLEM
	db -1 ; end

	next_list_item ; HIKER (9)
	db "PARRY@", TRAINERTYPE_NORMAL
	db 35
	dw ONIX
	db 33
	dw SWINUB
	db -1 ; end

	next_list_item ; HIKER (10)
	db "TIMOTHY@", TRAINERTYPE_MOVES
	db 27
	dw DIGLETT
	db MAGNITUDE, DIG, SAND_ATTACK, SLASH
	db 27
	dw DUGTRIO
	db MAGNITUDE, DIG, SAND_ATTACK, SLASH
	db -1 ; end

	next_list_item ; HIKER (11)
	db "BAILEY@", TRAINERTYPE_NORMAL
	db 13
	dw GEODUDE
	db 13
	dw GEODUDE
	db 13
	dw GEODUDE
	db 13
	dw GEODUDE
	db 13
	dw GEODUDE
	db -1 ; end

	next_list_item ; HIKER (12)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 25
	dw GRAVELER
	db 27
	dw GRAVELER
	db 29
	dw MACHOKE
	db -1 ; end

	next_list_item ; HIKER (13)
	db "TIM@", TRAINERTYPE_NORMAL
	db 31
	dw GRAVELER
	db 31
	dw GRAVELER
	db 31
	dw GRAVELER
	db -1 ; end

	next_list_item ; HIKER (14)
	db "NOLAND@", TRAINERTYPE_NORMAL
	db 31
	dw SANDSLASH
	db 33
	dw GOLEM
	db -1 ; end

	next_list_item ; HIKER (15)
	db "SIDNEY@", TRAINERTYPE_NORMAL
	db 34
	dw DUGTRIO
	db 32
	dw ONIX
	db -1 ; end

	next_list_item ; HIKER (16)
	db "KENNY@", TRAINERTYPE_NORMAL
	db 27
	dw SANDSLASH
	db 29
	dw GRAVELER
	db 31
	dw GOLEM
	db 29
	dw GRAVELER
	db -1 ; end

	next_list_item ; HIKER (17)
	db "JIM@", TRAINERTYPE_NORMAL
	db 35
	dw MACHAMP
	db -1 ; end

	next_list_item ; HIKER (18)
	db "DANIEL@", TRAINERTYPE_NORMAL
	db 11
	dw ONIX
	db -1 ; end

	next_list_item ; HIKER (19)
	db "PARRY@", TRAINERTYPE_MOVES
	db 35
	dw PILOSWINE
	db EARTHQUAKE, BLIZZARD, REST, TAKE_DOWN
	db 35
	dw DUGTRIO
	db MAGNITUDE, DIG, MUD_SLAP, SLASH
	db 38
	dw STEELIX
	db DIG, IRON_TAIL, SANDSTORM, SLAM
	db -1 ; end

	next_list_item ; HIKER (20)
	db "PARRY@", TRAINERTYPE_NORMAL
	db 29
	dw ONIX
	db -1 ; end

	next_list_item ; HIKER (21)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 30
	dw GRAVELER
	db 30
	dw GRAVELER
	db 32
	dw MACHOKE
	db -1 ; end

	next_list_item ; HIKER (22)
	db "ANTHONY@", TRAINERTYPE_MOVES
	db 34
	dw GRAVELER
	db MAGNITUDE, SELFDESTRUCT, DEFENSE_CURL, ROLLOUT
	db 36
	dw GOLEM
	db MAGNITUDE, SELFDESTRUCT, DEFENSE_CURL, ROLLOUT
	db 34
	dw MACHOKE
	db KARATE_CHOP, VITAL_THROW, HEADBUTT, DIG
	db -1 ; end

	end_list_items

BikerGroup:
	next_list_item ; BIKER (1)
	db "BENNY@", TRAINERTYPE_NORMAL
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (2)
	db "KAZU@", TRAINERTYPE_NORMAL
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (3)
	db "DWAYNE@", TRAINERTYPE_NORMAL
	db 27
	dw KOFFING
	db 28
	dw KOFFING
	db 29
	dw KOFFING
	db 30
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (4)
	db "HARRIS@", TRAINERTYPE_NORMAL
	db 34
	dw FLAREON
	db -1 ; end

	next_list_item ; BIKER (5)
	db "ZEKE@", TRAINERTYPE_NORMAL
	db 32
	dw KOFFING
	db 32
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (6)
	db "CHARLES@", TRAINERTYPE_NORMAL
	db 30
	dw KOFFING
	db 30
	dw CHARMELEON
	db 30
	dw WEEZING
	db -1 ; end

	next_list_item ; BIKER (7)
	db "RILEY@", TRAINERTYPE_NORMAL
	db 34
	dw WEEZING
	db -1 ; end

	next_list_item ; BIKER (8)
	db "JOEL@", TRAINERTYPE_NORMAL
	db 32
	dw MAGMAR
	db 32
	dw MAGMAR
	db -1 ; end

	next_list_item ; BIKER (9)
	db "GLENN@", TRAINERTYPE_NORMAL
	db 28
	dw KOFFING
	db 30
	dw MAGMAR
	db 32
	dw WEEZING
	db -1 ; end

	end_list_items

BlaineGroup:
	next_list_item ; BLAINE (1)
	db "BLAINE@", TRAINERTYPE_MOVES
	db 45
	dw MAGCARGO
	db CURSE, SMOG, FLAMETHROWER, ROCK_SLIDE
	db 45
	dw MAGMAR
	db THUNDERPUNCH, FIRE_PUNCH, SUNNY_DAY, CONFUSE_RAY
	db 50
	dw RAPIDASH
	db QUICK_ATTACK, FIRE_SPIN, FURY_ATTACK, FIRE_BLAST
	db -1 ; end

	end_list_items

BurglarGroup:
	next_list_item ; BURGLAR (1)
	db "DUNCAN@", TRAINERTYPE_NORMAL
	db 23
	dw KOFFING
	db 25
	dw MAGMAR
	db 23
	dw KOFFING
	db -1 ; end

	next_list_item ; BURGLAR (2)
	db "EDDIE@", TRAINERTYPE_MOVES
	db 26
	dw GROWLITHE
	db ROAR, EMBER, LEER, TAKE_DOWN
	db 24
	dw KOFFING
	db TACKLE, SMOG, SLUDGE, SMOKESCREEN
	db -1 ; end

	next_list_item ; BURGLAR (3)
	db "COREY@", TRAINERTYPE_NORMAL
	db 25
	dw KOFFING
	db 28
	dw MAGMAR
	db 25
	dw KOFFING
	db 30
	dw KOFFING
	db -1 ; end

	end_list_items

FirebreatherGroup:
	next_list_item ; FIREBREATHER (1)
	db "OTIS@", TRAINERTYPE_NORMAL
	db 29
	dw MAGMAR
	db 32
	dw WEEZING
	db 29
	dw MAGMAR
	db -1 ; end

	next_list_item ; FIREBREATHER (2)
	db "DICK@", TRAINERTYPE_NORMAL
	db 17
	dw CHARMELEON
	db -1 ; end

	next_list_item ; FIREBREATHER (3)
	db "NED@", TRAINERTYPE_NORMAL
	db 15
	dw KOFFING
	db 16
	dw GROWLITHE
	db 15
	dw KOFFING
	db -1 ; end

	next_list_item ; FIREBREATHER (4)
	db "BURT@", TRAINERTYPE_NORMAL
	db 32
	dw KOFFING
	db 32
	dw SLUGMA
	db -1 ; end

	next_list_item ; FIREBREATHER (5)
	db "BILL@", TRAINERTYPE_NORMAL
	db 6
	dw KOFFING
	db 6
	dw KOFFING
	db -1 ; end

	next_list_item ; FIREBREATHER (6)
	db "WALT@", TRAINERTYPE_NORMAL
	db 11
	dw MAGMAR
	db 13
	dw MAGMAR
	db -1 ; end

	next_list_item ; FIREBREATHER (7)
	db "RAY@", TRAINERTYPE_NORMAL
	db 9
	dw VULPIX
	db -1 ; end

	next_list_item ; FIREBREATHER (8)
	db "LYLE@", TRAINERTYPE_NORMAL
	db 28
	dw KOFFING
	db 31
	dw FLAREON
	db 28
	dw KOFFING
	db -1 ; end

	end_list_items

JugglerGroup:
	next_list_item ; JUGGLER (1)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 2
	dw VOLTORB
	db 6
	dw VOLTORB
	db 10
	dw VOLTORB
	db 14
	dw VOLTORB
	db -1 ; end

	next_list_item ; JUGGLER (2)
	db "FRITZ@", TRAINERTYPE_NORMAL
	db 29
	dw MR__MIME
	db 29
	dw MAGMAR
	db 29
	dw MACHOKE
	db -1 ; end

	next_list_item ; JUGGLER (3)
	db "HORTON@", TRAINERTYPE_NORMAL
	db 33
	dw ELECTRODE
	db 33
	dw ELECTRODE
	db 33
	dw ELECTRODE
	db 33
	dw ELECTRODE
	db -1 ; end

	next_list_item ; JUGGLER (4)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 6
	dw VOLTORB
	db 10
	dw VOLTORB
	db 14
	dw VOLTORB
	db 18
	dw VOLTORB
	db -1 ; end

	next_list_item ; JUGGLER (5)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 18
	dw VOLTORB
	db 22
	dw VOLTORB
	db 26
	dw VOLTORB
	db 30
	dw ELECTRODE
	db -1 ; end

	next_list_item ; JUGGLER (6)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 18
	dw VOLTORB
	db 22
	dw VOLTORB
	db 26
	dw VOLTORB
	db 30
	dw ELECTRODE
	db -1 ; end

	end_list_items

BlackbeltGroup:
	next_list_item ; BLACKBELT_T (1)
	db "KENJI@", TRAINERTYPE_NORMAL
	db 27
	dw ONIX
	db 30
	dw HITMONLEE
	db 27
	dw ONIX
	db 32
	dw MACHOKE
	db -1 ; end

	next_list_item ; BLACKBELT_T (2)
	db "YOSHI@", TRAINERTYPE_MOVES
	db 27
	dw HITMONLEE
	db DOUBLE_KICK, MEDITATE, JUMP_KICK, FOCUS_ENERGY
	db -1 ; end

	next_list_item ; BLACKBELT_T (3)
	db "KENJI@", TRAINERTYPE_MOVES
	db 33
	dw ONIX
	db BIND, ROCK_THROW, TOXIC, DIG
	db 38
	dw MACHAMP
	db HEADBUTT, SWAGGER, THUNDERPUNCH, VITAL_THROW
	db 33
	dw STEELIX
	db EARTHQUAKE, ROCK_THROW, IRON_TAIL, SANDSTORM
	db 36
	dw HITMONLEE
	db DOUBLE_TEAM, HI_JUMP_KICK, MUD_SLAP, SWIFT
	db -1 ; end

	next_list_item ; BLACKBELT_T (4)
	db "LAO@", TRAINERTYPE_MOVES
	db 27
	dw HITMONCHAN
	db COMET_PUNCH, THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH
	db -1 ; end

	next_list_item ; BLACKBELT_T (5)
	db "NOB@", TRAINERTYPE_MOVES
	db 25
	dw MACHOP
	db LEER, FOCUS_ENERGY, KARATE_CHOP, SEISMIC_TOSS
	db 25
	dw MACHOKE
	db LEER, KARATE_CHOP, SEISMIC_TOSS, ROCK_SLIDE
	db -1 ; end

	next_list_item ; BLACKBELT_T (6)
	db "KIYO@", TRAINERTYPE_NORMAL
	db 34
	dw HITMONLEE
	db 34
	dw HITMONCHAN
	db -1 ; end

	next_list_item ; BLACKBELT_T (7)
	db "LUNG@", TRAINERTYPE_NORMAL
	db 23
	dw MANKEY
	db 23
	dw MANKEY
	db 25
	dw PRIMEAPE
	db -1 ; end

	next_list_item ; BLACKBELT_T (8)
	db "KENJI@", TRAINERTYPE_NORMAL
	db 28
	dw MACHOKE
	db -1 ; end

	next_list_item ; BLACKBELT_T (9)
	db "WAI@", TRAINERTYPE_NORMAL
	db 30
	dw MACHOKE
	db 32
	dw MACHOKE
	db 34
	dw MACHOKE
	db -1 ; end

	end_list_items

ExecutiveMGroup:
	next_list_item ; EXECUTIVEM (1)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 33
	dw HOUNDOUR
	db EMBER, ROAR, BITE, FAINT_ATTACK
	db 33
	dw KOFFING
	db TACKLE, SLUDGE, SMOKESCREEN, HAZE
	db 35
	dw HOUNDOOM
	db EMBER, SMOG, BITE, FAINT_ATTACK
	db -1 ; end

	next_list_item ; EXECUTIVEM (2)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 36
	dw GOLBAT
	db LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db -1 ; end

	next_list_item ; EXECUTIVEM (3)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 30
	dw KOFFING
	db TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	db TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	db TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 32
	dw WEEZING
	db TACKLE, EXPLOSION, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	db TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	db TACKLE, SMOG, SLUDGE, SMOKESCREEN
	db -1 ; end

	next_list_item ; EXECUTIVEM (4)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 22
	dw ZUBAT
	db 24
	dw RATICATE
	db 22
	dw KOFFING
	db -1 ; end

	end_list_items

PsychicGroup:
	next_list_item ; PSYCHIC_T (1)
	db "NATHAN@", TRAINERTYPE_NORMAL
	db 26
	dw GIRAFARIG
	db -1 ; end

	next_list_item ; PSYCHIC_T (2)
	db "FRANKLIN@", TRAINERTYPE_NORMAL
	db 37
	dw KADABRA
	db -1 ; end

	next_list_item ; PSYCHIC_T (3)
	db "HERMAN@", TRAINERTYPE_NORMAL
	db 30
	dw EXEGGCUTE
	db 30
	dw EXEGGCUTE
	db 30
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; PSYCHIC_T (4)
	db "FIDEL@", TRAINERTYPE_NORMAL
	db 34
	dw XATU
	db -1 ; end

	next_list_item ; PSYCHIC_T (5)
	db "GREG@", TRAINERTYPE_MOVES
	db 17
	dw DROWZEE
	db HYPNOSIS, DISABLE, DREAM_EATER, NO_MOVE
	db -1 ; end

	next_list_item ; PSYCHIC_T (6)
	db "NORMAN@", TRAINERTYPE_MOVES
	db 17
	dw SLOWPOKE
	db TACKLE, GROWL, WATER_GUN, NO_MOVE
	db 20
	dw SLOWPOKE
	db CURSE, BODY_SLAM, WATER_GUN, CONFUSION
	db -1 ; end

	next_list_item ; PSYCHIC_T (7)
	db "MARK@", TRAINERTYPE_MOVES
	db 13
	dw ABRA
	db TELEPORT, FLASH, NO_MOVE, NO_MOVE
	db 13
	dw ABRA
	db TELEPORT, FLASH, NO_MOVE, NO_MOVE
	db 15
	dw KADABRA
	db TELEPORT, KINESIS, CONFUSION, NO_MOVE
	db -1 ; end

	next_list_item ; PSYCHIC_T (8)
	db "PHIL@", TRAINERTYPE_MOVES
	db 24
	dw NATU
	db LEER, NIGHT_SHADE, FUTURE_SIGHT, CONFUSE_RAY
	db 26
	dw KADABRA
	db DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	db -1 ; end

	next_list_item ; PSYCHIC_T (9)
	db "RICHARD@", TRAINERTYPE_NORMAL
	db 36
	dw ESPEON
	db -1 ; end

	next_list_item ; PSYCHIC_T (10)
	db "GILBERT@", TRAINERTYPE_NORMAL
	db 30
	dw STARMIE
	db 30
	dw EXEGGCUTE
	db 34
	dw GIRAFARIG
	db -1 ; end

	next_list_item ; PSYCHIC_T (11)
	db "JARED@", TRAINERTYPE_NORMAL
	db 32
	dw MR__MIME
	db 32
	dw EXEGGCUTE
	db 35
	dw EXEGGCUTE
	db -1 ; end

	next_list_item ; PSYCHIC_T (12)
	db "RODNEY@", TRAINERTYPE_NORMAL
	db 29
	dw DROWZEE
	db 33
	dw HYPNO
	db -1 ; end

	end_list_items

PicnickerGroup:
	next_list_item ; PICNICKER (1)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 9
	dw NIDORAN_F
	db -1 ; end

	next_list_item ; PICNICKER (2)
	db "GINA@", TRAINERTYPE_NORMAL
	db 9
	dw HOPPIP
	db 9
	dw HOPPIP
	db 12
	dw BULBASAUR
	db -1 ; end

	next_list_item ; PICNICKER (3)
	db "BROOKE@", TRAINERTYPE_MOVES
	db 16
	dw PIKACHU
	db THUNDERSHOCK, GROWL, QUICK_ATTACK, DOUBLE_TEAM
	db -1 ; end

	next_list_item ; PICNICKER (4)
	db "KIM@", TRAINERTYPE_NORMAL
	db 15
	dw VULPIX
	db -1 ; end

	next_list_item ; PICNICKER (5)
	db "CINDY@", TRAINERTYPE_NORMAL
	db 36
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (6)
	db "HOPE@", TRAINERTYPE_NORMAL
	db 34
	dw FLAAFFY
	db -1 ; end

	next_list_item ; PICNICKER (7)
	db "SHARON@", TRAINERTYPE_NORMAL
	db 31
	dw FURRET
	db 33
	dw RAPIDASH
	db -1 ; end

	next_list_item ; PICNICKER (8)
	db "DEBRA@", TRAINERTYPE_NORMAL
	db 33
	dw SEAKING
	db -1 ; end

	next_list_item ; PICNICKER (9)
	db "GINA@", TRAINERTYPE_NORMAL
	db 14
	dw HOPPIP
	db 14
	dw HOPPIP
	db 17
	dw IVYSAUR
	db -1 ; end

	next_list_item ; PICNICKER (10)
	db "ERIN@", TRAINERTYPE_NORMAL
	db 16
	dw PONYTA
	db 16
	dw PONYTA
	db -1 ; end

	next_list_item ; PICNICKER (11)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 15
	dw WEEPINBELL
	db 15
	dw NIDORINA
	db -1 ; end

	next_list_item ; PICNICKER (12)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 19
	dw WEEPINBELL
	db 19
	dw NIDORINO
	db 21
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (13)
	db "HEIDI@", TRAINERTYPE_NORMAL
	db 32
	dw SKIPLOOM
	db 32
	dw SKIPLOOM
	db -1 ; end

	next_list_item ; PICNICKER (14)
	db "EDNA@", TRAINERTYPE_NORMAL
	db 30
	dw NIDORINA
	db 34
	dw RAICHU
	db -1 ; end

	next_list_item ; PICNICKER (15)
	db "GINA@", TRAINERTYPE_NORMAL
	db 26
	dw SKIPLOOM
	db 26
	dw SKIPLOOM
	db 29
	dw IVYSAUR
	db -1 ; end

	next_list_item ; PICNICKER (16)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 31
	dw CLEFAIRY
	db ENCORE, SING, DOUBLESLAP, MINIMIZE
	db -1 ; end

	next_list_item ; PICNICKER (17)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 37
	dw CLEFAIRY
	db ENCORE, DOUBLESLAP, MINIMIZE, METRONOME
	db -1 ; end

	next_list_item ; PICNICKER (18)
	db "ERIN@", TRAINERTYPE_NORMAL
	db 32
	dw PONYTA
	db 32
	dw PONYTA
	db -1 ; end

	next_list_item ; PICNICKER (19)
	db "TANYA@", TRAINERTYPE_NORMAL
	db 37
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; PICNICKER (20)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 20
	dw CLEFAIRY
	db ENCORE, SING, DOUBLESLAP, MINIMIZE
	db -1 ; end

	next_list_item ; PICNICKER (21)
	db "ERIN@", TRAINERTYPE_MOVES
	db 36
	dw PONYTA
	db DOUBLE_TEAM, STOMP, FIRE_SPIN, SUNNY_DAY
	db 34
	dw RAICHU
	db SWIFT, MUD_SLAP, QUICK_ATTACK, THUNDERBOLT
	db 36
	dw PONYTA
	db DOUBLE_TEAM, STOMP, FIRE_SPIN, SUNNY_DAY
	db -1 ; end

	next_list_item ; PICNICKER (22)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 24
	dw WEEPINBELL
	db 26
	dw NIDORINO
	db 26
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (23)
	db "LIZ@", TRAINERTYPE_MOVES
	db 30
	dw WEEPINBELL
	db SLEEP_POWDER, POISONPOWDER, STUN_SPORE, SLUDGE_BOMB
	db 32
	dw NIDOKING
	db EARTHQUAKE, DOUBLE_KICK, POISON_STING, IRON_TAIL
	db 32
	dw NIDOQUEEN
	db EARTHQUAKE, DOUBLE_KICK, TAIL_WHIP, BODY_SLAM
	db -1 ; end

	next_list_item ; PICNICKER (24)
	db "GINA@", TRAINERTYPE_NORMAL
	db 30
	dw SKIPLOOM
	db 30
	dw SKIPLOOM
	db 32
	dw IVYSAUR
	db -1 ; end

	next_list_item ; PICNICKER (25)
	db "GINA@", TRAINERTYPE_MOVES
	db 33
	dw JUMPLUFF
	db STUN_SPORE, SUNNY_DAY, LEECH_SEED, COTTON_SPORE
	db 33
	dw JUMPLUFF
	db SUNNY_DAY, SLEEP_POWDER, LEECH_SEED, COTTON_SPORE
	db 38
	dw VENUSAUR
	db SOLARBEAM, RAZOR_LEAF, HEADBUTT, MUD_SLAP
	db -1 ; end

	next_list_item ; PICNICKER (26)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 43
	dw CLEFAIRY
	db METRONOME, ENCORE, MOONLIGHT, MINIMIZE
	db -1 ; end

	end_list_items

CamperGroup:
	next_list_item ; CAMPER (1)
	db "ROLAND@", TRAINERTYPE_NORMAL
	db 9
	dw NIDORAN_M
	db -1 ; end

	next_list_item ; CAMPER (2)
	db "TODD@", TRAINERTYPE_NORMAL
	db 14
	dw PSYDUCK
	db -1 ; end

	next_list_item ; CAMPER (3)
	db "IVAN@", TRAINERTYPE_NORMAL
	db 10
	dw DIGLETT
	db 10
	dw ZUBAT
	db 14
	dw DIGLETT
	db -1 ; end

	next_list_item ; CAMPER (4)
	db "ELLIOT@", TRAINERTYPE_NORMAL
	db 13
	dw SANDSHREW
	db 15
	dw MARILL
	db -1 ; end

	next_list_item ; CAMPER (5)
	db "BARRY@", TRAINERTYPE_NORMAL
	db 36
	dw NIDOKING
	db -1 ; end

	next_list_item ; CAMPER (6)
	db "LLOYD@", TRAINERTYPE_NORMAL
	db 34
	dw NIDOKING
	db -1 ; end

	next_list_item ; CAMPER (7)
	db "DEAN@", TRAINERTYPE_NORMAL
	db 33
	dw GOLDUCK
	db 31
	dw SANDSLASH
	db -1 ; end

	next_list_item ; CAMPER (8)
	db "SID@", TRAINERTYPE_NORMAL
	db 32
	dw DUGTRIO
	db 29
	dw PRIMEAPE
	db 29
	dw POLIWRATH
	db -1 ; end

	next_list_item ; CAMPER (9)
	db "HARVEY@", TRAINERTYPE_NORMAL
	db 15
	dw NIDORINO
	db -1 ; end

	next_list_item ; CAMPER (10)
	db "DALE@", TRAINERTYPE_NORMAL
	db 15
	dw NIDORINO
	db -1 ; end

	next_list_item ; CAMPER (11)
	db "TED@", TRAINERTYPE_NORMAL
	db 17
	dw MANKEY
	db -1 ; end

	next_list_item ; CAMPER (12)
	db "TODD@", TRAINERTYPE_NORMAL
	db 17
	dw GEODUDE
	db 17
	dw GEODUDE
	db 23
	dw PSYDUCK
	db -1 ; end

	next_list_item ; CAMPER (13)
	db "TODD@", TRAINERTYPE_NORMAL
	db 23
	dw GEODUDE
	db 23
	dw GEODUDE
	db 26
	dw PSYDUCK
	db -1 ; end

	next_list_item ; CAMPER (14)
	db "THOMAS@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (15)
	db "LEROY@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (16)
	db "DAVID@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (17)
	db "JOHN@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (18)
	db "JERRY@", TRAINERTYPE_NORMAL
	db 37
	dw SANDSLASH
	db -1 ; end

	next_list_item ; CAMPER (19)
	db "SPENCER@", TRAINERTYPE_NORMAL
	db 17
	dw SANDSHREW
	db 17
	dw SANDSLASH
	db 19
	dw ZUBAT
	db -1 ; end

	next_list_item ; CAMPER (20)
	db "TODD@", TRAINERTYPE_NORMAL
	db 30
	dw GRAVELER
	db 30
	dw GRAVELER
	db 30
	dw SLUGMA
	db 32
	dw PSYDUCK
	db -1 ; end

	next_list_item ; CAMPER (21)
	db "TODD@", TRAINERTYPE_MOVES
	db 33
	dw GRAVELER
	db SELFDESTRUCT, ROCK_THROW, HARDEN, MAGNITUDE
	db 33
	dw GRAVELER
	db SELFDESTRUCT, ROCK_THROW, HARDEN, MAGNITUDE
	db 36
	dw MAGCARGO
	db ROCK_THROW, HARDEN, AMNESIA, FLAMETHROWER
	db 34
	dw GOLDUCK
	db DISABLE, PSYCHIC_M, SURF, PSYCH_UP
	db -1 ; end

	next_list_item ; CAMPER (22)
	db "QUENTIN@", TRAINERTYPE_NORMAL
	db 30
	dw FEAROW
	db 30
	dw PRIMEAPE
	db 30
	dw TAUROS
	db -1 ; end

	end_list_items

ExecutiveFGroup:
	next_list_item ; EXECUTIVEF (1)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 32
	dw ARBOK
	db WRAP, POISON_STING, BITE, GLARE
	db 32
	dw VILEPLUME
	db ABSORB, SWEET_SCENT, SLEEP_POWDER, ACID
	db 32
	dw MURKROW
	db PECK, PURSUIT, HAZE, NIGHT_SHADE
	db -1 ; end

	next_list_item ; EXECUTIVEF (2)
	db "EXECUTIVE@", TRAINERTYPE_MOVES
	db 23
	dw ARBOK
	db WRAP, LEER, POISON_STING, BITE
	db 23
	dw GLOOM
	db ABSORB, SWEET_SCENT, SLEEP_POWDER, ACID
	db 25
	dw MURKROW
	db PECK, PURSUIT, HAZE, NO_MOVE
	db -1 ; end

	end_list_items

SageGroup:
	next_list_item ; SAGE (1)
	db "CHOW@", TRAINERTYPE_NORMAL
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (2)
	db "NICO@", TRAINERTYPE_NORMAL
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (3)
	db "JIN@", TRAINERTYPE_NORMAL
	db 6
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (4)
	db "TROY@", TRAINERTYPE_NORMAL
	db 7
	dw BELLSPROUT
	db 7
	dw HOOTHOOT
	db -1 ; end

	next_list_item ; SAGE (5)
	db "JEFFREY@", TRAINERTYPE_NORMAL
	db 22
	dw HAUNTER
	db -1 ; end

	next_list_item ; SAGE (6)
	db "PING@", TRAINERTYPE_NORMAL
	db 16
	dw GASTLY
	db 16
	dw GASTLY
	db 16
	dw GASTLY
	db 16
	dw GASTLY
	db 16
	dw GASTLY
	db -1 ; end

	next_list_item ; SAGE (7)
	db "EDMOND@", TRAINERTYPE_NORMAL
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (8)
	db "NEAL@", TRAINERTYPE_NORMAL
	db 6
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (9)
	db "LI@", TRAINERTYPE_NORMAL
	db 7
	dw BELLSPROUT
	db 7
	dw BELLSPROUT
	db 10
	dw HOOTHOOT
	db -1 ; end

	next_list_item ; SAGE (10)
	db "GAKU@", TRAINERTYPE_NORMAL
	db 32
	dw NOCTOWL
	db 32
	dw FLAREON
	db -1 ; end

	next_list_item ; SAGE (11)
	db "MASA@", TRAINERTYPE_NORMAL
	db 32
	dw NOCTOWL
	db 32
	dw JOLTEON
	db -1 ; end

	next_list_item ; SAGE (12)
	db "KOJI@", TRAINERTYPE_NORMAL
	db 32
	dw NOCTOWL
	db 32
	dw VAPOREON
	db -1 ; end

	end_list_items

MediumGroup:
	next_list_item ; MEDIUM (1)
	db "MARTHA@", TRAINERTYPE_NORMAL
	db 18
	dw GASTLY
	db 20
	dw HAUNTER
	db 20
	dw GASTLY
	db -1 ; end

	next_list_item ; MEDIUM (2)
	db "GRACE@", TRAINERTYPE_NORMAL
	db 20
	dw HAUNTER
	db 20
	dw HAUNTER
	db -1 ; end

	next_list_item ; MEDIUM (3)
	db "BETHANY@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	db -1 ; end

	next_list_item ; MEDIUM (4)
	db "MARGRET@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	db -1 ; end

	next_list_item ; MEDIUM (5)
	db "ETHEL@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	db -1 ; end

	next_list_item ; MEDIUM (6)
	db "REBECCA@", TRAINERTYPE_NORMAL
	db 35
	dw DROWZEE
	db 35
	dw HYPNO
	db -1 ; end

	next_list_item ; MEDIUM (7)
	db "DORIS@", TRAINERTYPE_NORMAL
	db 34
	dw SLOWPOKE
	db 36
	dw SLOWBRO
	db -1 ; end

	end_list_items

BoarderGroup:
	next_list_item ; BOARDER (1)
	db "RONALD@", TRAINERTYPE_NORMAL
	db 24
	dw SEEL
	db 25
	dw DEWGONG
	db 24
	dw SEEL
	db -1 ; end

	next_list_item ; BOARDER (2)
	db "BRAD@", TRAINERTYPE_NORMAL
	db 26
	dw SWINUB
	db 26
	dw SWINUB
	db -1 ; end

	next_list_item ; BOARDER (3)
	db "DOUGLAS@", TRAINERTYPE_NORMAL
	db 24
	dw SHELLDER
	db 25
	dw CLOYSTER
	db 24
	dw SHELLDER
	db -1 ; end

	end_list_items

PokefanMGroup:
	next_list_item ; POKEFANM (1)
	db "WILLIAM@", TRAINERTYPE_ITEM
	db 14
	dw RAICHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (2)
	db "DEREK@", TRAINERTYPE_ITEM
	db 17
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (3)
	db "ROBERT@", TRAINERTYPE_ITEM
	db 33
	dw QUAGSIRE
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (4)
	db "JOSHUA@", TRAINERTYPE_ITEM
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db 23
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (5)
	db "CARTER@", TRAINERTYPE_ITEM
	db 29
	dw BULBASAUR
	db BERRY
	db 29
	dw CHARMANDER
	db BERRY
	db 29
	dw SQUIRTLE
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (6)
	db "TREVOR@", TRAINERTYPE_ITEM
	db 33
	dw PSYDUCK
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (7)
	db "BRANDON@", TRAINERTYPE_ITEM
	db 13
	dw SNUBBULL
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (8)
	db "JEREMY@", TRAINERTYPE_ITEM
	db 28
	dw MEOWTH
	db BERRY
	db 28
	dw MEOWTH
	db BERRY
	db 28
	dw MEOWTH
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (9)
	db "COLIN@", TRAINERTYPE_ITEM
	db 32
	dw DELIBIRD
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (10)
	db "DEREK@", TRAINERTYPE_ITEM
	db 19
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (11)
	db "DEREK@", TRAINERTYPE_ITEM
	db 36
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (12)
	db "ALEX@", TRAINERTYPE_ITEM
	db 29
	dw NIDOKING
	db BERRY
	db 29
	dw SLOWKING
	db BERRY
	db 29
	dw SEAKING
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (13)
	db "REX@", TRAINERTYPE_ITEM
	db 35
	dw PHANPY
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANM (14)
	db "ALLAN@", TRAINERTYPE_ITEM
	db 35
	dw TEDDIURSA
	db BERRY
	db -1 ; end

	end_list_items

KimonoGirlGroup:
	next_list_item ; KIMONO_GIRL (1)
	db "NAOKO@", TRAINERTYPE_NORMAL
	db 20
	dw SKIPLOOM
	db 20
	dw VULPIX
	db 18
	dw SKIPLOOM
	db -1 ; end

	next_list_item ; KIMONO_GIRL (2)
	db "NAOKO@", TRAINERTYPE_NORMAL
	db 17
	dw FLAREON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (3)
	db "SAYO@", TRAINERTYPE_NORMAL
	db 17
	dw ESPEON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (4)
	db "ZUKI@", TRAINERTYPE_NORMAL
	db 17
	dw UMBREON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (5)
	db "KUNI@", TRAINERTYPE_NORMAL
	db 17
	dw VAPOREON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (6)
	db "MIKI@", TRAINERTYPE_NORMAL
	db 17
	dw JOLTEON
	db -1 ; end

	end_list_items

TwinsGroup:
	next_list_item ; TWINS (1)
	db "AMY & MAY@", TRAINERTYPE_NORMAL
	db 10
	dw SPINARAK
	db 10
	dw LEDYBA
	db -1 ; end

	next_list_item ; TWINS (2)
	db "ANN & ANNE@", TRAINERTYPE_MOVES
	db 16
	dw CLEFAIRY
	db GROWL, ENCORE, DOUBLESLAP, METRONOME
	db 16
	dw JIGGLYPUFF
	db SING, DEFENSE_CURL, POUND, DISABLE
	db -1 ; end

	next_list_item ; TWINS (3)
	db "ANN & ANNE@", TRAINERTYPE_MOVES
	db 16
	dw JIGGLYPUFF
	db SING, DEFENSE_CURL, POUND, DISABLE
	db 16
	dw CLEFAIRY
	db GROWL, ENCORE, DOUBLESLAP, METRONOME
	db -1 ; end

	next_list_item ; TWINS (4)
	db "AMY & MAY@", TRAINERTYPE_NORMAL
	db 10
	dw LEDYBA
	db 10
	dw SPINARAK
	db -1 ; end

	next_list_item ; TWINS (5)
	db "JO & ZOE@", TRAINERTYPE_NORMAL
	db 35
	dw VICTREEBEL
	db 35
	dw VILEPLUME
	db -1 ; end

	next_list_item ; TWINS (6)
	db "JO & ZOE@", TRAINERTYPE_NORMAL
	db 35
	dw VILEPLUME
	db 35
	dw VICTREEBEL
	db -1 ; end

	next_list_item ; TWINS (7)
	db "MEG & PEG@", TRAINERTYPE_NORMAL
	db 31
	dw TEDDIURSA
	db 31
	dw PHANPY
	db -1 ; end

	next_list_item ; TWINS (8)
	db "MEG & PEG@", TRAINERTYPE_NORMAL
	db 31
	dw PHANPY
	db 31
	dw TEDDIURSA
	db -1 ; end

	next_list_item ; TWINS (9)
	db "LEA & PIA@", TRAINERTYPE_MOVES
	db 35
	dw DRATINI
	db THUNDER_WAVE, TWISTER, FLAMETHROWER, HEADBUTT
	db 35
	dw DRATINI
	db THUNDER_WAVE, TWISTER, ICE_BEAM, HEADBUTT
	db -1 ; end

	next_list_item ; TWINS (10)
	db "LEA & PIA@", TRAINERTYPE_MOVES
	db 38
	dw DRATINI
	db THUNDER_WAVE, TWISTER, ICE_BEAM, HEADBUTT
	db 38
	dw DRATINI
	db THUNDER_WAVE, TWISTER, FLAMETHROWER, HEADBUTT
	db -1 ; end

	end_list_items

PokefanFGroup:
	next_list_item ; POKEFANF (1)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 14
	dw SNUBBULL
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (2)
	db "RUTH@", TRAINERTYPE_ITEM
	db 17
	dw PIKACHU
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (3)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 18
	dw SNUBBULL
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (4)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 30
	dw GRANBULL
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (5)
	db "GEORGIA@", TRAINERTYPE_ITEM
	db 23
	dw SENTRET
	db BERRY
	db 23
	dw SENTRET
	db BERRY
	db 23
	dw SENTRET
	db BERRY
	db 28
	dw FURRET
	db BERRY
	db 23
	dw SENTRET
	db BERRY
	db -1 ; end

	next_list_item ; POKEFANF (6)
	db "JAIME@", TRAINERTYPE_ITEM
	db 16
	dw MEOWTH
	db BERRY
	db -1 ; end

	end_list_items

RedGroup:
	next_list_item ; RED (1)
	db "RED@", TRAINERTYPE_MOVES
	db 81
	dw PIKACHU
	db CHARM, QUICK_ATTACK, THUNDERBOLT, THUNDER
	db 73
	dw ESPEON
	db MUD_SLAP, REFLECT, SWIFT, PSYCHIC_M
	db 75
	dw SNORLAX
	db AMNESIA, SNORE, REST, BODY_SLAM
	db 77
	dw VENUSAUR
	db SUNNY_DAY, GIGA_DRAIN, SYNTHESIS, SOLARBEAM
	db 77
	dw CHARIZARD
	db FLAMETHROWER, WING_ATTACK, SLASH, FIRE_SPIN
	db 77
	dw BLASTOISE
	db RAIN_DANCE, SURF, BLIZZARD, WHIRLPOOL
	db -1 ; end

	end_list_items

BlueGroup:
	next_list_item ; BLUE (1)
	db "BLUE@", TRAINERTYPE_MOVES
	db 56
	dw PIDGEOT
	db QUICK_ATTACK, WHIRLWIND, WING_ATTACK, MIRROR_MOVE
	db 54
	dw ALAKAZAM
	db DISABLE, RECOVER, PSYCHIC_M, REFLECT
	db 56
	dw RHYDON
	db FURY_ATTACK, SANDSTORM, ROCK_SLIDE, EARTHQUAKE
	db 58
	dw GYARADOS
	db TWISTER, HYDRO_PUMP, RAIN_DANCE, HYPER_BEAM
	db 58
	dw EXEGGUTOR
	db SUNNY_DAY, LEECH_SEED, EGG_BOMB, SOLARBEAM
	db 58
	dw ARCANINE
	db ROAR, SWIFT, FLAMETHROWER, EXTREMESPEED
	db -1 ; end

	end_list_items

OfficerGroup:
	next_list_item ; OFFICER (1)
	db "KEITH@", TRAINERTYPE_NORMAL
	db 17
	dw GROWLITHE
	db -1 ; end

	next_list_item ; OFFICER (2)
	db "DIRK@", TRAINERTYPE_NORMAL
	db 14
	dw GROWLITHE
	db 14
	dw GROWLITHE
	db -1 ; end

	end_list_items

GruntFGroup:
	next_list_item ; GRUNTF (1)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 9
	dw ZUBAT
	db 11
	dw EKANS
	db -1 ; end

	next_list_item ; GRUNTF (2)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 26
	dw ARBOK
	db -1 ; end

	next_list_item ; GRUNTF (3)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 25
	dw GLOOM
	db 25
	dw GLOOM
	db -1 ; end

	next_list_item ; GRUNTF (4)
	db "GRUNT@", TRAINERTYPE_NORMAL
	db 21
	dw EKANS
	db 23
	dw ODDISH
	db 21
	dw EKANS
	db 24
	dw GLOOM
	db -1 ; end

	next_list_item ; GRUNTF (5)
	db "GRUNT@", TRAINERTYPE_MOVES
	db 18
	dw EKANS
	db WRAP, LEER, POISON_STING, BITE
	db 18
	dw GLOOM
	db ABSORB, SWEET_SCENT, STUN_SPORE, SLEEP_POWDER
	db -1 ; end

	end_list_items

MysticalmanGroup:
	next_list_item ; MYSTICALMAN (1)
	db "EUSINE@", TRAINERTYPE_MOVES
	db 23
	dw DROWZEE
	db DREAM_EATER, HYPNOSIS, DISABLE, CONFUSION
	db 23
	dw HAUNTER
	db LICK, HYPNOSIS, MEAN_LOOK, CURSE
	db 25
	dw ELECTRODE
	db SCREECH, SONICBOOM, THUNDER, ROLLOUT
	db -1 ; end

	end_list_items
