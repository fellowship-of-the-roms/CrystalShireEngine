SECTION "Evolutions and Attacks 3", ROMX

EvosAttacksPointers3::
	dw TreeckoEvosAttacks
	dw GrovyleEvosAttacks
	dw SceptileEvosAttacks
	dw TorchicEvosAttacks
	dw CombuskenEvosAttacks
	dw BlazikenEvosAttacks
	dw MudkipEvosAttacks
	dw MarshtompEvosAttacks
	dw SwampertEvosAttacks
	dw EuxinosEvosAttacks
	dw WeavileEvosAttacks
	dw HonchkrowEvosAttacks
	dw GliscorEvosAttacks
	dw LeafeonEvosAttacks
	dw GlaceonEvosAttacks
	dw DraconeonEvosAttacks
	dw KujinoughtEvosAttacks
	dw MlloyEvosAttacks
	dw LotadEvosAttacks
	dw LombreEvosAttacks
	dw LudicoloEvosAttacks
	dw SeedotEvosAttacks
	dw NuzleafEvosAttacks
	dw ShiftryEvosAttacks
	dw ElectivireEvosAttacks
	dw MagmortarEvosAttacks
	dw VoltrelEvosAttacks
	dw VoltreanEvosAttacks
	dw SolosisEvosAttacks
	dw DuosionEvosAttacks
	dw ReuniclusEvosAttacks
	dw SurskitEvosAttacks
	dw MasquerainEvosAttacks
	dw ShroomishEvosAttacks
	dw BreloomEvosAttacks
	dw SlakothEvosAttacks
	dw VigorothEvosAttacks
	dw SlakingEvosAttacks
	dw NincadaEvosAttacks
	dw NinjaskEvosAttacks
	dw ShedinjaEvosAttacks
	dw TinkatinkEvosAttacks
	dw TinkatuffEvosAttacks
	dw TinkatonEvosAttacks
	dw MakuhitaEvosAttacks
	dw HariyamaEvosAttacks
	dw AzurillEvosAttacks
	dw NosepassEvosAttacks
	dw SkittyEvosAttacks
	dw DelcattyEvosAttacks
	dw SpiritombEvosAttacks
	dw TangrowthEvosAttacks
	dw AronEvosAttacks
	dw LaironEvosAttacks
	dw AggronEvosAttacks
	dw MedititeEvosAttacks
	dw MedichamEvosAttacks
	dw ShinxEvosAttacks
	dw LuxioEvosAttacks
	dw LuxrayEvosAttacks
	dw GekoponEvosAttacks
	dw TynamoEvosAttacks
	dw EelektrikEvosAttacks
	dw EelektrossEvosAttacks
	dw CorsoreefEvosAttacks
	dw DundragEvosAttacks
	dw CarvanhaEvosAttacks
	dw SharpedoEvosAttacks
	dw BarboachEvosAttacks
	dw WhiscashEvosAttacks
	dw SmoguanaEvosAttacks
	dw SmokomodoEvosAttacks
	dw TorkoalEvosAttacks
	dw SpoinkEvosAttacks
	dw GrumpigEvosAttacks
	dw SpindaEvosAttacks
	dw TrapinchEvosAttacks
	dw VibravaEvosAttacks
	dw FlygonEvosAttacks
	dw NohfaceEvosAttacks
	dw KitsunohEvosAttacks
	dw KrolucadaEvosAttacks
	dw KrolucardEvosAttacks
	dw StunkyEvosAttacks
	dw SkuntankEvosAttacks
	dw LarvestaEvosAttacks
	dw VolcaronaEvosAttacks
	dw ImpidimpEvosAttacks
	dw MorgremEvosAttacks
	dw GrimmsnarlEvosAttacks
	dw WyrdeerEvosAttacks
	dw BaltoyEvosAttacks
	dw ClaydolEvosAttacks
	dw MunchlaxEvosAttacks
	dw PurgislugEvosAttacks
	dw AnorithEvosAttacks
	dw ArmaldoEvosAttacks
	dw FeebasEvosAttacks
	dw MiloticEvosAttacks
	dw CastformEvosAttacks
	dw LitwickEvosAttacks
	dw LampentEvosAttacks
	dw ChandelureEvosAttacks
	dw DuskullEvosAttacks
	dw DusclopsEvosAttacks
	dw DecibelleEvosAttacks
	dw ChimechoEvosAttacks
	dw AbsolEvosAttacks
	dw MagnezoneEvosAttacks
	dw SnoverEvosAttacks
	dw AbomasnowEvosAttacks
	dw TurtwigEvosAttacks
	dw GrotleEvosAttacks
	dw TorterraEvosAttacks
	dw ChimcharEvosAttacks
	dw MonfernoEvosAttacks
	dw InfernapeEvosAttacks
	dw PiplupEvosAttacks
	dw PrinplupEvosAttacks
	dw EmpoleonEvosAttacks
	dw RelicanthEvosAttacks
	dw LuvdiscEvosAttacks
	dw RaelicEvosAttacks
	dw RomushuEvosAttacks
	dw FusangEvosAttacks
	dw BeldumEvosAttacks
	dw MetangEvosAttacks
	dw MetagrossEvosAttacks
	dw RegirockEvosAttacks
	dw RegiceEvosAttacks
	dw RegisteelEvosAttacks
	dw LatiasEvosAttacks
	dw LatiosEvosAttacks
	dw KyogreEvosAttacks
	dw GroudonEvosAttacks
	dw RayquazaEvosAttacks
	dw JirachiEvosAttacks
	dw DeoxysEvosAttacks
.IndirectEnd::

TreeckoEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, GROVYLE
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, POUND
	dbw 6, ABSORB
	dbw 11, QUICK_ATTACK
	dbw 16, PURSUIT
	dbw 21, SCREECH
	dbw 26, MEGA_DRAIN
	dbw 31, AGILITY
	dbw 36, SLAM
	dbw 41, DETECT
	dbw 46, GIGA_DRAIN
	db 0 ; no more level-up moves

GrovyleEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, SCEPTILE
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, LEER
	dbw 1, POUND
	dbw 1, QUICK_ATTACK
	dbw 6, ABSORB
	dbw 11, QUICK_ATTACK
	dbw 16, FURY_CUTTER
	dbw 17, PURSUIT
	dbw 23, SCREECH
	dbw 29, LEAF_BLADE
	dbw 35, AGILITY
	dbw 41, SLAM
	dbw 47, DETECT
	dbw 53, FALSE_SWIPE
	db 0 ; no more level-up moves

SceptileEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, LEER
	dbw 1, POUND
	dbw 1, QUICK_ATTACK
	dbw 6, ABSORB
	dbw 11, QUICK_ATTACK
	dbw 16, FURY_CUTTER
	dbw 17, PURSUIT
	dbw 23, SCREECH
	dbw 29, LEAF_BLADE
	dbw 35, AGILITY
	dbw 43, SLAM
	dbw 51, DETECT
	dbw 59, FALSE_SWIPE
	db 0 ; no more level-up moves

TorchicEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, COMBUSKEN
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, SCRATCH
	dbw 7, FOCUS_ENERGY
	dbw 10, EMBER
	dbw 16, PECK
	dbw 19, SAND_ATTACK
	dbw 25, FIRE_SPIN
	dbw 28, QUICK_ATTACK
	dbw 34, SLASH
	dbw 37, MIRROR_MOVE
	dbw 43, FLAMETHROWER
	db 0 ; no more level-up moves

CombuskenEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, BLAZIKEN
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, FOCUS_ENERGY
	dbw 1, GROWL
	dbw 1, SCRATCH
	dbw 7, FOCUS_ENERGY
	dbw 13, EMBER
	dbw 16, DOUBLE_KICK
	dbw 17, PECK
	dbw 21, SAND_ATTACK
	dbw 28, BULK_UP
	dbw 32, QUICK_ATTACK
	dbw 39, SLASH
	dbw 43, MIRROR_MOVE
	dbw 50, SKY_UPPERCUT
	db 0 ; no more level-up moves

BlazikenEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, FIRE_PUNCH
	dbw 1, FOCUS_ENERGY
	dbw 1, GROWL
	dbw 1, SCRATCH
	dbw 7, FOCUS_ENERGY
	dbw 13, EMBER
	dbw 16, DOUBLE_KICK
	dbw 17, PECK
	dbw 21, SAND_ATTACK
	dbw 28, BULK_UP
	dbw 32, QUICK_ATTACK
	dbw 36, BLAZE_KICK
	dbw 42, SLASH
	dbw 49, MIRROR_MOVE
	dbw 59, SKY_UPPERCUT
	db 0 ; no more level-up moves

MudkipEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, MARSHTOMP
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 6, MUD_SLAP
	dbw 10, WATER_GUN
	dbw 15, BIDE
	dbw 19, FORESIGHT
	dbw 24, SWAGGER
	dbw 28, TAKE_DOWN
	dbw 33, WATER_PULSE
	dbw 37, PROTECT
	dbw 42, HYDRO_PUMP
	dbw 46, ENDEAVOR
	db 0 ; no more level-up moves

MarshtompEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, SWAMPERT
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, MUD_SLAP
	dbw 1, TACKLE
	dbw 1, WATER_GUN
	dbw 6, MUD_SLAP
	dbw 10, WATER_GUN
	dbw 15, BIDE
	dbw 16, MUD_SHOT
	dbw 20, FORESIGHT
	dbw 25, SWAGGER
	dbw 31, TAKE_DOWN
	dbw 37, MUDDY_WATER
	dbw 42, PROTECT
	dbw 46, EARTHQUAKE
	dbw 53, ENDEAVOR
	db 0 ; no more level-up moves

SwampertEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, MUD_SLAP
	dbw 1, TACKLE
	dbw 1, WATER_GUN
	dbw 6, MUD_SLAP
	dbw 10, WATER_GUN
	dbw 15, BIDE
	dbw 16, MUD_SHOT
	dbw 20, FORESIGHT
	dbw 25, SWAGGER
	dbw 31, TAKE_DOWN
	dbw 39, MUDDY_WATER
	dbw 46, PROTECT
	dbw 52, EARTHQUAKE
	dbw 61, ENDEAVOR
	db 0 ; no more level-up moves

EuxinosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_FANG
	dbw 8, SWORDS_DANCE
	dbw 15, BITE
	dbw 22, POISON_GAS
	dbw 29, ANCIENTPOWER
	dbw 36, SCARY_FACE
	dbw 43, SLASH
	dbw 50, HYPER_BEAM
	db 0 ; no more level-up moves

WeavileEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, SCRATCH
	dbw 1, TAUNT
	dbw 9, QUICK_ATTACK
	dbw 16, SCREECH
	dbw 23, NIGHT_SLASH
	dbw 30, FURY_SWIPES
	dbw 37, AGILITY
	dbw 44, ICY_WIND
	dbw 51, SLASH
	dbw 58, BEAT_UP
	dbw 65, METAL_CLAW
	db 0 ; no more level-up moves

HonchkrowEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 9, ASTONISH
	dbw 14, PURSUIT
	dbw 22, HAZE
	dbw 27, NIGHT_SHADE
	dbw 35, FAINT_ATTACK
	dbw 40, TAUNT
	dbw 48, MEAN_LOOK
	dbw 56, NIGHT_SLASH
	db 0 ; no more level-up moves

GliscorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, SCREECH
	dbw 7, SAND_ATTACK
	dbw 14, HARDEN
	dbw 21, QUICK_ATTACK
	dbw 29, FAINT_ATTACK
	dbw 37, SLASH
	dbw 45, X_SCISSOR
	dbw 53, GUILLOTINE
	db 0 ; no more level-up moves

LeafeonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWTH
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, RAZOR_LEAF
	dbw 23, QUICK_ATTACK
	dbw 30, BITE
	dbw 36, MAGICAL_LEAF
	dbw 42, GRASSWHISTLE
	dbw 47, LEAF_BLADE
	dbw 52, SYNTHESIS
	db 0 ; no more level-up moves

GlaceonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWTH
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, ICY_WIND
	dbw 23, QUICK_ATTACK
	dbw 30, SWIFT
	dbw 36, AURORA_BEAM
	dbw 42, MIRROR_COAT
	dbw 47, ICE_BEAM
	dbw 52, BLIZZARD
	db 0 ; no more level-up moves

DraconeonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWTH
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, DRAGON_RAGE
	dbw 23, QUICK_ATTACK
	dbw 30, SLAM
	dbw 36, DRAGONBREATH
	dbw 42, SAFEGUARD
	dbw 47, DRAGON_PULSE
	dbw 52, RECOVER 
	db 0 ; no more level-up moves

KujinoughtEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LOCK_ON
	dbw 1, OCTAZOOKA
	dbw 1, FOCUS_ENERGY
	dbw 1, SMOKESCREEN
	dbw 50, WATER_SPOUT
	db 0 ; no more level-up moves

MlloyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LOW_KICK
	dbw 6, MUD_SLAP
	dbw 11, SCREECH
	dbw 16, KARATE_CHOP
	dbw 21, KNOCK_OFF
	dbw 26, AERIAL_ACE
	dbw 31, SWORDS_DANCE
	dbw 36, AGILITY
	dbw 41, SLASH
	dbw 46, SUBMISSION
	dbw 58, LEAF_BLADE
	db 0 ; no more level-up moves

LotadEvosAttacks:
	dbbw EVOLVE_LEVEL, 14, LOMBRE
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 3, GROWL
	dbw 7, ABSORB
	dbw 13, NATURE_POWER
	dbw 21, MIST
	dbw 31, RAIN_DANCE
	dbw 43, MEGA_DRAIN
	db 0 ; no more level-up moves

LombreEvosAttacks:
	dbww EVOLVE_ITEM, WATER_STONE, LUDICOLO
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 3, GROWL
	dbw 7, ABSORB
	dbw 13, NATURE_POWER
	dbw 19, FAKE_OUT
	dbw 25, FURY_SWIPES
	dbw 31, SWAGGER
	dbw 37, THIEF
	dbw 43, UPROAR
	dbw 49, HYDRO_PUMP
	db 0 ; no more level-up moves

LudicoloEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, ASTONISH
	dbw 1, GROWL
	dbw 1, NATURE_POWER
	db 0 ; no more level-up moves

SeedotEvosAttacks:
	dbbw EVOLVE_LEVEL, 14, NUZLEAF
	db 0 ; no more evolutions
	dbw 1, BIDE
	dbw 3, HARDEN
	dbw 7, GROWTH
	dbw 13, NATURE_POWER
	dbw 21, SYNTHESIS
	dbw 31, SUNNY_DAY
	dbw 43, EXPLOSION
	db 0 ; no more level-up moves

NuzleafEvosAttacks:
	dbww EVOLVE_ITEM, LEAF_STONE, SHIFTRY
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 3, HARDEN
	dbw 7, GROWTH
	dbw 13, NATURE_POWER
	dbw 19, FAKE_OUT
	dbw 25, TORMENT
	dbw 31, FAINT_ATTACK
	dbw 37, RAZOR_WIND
	dbw 43, SWAGGER
	dbw 49, EXTRASENSORY
	db 0 ; no more level-up moves

ShiftryEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWTH
	dbw 1, HARDEN
	dbw 1, NATURE_POWER
	dbw 1, POUND
	db 0 ; no more level-up moves

ElectivireEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, QUICK_ATTACK
	dbw 1, THUNDERPUNCH
	dbw 10, THUNDERPUNCH
	dbw 18, LIGHT_SCREEN
	dbw 26, SWIFT
	dbw 37, SCREECH
	dbw 48, THUNDERBOLT
	dbw 59, THUNDER
	db 0 ; no more level-up moves

MagmortarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, FIRE_PUNCH
	dbw 1, LEER
	dbw 1, SMOG
	dbw 8, LEER
	dbw 14, SMOG
	dbw 20, FIRE_PUNCH
	dbw 26, SMOKESCREEN
	dbw 34, SUNNY_DAY
	dbw 42, FLAMETHROWER
	dbw 50, CONFUSE_RAY
	dbw 58, FIRE_BLAST
	db 0 ; no more level-up moves

VoltrelEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, VOLTREAN
	db 0 ; no more evolutions
	dbw 1, HOWL
	dbw 1, PECK
	dbw 4, THUNDER_WAVE
	dbw 7, SUPERSONIC
	dbw 13, QUICK_ATTACK
	dbw 21, MIST
	dwb 27, UPROAR
	dbw 31, WING_ATTACK
	dbw 43, PURSUIT
	dbw 55, AGILITY
	db 0 ; no more level-up moves

VoltreanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HOWL
	dbw 1, THUNDER_WAVE
	dbw 1, MIST
	dbw 1, WING_ATTACK
	dbw 3, QUICK_ATTACK
	dbw 7, SUPERSONIC
	dbw 13, WING_ATTACK
	dbw 21, MIST
	dbw 25, SPARK
	dbw 33, UPROAR
	dbw 40, AERIAL_ACE
	dbw 47, AGILITY
	dbw 61, THUNDER
	db 0 ; no more level-up moves

SolosisEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, DUOSION
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, DEFENSE_CURL
	dbw 6, REFLECT
	dbw 11, ROLLOUT
	dbw 16, LIGHT_SCREEN
	dbw 21, CHARM
	dbw 26, RECOVER
	dbw 31, PSYCHIC_M
	dbw 36, FUTURE_SIGHT
	dbw 41, CALM_MIND
	dbw 46, ENDEAVOR
	db 0 ; no more level-up moves

DuosionEvosAttacks:
	dbbw EVOLVE_LEVEL, 41, REUNICLUS
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, DEFENSE_CURL
	dbw 6, REFLECT
	dbw 11, ROLLOUT
	dbw 16, LIGHT_SCREEN
	dbw 21, CHARM
	dbw 26, RECOVER
	dbw 31, PSYCHIC_M
	dbw 36, FUTURE_SIGHT
	dbw 41, CALM_MIND
	dbw 46, ENDEAVOR
	db 0 ; no more level-up moves

ReuniclusEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, DEFENSE_CURL
	dbw 6, REFLECT
	dbw 11, ROLLOUT
	dbw 16, LIGHT_SCREEN
	dbw 21, CHARM
	dbw 26, RECOVER
	dbw 31, PSYCHIC_M
	dbw 36, FUTURE_SIGHT
	dbw 41, CALM_MIND
	dbw 46, ENDEAVOR
	db 0 ; no more level-up moves

SurskitEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, MASQUERAIN
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 7, QUICK_ATTACK
	dbw 13, SWEET_SCENT
	dbw 19, DOUBLE_TEAM
	dbw 25, BUBBLEBEAM
	dbw 31, AGILITY
	dbw 37, HAZE
	dbw 37, MIST
	db 0 ; no more level-up moves

MasquerainEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, QUICK_ATTACK
	dbw 1, SWEET_SCENT
	dbw 1, DOUBLE_TEAM
	dbw 7, QUICK_ATTACK
	dbw 13, SWEET_SCENT
	dbw 19, DOUBLE_TEAM
	dbw 26, GUST
	dbw 33, SCARY_FACE
	dbw 40, STUN_SPORE
	dbw 47, SILVER_WIND
	dbw 53, WHIRLWIND
	db 0 ; no more level-up moves

ShroomishEvosAttacks:
	dbbw EVOLVE_LEVEL, 23, BRELOOM
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 4, TACKLE
	dbw 7, STUN_SPORE
	dbw 10, LEECH_SEED
	dbw 16, MEGA_DRAIN
	dbw 22, HEADBUTT
	dbw 28, POISONPOWDER
	dbw 36, GROWTH
	dbw 45, GIGA_DRAIN
	dbw 54, SPORE
	db 0 ; no more level-up moves

BreloomEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, LEECH_SEED
	dbw 1, STUN_SPORE
	dbw 1, TACKLE
	dbw 4, TACKLE
	dbw 7, STUN_SPORE
	dbw 10, LEECH_SEED
	dbw 16, MEGA_DRAIN
	dbw 22, HEADBUTT
	dbw 23, MACH_PUNCH
	dbw 28, COUNTER
	dbw 36, SKY_UPPERCUT
	dbw 45, MIND_READER
	dbw 54, DYNAMICPUNCH
	db 0 ; no more level-up moves

SlakothEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, VIGOROTH
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, YAWN
	dbw 7, ENCORE
	dbw 13, SLACK_OFF
	dbw 19, FAINT_ATTACK
	dbw 25, AMNESIA
	dbw 31, COVET
	dbw 37, COUNTER
	dbw 43, FLAIL
	db 0 ; no more level-up moves

VigorothEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, SLAKING
	db 0 ; no more evolutions
	dbw 1, ENCORE
	dbw 1, FOCUS_ENERGY
	dbw 1, SCRATCH
	dbw 1, UPROAR
	dbw 7, ENCORE
	dbw 13, UPROAR
	dbw 19, FURY_SWIPES
	dbw 25, ENDURE
	dbw 31, SLASH
	dbw 37, COUNTER
	dbw 43, FOCUS_PUNCH
	dbw 49, REVERSAL
	db 0 ; no more level-up moves

SlakingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ENCORE
	dbw 1, SCRATCH
	dbw 1, SLACK_OFF
	dbw 1, YAWN
	dbw 7, ENCORE
	dbw 13, SLACK_OFF
	dbw 19, FAINT_ATTACK
	dbw 25, AMNESIA
	dbw 31, COVET
	dbw 36, SWAGGER
	dbw 37, COUNTER
	dbw 43, FLAIL
	db 0 ; no more level-up moves

NincadaEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, NINJASK
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 1, SCRATCH
	dbw 5, LEECH_LIFE
	dbw 9, SAND_ATTACK
	dbw 14, FURY_SWIPES
	dbw 19, MIND_READER
	dbw 25, FALSE_SWIPE
	dbw 31, MUD_SLAP
	dbw 38, METAL_CLAW
	dbw 45, DIG
	db 0 ; no more level-up moves

NinjaskEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 1, LEECH_LIFE
	dbw 1, SAND_ATTACK
	dbw 1, SCRATCH
	dbw 5, LEECH_LIFE
	dbw 9, SAND_ATTACK
	dbw 14, FURY_SWIPES
	dbw 19, MIND_READER
	dbw 20, DOUBLE_TEAM
	dbw 20, FURY_CUTTER
	dbw 20, SCREECH
	dbw 25, SWORDS_DANCE
	dbw 31, SLASH
	dbw 38, AGILITY
	dbw 45, BATON_PASS
	dbw 51, X_SCISSOR
	db 0 ; no more level-up moves

ShedinjaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 1, SCRATCH
	dbw 5, LEECH_LIFE
	dbw 9, SAND_ATTACK
	dbw 14, FURY_SWIPES
	dbw 19, MIND_READER
	dbw 21, OMINOUS_WIND
	dbw 25, SPITE
	dbw 31, CONFUSE_RAY
	dbw 38, SHADOW_BALL
	dbw 45, GRUDGE
	dbw 51, MYSTICALFIRE
	db 0 ; no more level-up moves

TinkatinkEvosAttacks:
	dbbw EVOLVE_LEVEL, 24, TINKATUFF
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 5, UPROAR
	dbw 11, ASTONISH
	dbw 15, CHARM
	dbw 21, KNOCK_OFF
	dbw 25, METAL_CLAW
	dbw 31, SWEET_KISS
	dbw 35, SLAM
	dbw 41, REST
	dbw 41, SLEEP_TALK
	dbw 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

TinkatuffEvosAttacks:
	dbbw EVOLVE_LEVEL, 38, TINKATON
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, HOWL
	dbw 1, POUND
	dbw 1, UPROAR
	dbw 5, UPROAR
	dbw 11, ASTONISH
	dbw 15, CHARM
	dbw 23, KNOCK_OFF
	dbw 29, METAL_CLAW
	dbw 37, SWEET_KISS
	dbw 43, SLAM
	dbw 51, REST
	dbw 51, SLEEP_TALK
	dbw 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

TinkatonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, CHARM
	dbw 1, POUND
	dbw 1, UPROAR
	dbw 5, UPROAR
	dbw 11, ASTONISH
	dbw 15, CHARM
	dbw 23, KNOCK_OFF
	dbw 29, METAL_CLAW
	dbw 37, SWEET_KISS
	dbw 40, HYPER_BEAM
	dbw 45, SLAM
	dbw 55, DOUBLE_EDGE
	dbw 63, SUPERPOWER
	db 0 ; no more level-up moves

MakuhitaEvosAttacks:
	dbbw EVOLVE_LEVEL, 24, HARIYAMA
	db 0 ; no more evolutions
	dbw 1, FOCUS_ENERGY
	dbw 1, TACKLE
	dbw 4, SAND_ATTACK
	dbw 10, ARM_THRUST
	dbw 13, VITAL_THROW
	dbw 19, FAKE_OUT
	dbw 22, WHIRLWIND
	dbw 28, KNOCK_OFF
	dbw 31, SMELLINGSALT
	dbw 37, BELLY_DRUM
	dbw 40, ENDURE
	dbw 46, SEISMIC_TOSS
	dbw 49, REVERSAL
	db 0 ; no more level-up moves

HariyamaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ARM_THRUST
	dbw 1, FOCUS_ENERGY
	dbw 1, SAND_ATTACK
	dbw 1, TACKLE
	dbw 4, SAND_ATTACK
	dbw 10, ARM_THRUST
	dbw 13, VITAL_THROW
	dbw 19, FAKE_OUT
	dbw 22, WHIRLWIND
	dbw 24, BULK_UP
	dbw 29, KNOCK_OFF
	dbw 33, SMELLINGSALT
	dbw 40, BELLY_DRUM
	dbw 44, ENDURE
	dbw 51, SEISMIC_TOSS
	dbw 55, REVERSAL
	db 0 ; no more level-up moves

AzurillEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, MARILL
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 3, CHARM
	dbw 6, TAIL_WHIP
	dbw 10, BUBBLE
	dbw 15, SLAM
	dbw 21, WATER_GUN
	db 0 ; no more level-up moves

NosepassEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 7, HARDEN
	dbw 13, ROCK_THROW
	dbw 16, BLOCK
	dbw 22, THUNDER_WAVE
	dbw 28, ROCK_SLIDE
	dbw 31, SANDSTORM
	dbw 37, REST
	dbw 43, ZAP_CANNON
	dbw 46, LOCK_ON
	db 0 ; no more level-up moves

SkittyEvosAttacks:
	dbww EVOLVE_ITEM, MOON_STONE, DELCATTY
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 3, TAIL_WHIP
	dbw 7, ATTRACT
	dbw 13, SING
	dbw 15, DOUBLESLAP
	dbw 19, METRONOME
	dbw 25, CHARM
	dbw 27, FAINT_ATTACK
	dbw 31, COVET
	dbw 37, HEAL_BELL
	dbw 39, DOUBLE_EDGE
	db 0 ; no more level-up moves

DelcattyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ATTRACT
	dbw 1, DOUBLESLAP
	dbw 1, GROWL
	dbw 1, SING
	db 0 ; no more level-up moves

SpiritombEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CURSE
	dbw 1, PURSUIT
	dbw 5, SPITE
	dbw 9, FAINT_ATTACK
	dbw 13, HYPNOSIS
	dbw 17, DREAM_EATER
	dbw 21, FAKE_OUT
	dbw 25, TORMENT
	dbw 29, OMINOUS_WIND
	dbw 33, WILL_O_WISP
	dbw 37, CONFUSE_RAY
	dbw 41, SHADOW_BALL
	dbw 45, MEMENTO
	db 0 ; no more level-up moves

TangrowthEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, INGRAIN
	dbw 5, SLEEP_POWDER
	dbw 11, ABSORB
	dbw 14, GROWTH
	dbw 20, POISONPOWDER
	dbw 23, VINE_WHIP
	dbw 29, BIND
	dbw 32, MEGA_DRAIN
	dbw 38, STUN_SPORE
	dbw 40, SLAM
	dbw 46, TICKLE
	dbw 53, POWER_WHIP
	db 0 ; no more level-up moves

AronEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, LAIRON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, HARDEN
	dbw 7, MUD_SLAP
	dbw 10, HEADBUTT
	dbw 13, METAL_CLAW
	dbw 17, IRON_DEFENSE
	dbw 21, ROAR
	dbw 25, TAKE_DOWN
	dbw 29, IRON_TAIL
	dbw 34, PROTECT
	dbw 39, METAL_SOUND
	dbw 44, DOUBLE_EDGE
	db 0 ; no more level-up moves

LaironEvosAttacks:
	dbbw EVOLVE_LEVEL, 42, AGGRON
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 1, HEADBUTT
	dbw 1, MUD_SLAP
	dbw 1, TACKLE
	dbw 4, HARDEN
	dbw 7, MUD_SLAP
	dbw 10, HEADBUTT
	dbw 13, METAL_CLAW
	dbw 17, IRON_DEFENSE
	dbw 21, ROAR
	dbw 25, TAKE_DOWN
	dbw 29, IRON_TAIL
	dbw 37, PROTECT
	dbw 45, METAL_SOUND
	dbw 53, DOUBLE_EDGE
	db 0 ; no more level-up moves

AggronEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 1, HEADBUTT
	dbw 1, MUD_SLAP
	dbw 1, TACKLE
	dbw 4, HARDEN
	dbw 7, MUD_SLAP
	dbw 10, HEADBUTT
	dbw 13, METAL_CLAW
	dbw 17, IRON_DEFENSE
	dbw 21, ROAR
	dbw 25, TAKE_DOWN
	dbw 29, IRON_TAIL
	dbw 37, PROTECT
	dbw 50, METAL_SOUND
	dbw 63, DOUBLE_EDGE
	db 0 ; no more level-up moves

MedititeEvosAttacks:
	dbbw EVOLVE_LEVEL, 37, MEDICHAM
	db 0 ; no more evolutions
	dbw 1, BIDE
	dbw 4, MEDITATE
	dbw 9, CONFUSION
	dbw 12, DETECT
	dbw 18, HIDDEN_POWER
	dbw 22, MIND_READER
	dbw 28, CALM_MIND
	dbw 32, HI_JUMP_KICK
	dbw 38, PSYCH_UP
	dbw 42, REVERSAL
	dbw 48, RECOVER
	db 0 ; no more level-up moves

MedichamEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BIDE
	dbw 1, CONFUSION
	dbw 1, DETECT
	dbw 1, FIRE_PUNCH
	dbw 1, ICE_PUNCH
	dbw 1, BULK_UP
	dbw 1, THUNDERPUNCH
	dbw 4, MEDITATE
	dbw 9, CONFUSION
	dbw 12, DETECT
	dbw 18, HIDDEN_POWER
	dbw 22, MIND_READER
	dbw 28, CALM_MIND
	dbw 32, HI_JUMP_KICK
	dbw 40, PSYCH_UP
	dbw 46, REVERSAL
	dbw 54, RECOVER
	db 0 ; no more level-up moves

ShinxEvosAttacks:
	dbbw EVOLVE_LEVEL, 15, LUXIO
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, LEER
	dbw 9, HOWL
	dbw 12, BITE
	dbw 17, QUICK_ATTACK
	dbw 20, SPARK
	dbw 25, ODOR_SLEUTH
	dbw 28, ROAR
	dbw 33, BITE
	dbw 36, THUNDER
	dbw 41, CHARGE_BEAM
	db 0 ; no more level-up moves

LuxioEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, LUXRAY
	db 0 ; no more evolutions
	dbw 1, HOWL
	dbw 1, LEER
	dbw 1, TACKLE
	dbw 1, BITE
	dbw 5, LEER
	dbw 10, BITE
	dbw 13, HOWL
	dbw 18, QUICK_ATTACK
	dbw 21, SPARK
	dbw 26, ODOR_SLEUTH
	dbw 32, ROAR
	dbw 40, BITE
	dbw 46, THUNDER
	dbw 54, CHARGE_BEAM
	db 0 ; no more level-up moves

LuxrayEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HOWL
	dbw 1, LEER
	dbw 1, TACKLE
	dbw 1, BITE
	dbw 6, LEER
	dbw 11, BITE
	dbw 14, HOWL
	dbw 19, QUICK_ATTACK
	dbw 22, SPARK
	dbw 27, ODOR_SLEUTH
	dbw 33, ROAR
	dbw 41, CHARGE_BEAM
	dbw 47, THUNDER
	dbw 55, CRUNCH
	db 0 ; no more level-up moves

GekoponEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, FOCUS_ENERGY
	dbw 7, THUNDERSHOCK
	dbw 11, YAWN
	dbw 17, SLAM
	dbw 23, TAKE_DOWN
	dbw 29, MEGA_DRAIN
	dbw 35, SPARK
	dbw 41, BODY_SLAM
	dbw 47, RAIN_DANCE
	dbw 53, REST
	db 0 ; no more level-up moves

TynamoEvosAttacks:
	dbbw EVOLVE_LEVEL, 39, EELEKTRIK
	dbw 1, CHARGE_BEAM
	dbw 1, VICEGRIP
	dbw 1, SCREECH
	dbw 1, THUNDER_WAVE
	db 0 ; no more level-up moves

EelektrikEvosAttacks:
	dbww EVOLVE_ITEM, THUNDERSTONE, EELEKTROSS
	db 0 ; no more evolutions
	dbw 1, CHARGE_BEAM
	dbw 1, VICEGRIP
	dbw 1, SPARK
	dbw 1, THUNDER_WAVE
	dbw 8, SCREECH
	dbw 15, ACID
	dbw 21, SPARK
	dbw 27, BITE
	dbw 34, ROLLOUT
	dbw 41, DEFENSE_CURL
	dbw 48, ZAP_CANNON
	dbw 59, THRASH
	db 0 ; no more level-up moves

EelektrossEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, SPARK
	dbw 1, CRUSH_CLAW
	dbw 1, ACID
	dbw 41, THRASH
	db 0 ; no more level-up moves

CorsoreefEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HEADBUTT
	dbw 1, WATER_PULSE
	dbw 7, HARDEN
	dbw 13, BUBBLE
	dbw 18, RECOVER
	dbw 18, REFRESH
	dbw 24, BUBBLEBEAM
	dbw 29, INGRAIN
	dbw 35, STONE_EDGE
	dbw 40, MIRROR_COAT
	dbw 46, ANCIENTPOWER
	dbw 54, WATER_SPOUT
	db 0 ; no more level-up moves

DundragEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, RAGE
	dbw 6, DEFENSE_CURL
	dbw 13, YAWN
	dbw 16, GLARE
	dbw 23, SPITE
	dbw 26, PURSUIT
	dbw 33, SCREECH
	dbw 36, TAKE_DOWN
	dbw 43, ENDEAVOR
	dbw 48, TWISTER
	dbw 52, DRAGON_PULSE
	dbw 61, SKY_ATTACK
	db 0 ; no more level-up moves

CarvanhaEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, SHARPEDO
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 7, RAGE
	dbw 13, FOCUS_ENERGY
	dbw 16, SCARY_FACE
	dbw 22, CRUNCH
	dbw 28, SCREECH
	dbw 31, TAKE_DOWN
	dbw 37, SWAGGER
	dbw 43, AGILITY
	db 0 ; no more level-up moves

SharpedoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, FOCUS_ENERGY
	dbw 1, LEER
	dbw 1, RAGE
	dbw 7, RAGE
	dbw 13, FOCUS_ENERGY
	dbw 16, SCARY_FACE
	dbw 22, CRUNCH
	dbw 28, SCREECH
	dbw 33, SLASH
	dbw 38, TAUNT
	dbw 43, SWAGGER
	dbw 48, SKULL_BASH
	dbw 53, AGILITY
	db 0 ; no more level-up moves

BarboachEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, WHISCASH
	db 0 ; no more evolutions
	dbw 1, MUD_SLAP
	dbw 6, SPLASH
	dbw 11, WATER_GUN
	dbw 16, MAGNITUDE
	dbw 21, AMNESIA
	dbw 26, REST
	dbw 26, SNORE
	dbw 31, EARTHQUAKE
	dbw 36, FUTURE_SIGHT
	dbw 41, FISSURE
	db 0 ; no more level-up moves

WhiscashEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, MUD_SLAP
	dbw 1, SPLASH
	dbw 1, TICKLE
	dbw 6, SPLASH
	dbw 11, WATER_GUN
	dbw 16, MAGNITUDE
	dbw 21, AMNESIA
	dbw 26, REST
	dbw 26, SNORE
	dbw 30, MUDDY_WATER
	dbw 36, EARTHQUAKE
	dbw 46, FUTURE_SIGHT
	dbw 56, FISSURE
	db 0 ; no more level-up moves

SmoguanaEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, SMOGUANA
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, TACKLE
	dbw 11, EMBER
	dbw 19, MAGNITUDE
	dbw 25, FOCUS_ENERGY
	dbw 29, SLASH
	dbw 31, SMOKESCREEN
	dbw 35, BURNING_SAND
	dbw 41, FLAMETHROWER
	dbw 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

SmokomodoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, LEER
	dbw 1, MAGNITUDE
	dbw 1, TACKLE
	dbw 11, EMBER
	dbw 19, MAGNITUDE
	dbw 25, FOCUS_ENERGY
	dbw 29, SLASH
	dbw 31, SMOKESCREEN
	dbw 33, ROCK_SLIDE
	dbw 37, BURNING_SAND
	dbw 45, ERUPTION
	dbw 55, FISSURE
	db 0 ; no more level-up moves

TorkoalEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 4, SMOG
	dbw 7, CURSE
	dbw 14, SMOKESCREEN
	dbw 17, FIRE_SPIN
	dbw 20, BODY_SLAM
	dbw 27, PROTECT
	dbw 30, FLAMETHROWER
	dbw 33, IRON_DEFENSE
	dbw 40, AMNESIA
	dbw 43, BURNING_SAND
	dbw 46, HEAT_WAVE
	db 0 ; no more level-up moves

SpoinkEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, GRUMPIG
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 7, PSYWAVE
	dbw 10, ODOR_SLEUTH
	dbw 16, PSYBEAM
	dbw 19, PSYCH_UP
	dbw 25, CONFUSE_RAY
	dbw 28, MAGIC_COAT
	dbw 34, PSYCHIC_M
	dbw 37, REST
	dbw 37, SNORE
	dbw 43, BOUNCE
	db 0 ; no more level-up moves

GrumpigEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ODOR_SLEUTH
	dbw 1, PSYBEAM
	dbw 1, PSYWAVE
	dbw 1, SPLASH
	dbw 7, PSYWAVE
	dbw 10, ODOR_SLEUTH
	dbw 16, PSYBEAM
	dbw 19, PSYCH_UP
	dbw 25, CONFUSE_RAY
	dbw 28, MAGIC_COAT
	dbw 37, PSYCHIC_M
	dbw 43, REST
	dbw 43, SNORE
	dbw 55, BOUNCE
	db 0 ; no more level-up moves

SpindaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, UPROAR
	dbw 12, FAINT_ATTACK
	dbw 16, PSYBEAM
	dbw 23, HYPNOSIS
	dbw 27, DIZZY_PUNCH
	dbw 34, CONFUSE_RAY
	dbw 38, PSYCH_UP
	dbw 45, DOUBLE_EDGE
	dbw 49, FLAIL
	dbw 56, THRASH
	db 0 ; no more level-up moves

TrapinchEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, VIBRAVA
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 9, SAND_TOMB
	dbw 17, FAINT_ATTACK
	dbw 25, BURNING_SAND
	dbw 33, CRUNCH
	dbw 41, DIG
	dbw 49, SANDSTORM
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

VibravaEvosAttacks:
	dbbw EVOLVE_LEVEL, 45, FLYGON
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, FAINT_ATTACK
	dbw 1, SAND_ATTACK
	dbw 1, SAND_TOMB
	dbw 9, SAND_ATTACK
	dbw 17, FAINT_ATTACK
	dbw 25, BURNING_SAND
	dbw 33, CRUNCH
	dbw 35, DRAGONBREATH
	dbw 41, SCREECH
	dbw 49, SANDSTORM
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

FlygonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, FAINT_ATTACK
	dbw 1, SAND_ATTACK
	dbw 1, SAND_TOMB
	dbw 9, SAND_ATTACK
	dbw 17, FAINT_ATTACK
	dbw 25, BURNING_SAND
	dbw 33, CRUNCH
	dbw 35, DRAGONBREATH
	dbw 41, SCREECH
	dbw 45, DRAGON_CLAW
	dbw 53, SANDSTORM
	dbw 65, HYPER_BEAM
	db 0 ; no more level-up moves

NohfaceEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_EVENITE, KITSUNOH
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 4, DETECT
	dbw 7, QUICK_ATTACK
	dbw 10, SWORDS_DANCE
	dbw 13, NIGHT_SHADE
	dbw 19, SLASH
	dbw 25, FAINT_ATTACK
	dbw 31, CRUSH_CLAW
	dbw 37, OMINOUS_WIND
	dbw 46, GLARE
	dbw 55, NIGHT_SLASH
	db 0 ; no more level-up moves

KitsunohEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 5, DETECT
	dbw 8, QUICK_ATTACK
	dbw 11, SWORDS_DANCE
	dbw 14, NIGHT_SHADE
	dbw 20, SLASH
	dbw 26, FAINT_ATTACK
	dbw 32, CRUSH_CLAW
	dbw 38, OMINOUS_WIND
	dbw 47, GLARE
	dbw 56, NIGHT_SLASH
	db 0 ; no more level-up moves

KrolucadaEvosAttacks:
	dbbw EVOLVE_LEVEL, 42, KROLUCARD
	db 0 ; no more evolutions
	dbw 1, STRING_SHOT
	dbw 10, LEECH_LIFE
	dbw 20, NIGHT_SLASH
	dbw 30, MEGA_DRAIN
	dbw 40, DEFENSE_CURL
	dbw 50, PSYBEAM
	dbw 60, SILVER_WIND
	db 0 ; no more level-up moves

KrolucardEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, STRING_SHOT
	dbw 1, SCRATCH
	dbw 12, LEECH_LIFE
	dbw 22, NIGHT_SLASH
	dbw 32, MEGA_DRAIN
	dbw 42, GIGA_DRAIN ;DRAIN_LIFE
	dbw 52, EXTRASENSORY
	dbw 62, SILVER_WIND
	dbw 67, OMINOUS_WIND
	db 0 ; no more level-up moves

StunkyEvosAttacks:
	dbbw EVOLVE_LEVEL, 38, SKUNTANK
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, POISON_GAS
	dbw 7, SCREECH
	dbw 10, FURY_SWIPES
	dbw 16, SMOKESCREEN
	dbw 25, SLASH
	dbw 28, NIGHT_SLASH
	dbw 34, POISON_FANG
	dbw 37, MEMENTO
	dbw 44, EXPLOSION
	db 0 ; no more level-up moves

SkuntankEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, POISON_GAS
	dbw 8, SCREECH
	dbw 11, FURY_SWIPES
	dbw 17, SMOKESCREEN
	dbw 26, SLASH
	dbw 29, NIGHT_SLASH
	dbw 35, POISON_FANG
	dbw 38, FLAMETHROWER
	dbw 43, MEMENTO
	dbw 53, EXPLOSION
	db 0 ; no more level-up moves

LarvestaEvosAttacks:
	dbbw EVOLVE_LEVEL, 59, VOLCARONA
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, STRING_SHOT
	dbw 10, LEECH_LIFE
	dbw 20, GUST
	dbw 30, FIRE_SPIN
	dbw 40, PSYBEAM
	dbw 50, PURSUIT
	dbw 59, SILVER_WIND
	db 0 ; no more level-up moves

VolcaronaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, STRING_SHOT
	dbw 10, LEECH_LIFE
	dbw 20, GUST
	dbw 30, FIRE_SPIN
	dbw 40, PSYBEAM
	dbw 50, PURSUIT
	dbw 60, SILVER_WIND
	dbw 70, FLAMETHROWER
	dbw 80, TWISTER
	;dbw 90, FIERY_DANCE
	db 0 ; no more level-up moves

ImpidimpEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, MORGREM
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, SCARY_FACE
	dbw 4, FAKE_OUT
	dbw 8, FAKE_TEARS
	dbw 15, LOW_KICK
	dbw 22, FAINT_ATTACK
	dbw 29, SWAGGER
	dbw 36, BEAT_UP
	dbw 44, MACH_PUNCH
	db 0 ; no more level-up moves

MorgremEvosAttacks:
	dbbw EVOLVE_LEVEL, 42, GRIMMSNARL
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, SCARY_FACE
	dbw 5, FAKE_OUT
	dbw 9, FAKE_TEARS
	dbw 16, LOW_KICK
	dbw 23, FAINT_ATTACK
	dbw 30, SWAGGER
	dwb 35, FAINT_ATTACK
	dbw 40, BEAT_UP
	dbw 44, MACH_PUNCH
	dbw 49, TAUNT
	db 0 ; no more level-up moves

GrimmsnarlEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, SCARY_FACE
	dbw 6, FAKE_OUT
	dbw 10, FAKE_TEARS
	dbw 17, LOW_KICK
	dbw 24, FAINT_ATTACK
	dbw 30, SWAGGER
	dwb 33, FAINT_ATTACK
	dbw 37, BEAT_UP
	dbw 42, MACH_PUNCH
	dbw 52, SUPERPOWER
	;bw 56, NIGHT_SLASH
	db 0 ; no more level-up moves

WyrdeerEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 7, CONFUSE_RAY
	dbw 13, ASTONISH
	dbw 19, HYPNOSIS
	dbw 25, STOMP
	dbw 31, SAND_ATTACK
	dbw 37, TAKE_DOWN
	dbw 43, NIGHTMARE
	dbw 49, CALM_MIND
	db 0 ; no more level-up moves

BaltoyEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, CLAYDOL
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 3, HARDEN
	dbw 5, RAPID_SPIN
	dbw 7, MUD_SLAP
	dbw 11, PSYBEAM
	dbw 15, ROCK_TOMB
	dbw 19, SELFDESTRUCT
	dbw 25, ANCIENTPOWER
	dbw 31, SANDSTORM
	dbw 37, COSMIC_POWER
	dbw 45, EXPLOSION
	db 0 ; no more level-up moves

ClaydolEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, HARDEN
	dbw 1, RAPID_SPIN
	dbw 1, TELEPORT
	dbw 3, HARDEN
	dbw 5, RAPID_SPIN
	dbw 7, MUD_SLAP
	dbw 11, PSYBEAM
	dbw 15, ROCK_TOMB
	dbw 19, SELFDESTRUCT
	dbw 25, ANCIENTPOWER
	dbw 31, SANDSTORM
	dbw 36, HYPER_BEAM
	dbw 42, COSMIC_POWER
	dbw 55, EXPLOSION
	db 0 ; no more level-up moves

MunchlaxEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, SNORLAX
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 6, AMNESIA
	dbw 10, DEFENSE_CURL
	dbw 15, BELLY_DRUM
	dbw 19, HEADBUTT
	dbw 24, YAWN
	dbw 28, REST
	dbw 28, SNORE
	dbw 33, BODY_SLAM
	dbw 37, BLOCK
	dbw 42, COVET
	dbw 46, ROLLOUT
	dbw 51, HYPER_BEAM
	db 0 ; no more level-up moves

PurgislugEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ACID
	dbw 1, AMNESIA
	dbw 8, CONSTRICT
	dbw 15, CONFUSION
	dbw 22, SLUDGE
	dbw 29, CONFUSE_RAY
	dbw 36, AMNESIA ;MYSTIC_FLAME
	dbw 48, ANCIENTPOWER
	dbw 60, SPIT_UP
	dbw 60, STOCKPILE
	dbw 60, SWALLOW
	dbw 67, EXTRASENSORY
	db 0 ; no more level-up moves

AnorithEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, ARMALDO
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 7, HARDEN
	dbw 13, MUD_SLAP
	dbw 19, WATER_GUN
	dbw 25, METAL_CLAW
	dbw 31, PROTECT
	dbw 37, ANCIENTPOWER
	dbw 43, FURY_CUTTER
	dbw 49, SLASH
	dbw 55, ROCK_BLAST
	db 0 ; no more level-up moves

ArmaldoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 1, MUD_SLAP
	dbw 1, SCRATCH
	dbw 1, WATER_GUN
	dbw 7, HARDEN
	dbw 13, MUD_SLAP
	dbw 19, WATER_GUN
	dbw 25, METAL_CLAW
	dbw 31, PROTECT
	dbw 37, ANCIENTPOWER
	dbw 46, FURY_CUTTER
	dbw 55, SLASH
	dbw 64, ROCK_BLAST
	db 0 ; no more level-up moves

FeebasEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_MORNDAY, MILOTIC
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 15, TACKLE
	dbw 30, FLAIL
	db 0 ; no more level-up moves

MiloticEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 5, WRAP
	dbw 10, SPLASH
	dbw 15, REFRESH
	dbw 20, WATER_PULSE
	dbw 25, DRAGONBREATH
	dbw 30, RECOVER
	dbw 35, RAIN_DANCE
	dbw 40, HYDRO_PUMP
	dbw 45, ATTRACT
	dbw 50, SAFEGUARD
	dbw 55, DRAGON_PULSE
	db 0 ; no more level-up moves

CastformEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 10, EMBER
	dbw 10, POWDER_SNOW
	dbw 10, WATER_GUN
	dbw 20, HAIL
	dbw 20, RAIN_DANCE
	dbw 20, SUNNY_DAY
	dbw 30, WEATHER_BALL
	db 0 ; no more level-up moves

LitwickEvosAttacks:
	dbbw EVOLVE_LEVEL, 41, LAMPENT
	db 0 ; no more evolutions
	dbw 1, KNOCK_OFF
	dbw 8, SMOG
	dbw 13, NIGHT_SHADE
	dbw 20, CURSE
	dbw 25, EMBER
	dbw 32, WILL_O_WISP
	dbw 37, FIRE_SPIN
	dbw 44, SHADOW_BALL
	dbw 49, GRUDGE
	dbw 56, OVERHEAT
	db 0 ; no more level-up moves

LampentEvosAttacks:
	dbww EVOLVE_ITEM, FIRE_STONE, CHANDELURE
	db 0 ; no more evolutions
	dbw 1, CURSE
	dbw 1, WILL_O_WISP
	dbw 1, NIGHT_SHADE
	dbw 1, SMOG
	dbw 8, SMOG
	dbw 13, NIGHT_SHADE
	dbw 20, CURSE
	dbw 25, EMBER
	dbw 32, WILL_O_WISP
	dbw 39, FIRE_SPIN
	dbw 48, SHADOW_BALL
	dbw 55, GRUDGE
	dbw 64, OVERHEAT
	db 0 ; no more level-up moves

ChandelureEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FIRE_SPIN
	dbw 1, WILL_O_WISP
	dbw 1, SHADOW_BALL
	dbw 1, CONFUSE_RAY
	db 0 ; no more level-up moves

DuskullEvosAttacks:
	dbbw EVOLVE_LEVEL, 37, DUSCLOPS
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, NIGHT_SHADE
	dbw 5, DISABLE
	dbw 12, MEAN_LOOK
	dbw 16, ASTONISH
	dbw 23, CONFUSE_RAY
	dbw 27, PURSUIT
	dbw 34, CURSE
	dbw 38, WILL_O_WISP
	dbw 45, PAIN_SPLIT
	dbw 49, FUTURE_SIGHT
	db 0 ; no more level-up moves

DusclopsEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BIND
	dbw 1, DISABLE
	dbw 1, LEER
	dbw 1, NIGHT_SHADE
	dbw 5, DISABLE
	dbw 12, MEAN_LOOK
	dbw 16, ASTONISH
	dbw 23, CONFUSE_RAY
	dbw 27, PURSUIT
	dbw 34, CURSE
	dbw 37, SHADOW_PUNCH
	dbw 41, WILL_O_WISP
	dbw 51, PAIN_SPLIT
	dbw 58, FUTURE_SIGHT
	db 0 ; no more level-up moves

DecibelleEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 6, GROWL
	dbw 9, ASTONISH
	dbw 14, CONFUSION
	dbw 17, TAKE_DOWN
	dbw 22, UPROAR
	dbw 25, YAWN
	dbw 30, PSYWAVE
	dbw 33, MIRROR_SHOT
	dbw 38, HEAL_BELL
	dbw 41, SAFEGUARD
	dbw 46, PSYCHIC_M
	db 0 ; no more level-up moves

ChimechoEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_MORNDAY, DECIBELLE
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 6, GROWL
	dbw 9, ASTONISH
	dbw 14, CONFUSION
	dbw 17, TAKE_DOWN
	dbw 22, UPROAR
	dbw 25, YAWN
	dbw 30, PSYWAVE
	dbw 33, MIRROR_SHOT
	dbw 38, HEAL_BELL
	dbw 41, SAFEGUARD
	dbw 46, PSYCHIC_M
	db 0 ; no more level-up moves

AbsolEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 5, LEER
	dbw 9, TAUNT
	dbw 13, QUICK_ATTACK
	dbw 17, RAZOR_WIND
	dbw 21, BITE
	dbw 26, SWORDS_DANCE
	dbw 31, DOUBLE_TEAM
	dbw 36, SLASH
	dbw 41, FUTURE_SIGHT
	dbw 46, PERISH_SONG
	db 0 ; no more level-up moves

MagnezoneEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, METAL_SOUND
	dbw 1, SUPERSONIC
	dbw 1, ZAP_CANNON
	dbw 1, MIRROR_SHOT
	db 0 ; no more level-up moves

SnoverEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, ABOMASNOW
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, POWDER_SNOW
	dbw 7, MIST
	dbw 10, RAZOR_LEAF
	dbw 16, ICY_WIND
	dbw 19, GRASSWHISTLE
	dbw 25, INGRAIN
	dbw 28, TAKE_DOWN
	dbw 34, HAIL
	dbw 37, SWAGGER
	dbw 43, BLIZZARD
	db 0 ; no more level-up moves

AbomasnowEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, DOUBLE_TEAM
	dbw 1, LEER
	dbw 1, POWDER_SNOW
	dbw 7, MIST
	dbw 10, RAZOR_LEAF
	dbw 16, ICY_WIND
	dbw 19, GRASSWHISTLE
	dbw 25, INGRAIN
	dbw 28, TAKE_DOWN
	dbw 34, HAIL
	dbw 42, SWAGGER
	dbw 53, BLIZZARD
	dbw 61, SHEER_COLD
	db 0 ; no more level-up moves

TurtwigEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, GROTLE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, WITHDRAW
	dbw 6, ABSORB
	dbw 11, RAZOR_LEAF
	dbw 17, CURSE
	dbw 21, BITE
	dbw 26, LEECH_SEED
	dbw 31, SYNTHESIS
	dbw 36, CRUNCH
	dbw 41, GIGA_DRAIN
	dbw 46, ROCK_SLIDE
	db 0 ; no more level-up moves

GrotleEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, TORTERRA
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, WITHDRAW
	dbw 1, TACKLE
	dbw 6, WITHDRAW
	dbw 11, ABSORB
	dbw 16, RAZOR_LEAF
	dbw 17, CURSE
	dbw 23, BITE
	dbw 29, MEGA_DRAIN
	dbw 35, SYNTHESIS
	dbw 41, CRUNCH
	dbw 47, GIGA_DRAIN
	dbw 53, ROCK_SLIDE
	db 0 ; no more level-up moves

TorterraEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, WITHDRAW
	dbw 1, TACKLE
	dbw 6, WITHDRAW
	dbw 11, ABSORB
	dbw 16, RAZOR_LEAF
	dbw 17, CURSE
	dbw 23, BITE
	dbw 29, MEGA_DRAIN
	dbw 32, EARTHQUAKE
	dbw 35, SYNTHESIS
	dbw 43, CRUNCH
	dbw 51, GIGA_DRAIN
	dbw 59, STONE_EDGE
	db 0 ; no more level-up moves

ChimcharEvosAttacks:
	dbbw EVOLVE_LEVEL, 14, MONFERNO
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 7, TAUNT
	dbw 10, EMBER
	dbw 16, FURY_SWIPES
	dbw 19, FLAME_WHEEL
	dbw 25, FIRE_SPIN
	dbw 28, FACADE
	dbw 34, FAINT_ATTACK
	dbw 37, CALM_MIND
	dbw 43, FIRE_SPIN
	db 0 ; no more level-up moves

MonfernoEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, INFERNAPE
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, TAUNT
	dbw 1, LEER
	dbw 1, SCRATCH
	dbw 7, TAUNT
	dbw 13, EMBER
	dbw 16, MACH_PUNCH
	dbw 17, FURY_SWIPES
	dbw 21, FLAME_WHEEL
	dbw 28, FACADE
	dbw 32, FAINT_ATTACK
	dbw 39, FIRE_SPIN
	dbw 43, CALM_MIND
	dbw 50, OVERHEAT
	db 0 ; no more level-up moves

InfernapeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, LEER
	dbw 1, SCRATCH
	dbw 7, TAUNT
	dbw 13, EMBER
	dbw 16, MACH_PUNCH
	dbw 17, FURY_SWIPES
	dbw 21, FLAME_WHEEL
	dbw 28, FACADE
	dbw 32, FAINT_ATTACK
	dbw 36, LOW_KICK
	dbw 42, FIRE_SPIN
	dbw 49, CALM_MIND
	dbw 59, OVERHEAT
	db 0 ; no more level-up moves

PiplupEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, PRINPLUP
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 6, BUBBLE
	dbw 10, METAL_SOUND
	dbw 15, PECK
	dbw 19, BIDE
	dbw 24, BUBBLEBEAM
	dbw 28, FURY_ATTACK
	dbw 33, SWAGGER
	dbw 37, MIST
	dbw 42, DRILL_PECK
	dbw 46, HYDRO_PUMP
	db 0 ; no more level-up moves
	
PrinplupEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, EMPOLEON
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 6, BUBBLE
	dbw 10, METAL_SOUND
	dbw 15, PECK
	dbw 16, METAL_CLAW
	dbw 19, BIDE
	dbw 24, BUBBLEBEAM
	dbw 28, FURY_ATTACK
	dbw 33, SWAGGER
	dbw 37, MIST
	dbw 42, DRILL_PECK
	dbw 46, HYDRO_PUMP
	db 0 ; no more level-up moves

EmpoleonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 1, BUBBLE
	dbw 6, MUD_SLAP
	dbw 10, SWORDS_DANCE
	dbw 15, PECK
	dbw 16, METAL_CLAW
	dbw 20, BUBBLEBEAM
	dbw 25, SWAGGER
	dbw 31, MIRROR_SHOT
	dbw 39, DIVE
	dbw 46, MIST
	dbw 52, DRILL_PECK
	dbw 61, HYDRO_PUMP
	db 0 ; no more level-up moves

RelicanthEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 8, WATER_GUN
	dbw 15, ROCK_TOMB
	dbw 22, YAWN
	dbw 29, TAKE_DOWN
	dbw 36, DOUBLE_EDGE 
	dbw 43, ANCIENTPOWER
	dbw 50, REST
	dbw 57, STONE_EDGE
	dbw 64, HYDRO_PUMP
	db 0 ; no more level-up moves

LuvdiscEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, CHARM
	dbw 12, WATER_GUN
	dbw 16, AGILITY
	dbw 24, TAKE_DOWN
	dbw 28, ATTRACT
	dbw 36, SWEET_KISS
	dbw 40, FLAIL
	dbw 48, SAFEGUARD
	db 0 ; no more level-up moves

RaelicEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, ROMUSHU
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 5, CONFUSION
	dbw 9, DEFENSE_CURL
	dbw 17, HEADBUTT
	dbw 21, AMNESIA
	dbw 25, MAGICAL_LEAF
	dbw 33, DRAGONBREATH
	dbw 37, MAGIC_COAT
	dbw 41, DOUBLE_EDGE
	dbw 49, DRAGON_PULSE
	db 0 ; no more level-up moves

RomushuEvosAttacks:
	dbbw EVOLVE_LEVEL, 50, FUSANG
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, HEADBUTT
	dbw 1, DEFENSE_CURL
	dbw 5, CONFUSION
	dbw 9, DEFENSE_CURL
	dbw 17, HEADBUTT
	dbw 21, AMNESIA
	dbw 25, MAGICAL_LEAF
	dbw 30, STUN_SPORE
	dbw 38, DRAGONBREATH
	dbw 47, MAGIC_COAT
	dbw 56, DOUBLE_EDGE
	dbw 63, DRAGON_PULSE
	db 0 ; no more level-up moves

FusangEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, HEADBUTT
	dbw 1, DEFENSE_CURL
	dbw 1, DRAGONBREATH
	dbw 5, CONFUSION
	dbw 9, DEFENSE_CURL
	dbw 17, HEADBUTT
	dbw 21, AMNESIA
	dbw 25, MAGICAL_LEAF
	dbw 30, STUN_SPORE
	dbw 38, DRAGONBREATH
	dbw 47, MAGIC_COAT
	dbw 50, ANCIENTPOWER
	dbw 61, EXTRASENSORY
	dbw 79, DRAGON_PULSE
	db 0 ; no more level-up moves

BeldumEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, METANG
	db 0 ; no more evolutions
	dbw 1, TAKE_DOWN
	db 0 ; no more level-up moves

MetangEvosAttacks:
	dbbw EVOLVE_LEVEL, 45, METAGROSS
	db 0 ; no more evolutions
	dbw 1, TAKE_DOWN
	dbw 20, CONFUSION
	dbw 20, METAL_CLAW
	dbw 26, SCARY_FACE
	dbw 32, PURSUIT
	dbw 38, PSYCHIC_M
	dbw 44, IRON_DEFENSE
	dbw 50, METEOR_MASH
	dbw 56, AGILITY
	dbw 62, HYPER_BEAM
	db 0 ; no more level-up moves

MetagrossEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, METAL_CLAW
	dbw 1, SCARY_FACE
	dbw 1, TAKE_DOWN
	dbw 20, CONFUSION
	dbw 20, METAL_CLAW
	dbw 26, SCARY_FACE
	dbw 32, PURSUIT
	dbw 38, PSYCHIC_M
	dbw 44, IRON_DEFENSE
	dbw 55, METEOR_MASH
	dbw 66, AGILITY
	dbw 77, HYPER_BEAM
	db 0 ; no more level-up moves

RegirockEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EXPLOSION
	dbw 9, ROCK_THROW
	dbw 17, CURSE
	dbw 25, SUPERPOWER
	dbw 33, ANCIENTPOWER
	dbw 41, IRON_DEFENSE
	dbw 49, ZAP_CANNON
	dbw 57, LOCK_ON
	dbw 65, HYPER_BEAM
	db 0 ; no more level-up moves

RegiceEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EXPLOSION
	dbw 9, ICY_WIND
	dbw 17, CURSE
	dbw 25, SUPERPOWER
	dbw 33, ANCIENTPOWER
	dbw 41, AMNESIA
	dbw 49, ZAP_CANNON
	dbw 57, LOCK_ON
	dbw 65, HYPER_BEAM
	db 0 ; no more level-up moves

RegisteelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EXPLOSION
	dbw 9, METAL_CLAW
	dbw 17, CURSE
	dbw 25, SUPERPOWER
	dbw 33, ANCIENTPOWER
	dbw 41, AMNESIA
	dbw 41, IRON_DEFENSE
	dbw 49, ZAP_CANNON
	dbw 57, LOCK_ON
	dbw 65, HYPER_BEAM
	db 0 ; no more level-up moves

LatiasEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PSYWAVE
	dbw 5, WISH
	dbw 10, AIR_CUTTER
	dbw 15, SAFEGUARD
	dbw 20, DRAGONBREATH
	dbw 25, DIVE
	dbw 30, REFRESH
	dbw 35, MIST_BALL
	dbw 40, PSYCHIC_M
	dbw 45, RECOVER
	dbw 50, CHARM
	db 0 ; no more level-up moves

LatiosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PSYWAVE
	dbw 5, MEMENTO
	dbw 10, AIR_CUTTER
	dbw 15, SAFEGUARD
	dbw 20, DRAGONBREATH
	dbw 25, PROTECT
	dbw 30, REFRESH
	dbw 35, LUSTER_PURGE
	dbw 40, PSYCHIC_M
	dbw 45, RECOVER
	dbw 50, DRAGON_DANCE
	db 0 ; no more level-up moves

KyogreEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WATER_PULSE
	dbw 5, SCARY_FACE
	dbw 15, ANCIENTPOWER
	dbw 20, BODY_SLAM
	dbw 30, CALM_MIND
	dbw 35, ICE_BEAM
	dbw 45, HYDRO_PUMP
	dbw 50, REST
	dbw 60, SHEER_COLD
	dbw 65, DOUBLE_EDGE
	dbw 75, WATER_SPOUT
	db 0 ; no more level-up moves

GroudonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, MUD_SHOT
	dbw 5, SCARY_FACE
	dbw 15, ANCIENTPOWER
	dbw 20, SLASH
	dbw 30, BULK_UP
	dbw 35, EARTHQUAKE
	dbw 45, FIRE_BLAST
	dbw 50, REST
	dbw 60, FISSURE
	dbw 65, SOLARBEAM
	dbw 75, ERUPTION
	db 0 ; no more level-up moves

RayquazaEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TWISTER
	dbw 5, SCARY_FACE
	dbw 15, ANCIENTPOWER
	dbw 20, DRAGON_CLAW
	dbw 30, DRAGON_DANCE
	dbw 35, CRUNCH
	dbw 45, FLY
	dbw 50, REST
	dbw 60, EXTREMESPEED
	dbw 65, OUTRAGE
	dbw 75, HYPER_BEAM
	db 0 ; no more level-up moves

JirachiEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, WISH
	dbw 5, REST
	dbw 10, SWIFT
	dbw 15, MIRROR_SHOT
	dbw 20, PSYCHIC_M
	dbw 25, REFRESH
	dbw 30, REST
	dbw 35, DOUBLE_EDGE
	dbw 40, FUTURE_SIGHT
	dbw 45, COSMIC_POWER
	dbw 50, DOOM_DESIRE
	db 0 ; no more level-up moves

DeoxysEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, WRAP
	dbw 5, NIGHT_SHADE
	dbw 10, TELEPORT
	dbw 15, KNOCK_OFF
	dbw 20, PURSUIT
	dbw 25, PSYCHIC_M
	dbw 30, SNATCH
	dbw 35, COSMIC_POWER
	dbw 40, RECOVER
	dbw 45, PSYCHO_BOOST
	dbw 50, HYPER_BEAM
	db 0 ; no more level-up moves

ENDSECTION
