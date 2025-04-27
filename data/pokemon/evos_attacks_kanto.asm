SECTION "Evolutions and Attacks 1", ROMX

EvosAttacksPointers1::
	dw BulbasaurEvosAttacks
	dw IvysaurEvosAttacks
	dw VenusaurEvosAttacks
	dw CharmanderEvosAttacks
	dw CharmeleonEvosAttacks
	dw CharizardEvosAttacks
	dw SquirtleEvosAttacks
	dw WartortleEvosAttacks
	dw BlastoiseEvosAttacks
	dw CaterpieEvosAttacks
	dw MetapodEvosAttacks
	dw ButterfreeEvosAttacks
	dw WeedleEvosAttacks
	dw KakunaEvosAttacks
	dw BeedrillEvosAttacks
	dw PidgeyEvosAttacks
	dw PidgeottoEvosAttacks
	dw PidgeotEvosAttacks
	dw RattataEvosAttacks
	dw RaticateEvosAttacks
	dw SpearowEvosAttacks
	dw FearowEvosAttacks
	dw EkansEvosAttacks
	dw ArbokEvosAttacks
	dw PikachuEvosAttacks
	dw RaichuEvosAttacks
	dw SandshrewEvosAttacks
	dw SandslashEvosAttacks
	dw NidoranFEvosAttacks
	dw NidorinaEvosAttacks
	dw NidoqueenEvosAttacks
	dw NidoranMEvosAttacks
	dw NidorinoEvosAttacks
	dw NidokingEvosAttacks
	dw ClefairyEvosAttacks
	dw ClefableEvosAttacks
	dw VulpixEvosAttacks
	dw NinetalesEvosAttacks
	dw JigglypuffEvosAttacks
	dw WigglytuffEvosAttacks
	dw ZubatEvosAttacks
	dw GolbatEvosAttacks
	dw OddishEvosAttacks
	dw GloomEvosAttacks
	dw VileplumeEvosAttacks
	dw ParasEvosAttacks
	dw ParasectEvosAttacks
	dw VenonatEvosAttacks
	dw VenomothEvosAttacks
	dw DiglettEvosAttacks
	dw DugtrioEvosAttacks
	dw MeowthEvosAttacks
	dw PersianEvosAttacks
	dw PsyduckEvosAttacks
	dw GolduckEvosAttacks
	dw MankeyEvosAttacks
	dw PrimeapeEvosAttacks
	dw GrowlitheEvosAttacks
	dw ArcanineEvosAttacks
	dw PoliwagEvosAttacks
	dw PoliwhirlEvosAttacks
	dw PoliwrathEvosAttacks
	dw AbraEvosAttacks
	dw KadabraEvosAttacks
	dw AlakazamEvosAttacks
	dw MachopEvosAttacks
	dw MachokeEvosAttacks
	dw MachampEvosAttacks
	dw BellsproutEvosAttacks
	dw WeepinbellEvosAttacks
	dw VictreebelEvosAttacks
	dw TentacoolEvosAttacks
	dw TentacruelEvosAttacks
	dw GeodudeEvosAttacks
	dw GravelerEvosAttacks
	dw GolemEvosAttacks
	dw PonytaEvosAttacks
	dw RapidashEvosAttacks
	dw SlowpokeEvosAttacks
	dw SlowbroEvosAttacks
	dw MagnemiteEvosAttacks
	dw MagnetonEvosAttacks
	dw FarfetchDEvosAttacks
	dw DoduoEvosAttacks
	dw DodrioEvosAttacks
	dw SeelEvosAttacks
	dw DewgongEvosAttacks
	dw GrimerEvosAttacks
	dw MukEvosAttacks
	dw ShellderEvosAttacks
	dw CloysterEvosAttacks
	dw GastlyEvosAttacks
	dw HaunterEvosAttacks
	dw GengarEvosAttacks
	dw OnixEvosAttacks
	dw DrowzeeEvosAttacks
	dw HypnoEvosAttacks
	dw KrabbyEvosAttacks
	dw KinglerEvosAttacks
	dw VoltorbEvosAttacks
	dw ElectrodeEvosAttacks
	dw ExeggcuteEvosAttacks
	dw ExeggutorEvosAttacks
	dw CuboneEvosAttacks
	dw MarowakEvosAttacks
	dw HitmonleeEvosAttacks
	dw HitmonchanEvosAttacks
	dw LickitungEvosAttacks
	dw KoffingEvosAttacks
	dw WeezingEvosAttacks
	dw RhyhornEvosAttacks
	dw RhydonEvosAttacks
	dw ChanseyEvosAttacks
	dw TangelaEvosAttacks
	dw KangaskhanEvosAttacks
	dw HorseaEvosAttacks
	dw SeadraEvosAttacks
	dw GoldeenEvosAttacks
	dw SeakingEvosAttacks
	dw StaryuEvosAttacks
	dw StarmieEvosAttacks
	dw MrMimeEvosAttacks
	dw ScytherEvosAttacks
	dw JynxEvosAttacks
	dw ElectabuzzEvosAttacks
	dw MagmarEvosAttacks
	dw PinsirEvosAttacks
	dw TaurosEvosAttacks
	dw MagikarpEvosAttacks
	dw GyaradosEvosAttacks
	dw LaprasEvosAttacks
	dw DittoEvosAttacks
	dw EeveeEvosAttacks
	dw VaporeonEvosAttacks
	dw JolteonEvosAttacks
	dw FlareonEvosAttacks
	dw PorygonEvosAttacks
	dw OmanyteEvosAttacks
	dw OmastarEvosAttacks
	dw KabutoEvosAttacks
	dw KabutopsEvosAttacks
	dw AerodactylEvosAttacks
	dw SnorlaxEvosAttacks
	dw ArticunoEvosAttacks
	dw ZapdosEvosAttacks
	dw MoltresEvosAttacks
	dw DratiniEvosAttacks
	dw DragonairEvosAttacks
	dw DragoniteEvosAttacks
	dw MewtwoEvosAttacks
	dw MewEvosAttacks
.IndirectEnd::

BulbasaurEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, GROWL
	dbw 7, LEECH_SEED
	dbw 10, VINE_WHIP
	dbw 15, POISONPOWDER
	dbw 15, SLEEP_POWDER
	dbw 20, RAZOR_LEAF
	dbw 25, SWEET_SCENT
	dbw 32, GROWTH
	dbw 39, SYNTHESIS
	dbw 46, POWER_WHIP
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, LEECH_SEED
	dbw 4, GROWL
	dbw 7, LEECH_SEED
	dbw 10, VINE_WHIP
	dbw 15, POISONPOWDER
	dbw 15, SLEEP_POWDER
	dbw 22, RAZOR_LEAF
	dbw 29, SWEET_SCENT
	dbw 38, GROWTH
	dbw 47, SYNTHESIS
	dbw 56, POWER_WHIP
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 1, LEECH_SEED
	dbw 1, VINE_WHIP
	dbw 4, GROWL
	dbw 7, LEECH_SEED
	dbw 10, VINE_WHIP
	dbw 15, POISONPOWDER
	dbw 15, SLEEP_POWDER
	dbw 22, RAZOR_LEAF
	dbw 29, SWEET_SCENT
	dbw 41, GROWTH
	dbw 53, SYNTHESIS
	dbw 65, POWER_WHIP
	dbw 72, SOLARBEAM
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 7, EMBER
	dbw 13, SMOKESCREEN
	dbw 19, RAGE
	dbw 25, SCARY_FACE
	dbw 31, FLAMETHROWER
	dbw 37, SLASH
	dbw 43, DRAGON_RAGE
	dbw 49, FIRE_SPIN
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, GROWL
	dbw 1, SCRATCH
	dbw 7, EMBER
	dbw 13, SMOKESCREEN
	dbw 20, RAGE
	dbw 27, SCARY_FACE
	dbw 34, FLAMETHROWER
	dbw 41, SLASH
	dbw 48, DRAGON_RAGE
	dbw 55, FIRE_SPIN
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, GROWL
	dbw 1, SCRATCH
	dbw 1, SMOKESCREEN
	dbw 7, EMBER
	dbw 13, SMOKESCREEN
	dbw 20, RAGE
	dbw 27, SCARY_FACE
	dbw 34, FLAMETHROWER
	dbw 36, WING_ATTACK
	dbw 44, SLASH
	dbw 54, DRAGON_CLAW
	dbw 64, FIRE_SPIN
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, TAIL_WHIP
	dbw 7, BUBBLE
	dbw 10, WITHDRAW
	dbw 13, WATER_GUN
	dbw 18, BITE
	dbw 23, RAPID_SPIN
	dbw 28, PROTECT
	dbw 33, RAIN_DANCE
	dbw 40, SKULL_BASH
	dbw 47, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 4, TAIL_WHIP
	dbw 7, BUBBLE
	dbw 10, WITHDRAW
	dbw 13, WATER_GUN
	dbw 19, BITE
	dbw 25, RAPID_SPIN
	dbw 31, PROTECT
	dbw 37, RAIN_DANCE
	dbw 45, SKULL_BASH
	dbw 53, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 1, WITHDRAW
	dbw 4, TAIL_WHIP
	dbw 7, BUBBLE
	dbw 10, WITHDRAW
	dbw 13, WATER_GUN
	dbw 19, BITE
	dbw 25, RAPID_SPIN
	dbw 31, PROTECT
	dbw 42, RAIN_DANCE
	dbw 55, SKULL_BASH
	dbw 68, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	dbbw EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	dbw 1, STRING_SHOT
	dbw 1, TACKLE
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	dbbw EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 7, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 10, CONFUSION
	dbw 13, POISONPOWDER
	dbw 14, STUN_SPORE
	dbw 15, SLEEP_POWDER
	dbw 18, SUPERSONIC
	dbw 23, WHIRLWIND
	dbw 28, GUST
	dbw 34, PSYBEAM
	dbw 40, SAFEGUARD
	dbw 47, SILVER_WIND
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	dbbw EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, STRING_SHOT
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	dbbw EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 7, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FURY_ATTACK
	dbw 10, FURY_ATTACK
	dbw 15, FOCUS_ENERGY
	dbw 20, TWINEEDLE
	dbw 25, RAGE
	dbw 30, PURSUIT
	dbw 35, PIN_MISSILE
	dbw 40, AGILITY
	dbw 45, ENDEAVOR
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	dbbw EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 5, SAND_ATTACK
	dbw 9, GUST
	dbw 13, QUICK_ATTACK
	dbw 19, WHIRLWIND
	dbw 25, WING_ATTACK
	dbw 31, FEATHERDANCE
	dbw 39, AGILITY
	dbw 47, MIRROR_MOVE
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	dbw 1, GUST
	dbw 1, SAND_ATTACK
	dbw 1, TACKLE
	dbw 5, SAND_ATTACK
	dbw 9, WHIRLWIND
	dbw 13, QUICK_ATTACK
	dbw 20, TAKE_DOWN
	dbw 27, WING_ATTACK
	dbw 34, FEATHERDANCE
	dbw 43, AGILITY
	dbw 52, MIRROR_MOVE
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GUST
	dbw 1, QUICK_ATTACK
	dbw 1, SAND_ATTACK
	dbw 1, TACKLE
	dbw 5, SAND_ATTACK
	dbw 9, WHIRLWIND
	dbw 13, QUICK_ATTACK
	dbw 20, TAKE_DOWN
	dbw 27, WING_ATTACK
	dbw 34, FEATHERDANCE
	dbw 48, AGILITY
	dbw 62, MIRROR_MOVE
	db 0 ; no more level-up moves

RattataEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 7, QUICK_ATTACK
	dbw 13, HYPER_FANG
	dbw 20, FOCUS_ENERGY
	dbw 27, PURSUIT
	dbw 34, SUPER_FANG
	dbw 41, ENDEAVOR
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, TACKLE
	dbw 1, TAIL_WHIP
	dbw 7, QUICK_ATTACK
	dbw 13, HYPER_FANG
	dbw 20, SCARY_FACE
	dbw 30, PURSUIT
	dbw 40, SUPER_FANG
	dbw 50, ENDEAVOR
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 7, PURSUIT
	dbw 13, FURY_ATTACK
	dbw 19, AGILITY
	dbw 25, AERIAL_ACE
	dbw 31, MIRROR_MOVE
	dbw 37, DRILL_PECK
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FURY_ATTACK
	dbw 1, LEER
	dbw 1, PECK
	dbw 7, PURSUIT
	dbw 13, FURY_ATTACK
	dbw 26, BULK_UP
	dbw 32, MIRROR_MOVE
	dbw 40, DRILL_PECK
	dbw 47, BULK_UP
	db 0 ; no more level-up moves

EkansEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, ARBOK
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 8, ACID
	dbw 13, BITE
	dbw 20, GLARE
	dbw 25, HAZE
	dbw 32, POISON_TAIL
	dbw 37, SPIT_UP
	dbw 37, STOCKPILE
	dbw 37, SWALLOW
	dbw 44, CRUNCH
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, LEER
	dbw 1, ACID
	dbw 1, WRAP
	dbw 8, ACID
	dbw 13, BITE
	dbw 20, GLARE
	dbw 28, HAZE
	dbw 38, POISON_TAIL
	dbw 46, SPIT_UP
	dbw 46, STOCKPILE
	dbw 46, SWALLOW
	dbw 56, CRUNCH
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	dbww EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, THUNDERSHOCK
	dbw 6, TAIL_WHIP
	dbw 8, THUNDER_WAVE
	dbw 11, QUICK_ATTACK
	dbw 15, DOUBLE_TEAM
	dbw 20, SLAM
	dbw 26, THUNDERBOLT
	dbw 33, AGILITY
	dbw 41, THUNDER
	dbw 50, LIGHT_SCREEN
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, TAIL_WHIP
	dbw 1, THUNDERSHOCK
	dbw 1, THUNDERBOLT
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 6, DEFENSE_CURL
	dbw 11, MUD_SLAP
	dbw 17, POISON_STING
	dbw 23, SLASH
	dbw 30, SWIFT
	dbw 37, ROCK_TOMB
	dbw 45, SAND_TOMB
	dbw 53, SANDSTORM
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, DEFENSE_CURL
	dbw 1, MUD_SLAP
	dbw 6, FURY_SWIPES
	dbw 11, MUD_SLAP
	dbw 17, POISON_STING
	dbw 24, SLASH
	dbw 33, SWIFT
	dbw 42, ROCK_TOMB
	dbw 52, SAND_TOMB
	dbw 62, SANDSTORM
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 8, TAIL_WHIP
	dbw 12, DOUBLE_KICK
	dbw 17, POISON_STING
	dbw 20, BITE
	dbw 23, POISON_FANG
	dbw 30, FURY_SWIPES
	dbw 38, SWAGGER
	dbw 47, CRUNCH
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	dbww EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 8, TAIL_WHIP
	dbw 12, DOUBLE_KICK
	dbw 18, POISON_STING
	dbw 22, BITE
	dbw 26, POISON_FANG
	dbw 34, FURY_SWIPES
	dbw 43, SWAGGER
	dbw 53, CRUNCH
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, DOUBLE_KICK
	dbw 1, POISON_FANG
	dbw 1, BITE
	dbw 1, BODY_SLAM
	dbw 37, SUPERPOWER
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 8, FOCUS_ENERGY
	dbw 12, DOUBLE_KICK
	dbw 17, POISON_STING
	dbw 20, HORN_ATTACK
	dbw 23, POISON_FANG
	dbw 30, FURY_ATTACK
	dbw 38, SWAGGER
	dbw 47, HORN_DRILL
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	dbww EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, LEER
	dbw 8, FOCUS_ENERGY
	dbw 12, DOUBLE_KICK
	dbw 18, POISON_STING
	dbw 22, HORN_ATTACK
	dbw 26, POISON_FANG
	dbw 34, FURY_ATTACK
	dbw 43, SWAGGER
	dbw 53, HORN_DRILL
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, DOUBLE_KICK
	dbw 1, POISON_FANG
	dbw 1, PECK
	dbw 1, THRASH
	dbw 37, MEGAHORN
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	dbww EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 5, ENCORE
	dbw 9, SING
	dbw 13, DOUBLESLAP
	dbw 17, COSMIC_POWER
	dbw 21, MINIMIZE
	dbw 25, DEFENSE_CURL
	dbw 29, METRONOME
	dbw 33, CALM_MIND
	dbw 37, MOONLIGHT
	dbw 41, LIGHT_SCREEN
	dbw 45, METEOR_MASH
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COMET_PUNCH
	dbw 1, METRONOME
	dbw 1, COSMIC_POWER
	dbw 1, SING
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	dbww EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 5, TAIL_WHIP
	dbw 9, ROAR
	dbw 13, QUICK_ATTACK
	dbw 17, WILL_O_WISP
	dbw 21, CONFUSE_RAY
	dbw 25, IMPRISON
	dbw 29, FLAMETHROWER
	dbw 33, SAFEGUARD
	dbw 37, GRUDGE
	dbw 41, FIRE_SPIN
	dbw 49, MYSTICALFIRE
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSE_RAY
	dbw 1, MYSTICALFIRE
	dbw 1, QUICK_ATTACK
	dbw 1, WILL_O_WISP
	dbw 49, SHADOW_BALL
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	dbww EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	dbw 1, SING
	dbw 4, DEFENSE_CURL
	dbw 9, POUND
	dbw 14, DISABLE
	dbw 19, ROLLOUT
	dbw 24, DOUBLESLAP
	dbw 29, REST
	dbw 34, BODY_SLAM
	dbw 39, MIMIC
	dbw 44, HYPER_VOICE
	dbw 49, DOUBLE_EDGE
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, DEFENSE_CURL
	dbw 1, HYPER_VOICE
	dbw 1, DOUBLESLAP
	dbw 1, SING
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	dbw 1, LEECH_LIFE
	dbw 6, SUPERSONIC
	dbw 11, ASTONISH
	dbw 16, BITE
	dbw 21, WING_ATTACK
	dbw 26, CONFUSE_RAY
	dbw 31, AIR_CUTTER
	dbw 36, MEAN_LOOK
	dbw 41, POISON_FANG
	dbw 46, HAZE
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, LEECH_LIFE
	dbw 1, SCREECH
	dbw 1, SUPERSONIC
	dbw 6, SUPERSONIC
	dbw 11, ASTONISH
	dbw 16, BITE
	dbw 21, WING_ATTACK
	dbw 28, CONFUSE_RAY
	dbw 35, AIR_CUTTER
	dbw 42, MEAN_LOOK
	dbw 49, POISON_FANG
	dbw 56, HAZE
	db 0 ; no more level-up moves

OddishEvosAttacks:
	dbbw EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 7, SWEET_SCENT
	dbw 14, POISONPOWDER
	dbw 16, STUN_SPORE
	dbw 18, SLEEP_POWDER
	dbw 23, ACID
	dbw 32, MOONLIGHT
	dbw 39, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	dbww EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	dbww EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, POISONPOWDER
	dbw 1, SWEET_SCENT
	dbw 7, ACID
	dbw 14, POISONPOWDER
	dbw 16, STUN_SPORE
	dbw 18, SLEEP_POWDER
	dbw 24, SLUDGE
	dbw 35, MOONLIGHT
	dbw 44, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SLUDGE
	dbw 1, AROMATHERAPY
	dbw 1, MEGA_DRAIN
	dbw 1, STUN_SPORE
	dbw 44, PETAL_DANCE
	db 0 ; no more level-up moves

ParasEvosAttacks:
	dbbw EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 7, STUN_SPORE
	dbw 13, POISONPOWDER
	dbw 19, LEECH_LIFE
	dbw 25, SPORE
	dbw 31, SLASH
	dbw 37, GROWTH
	dbw 43, GIGA_DRAIN
	dbw 49, AROMATHERAPY
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISONPOWDER
	dbw 1, SCRATCH
	dbw 1, STUN_SPORE
	dbw 7, STUN_SPORE
	dbw 13, POISONPOWDER
	dbw 19, LEECH_LIFE
	dbw 24, X_SCISSOR
	dbw 27, SPORE
	dbw 35, SLASH
	dbw 43, GROWTH
	dbw 51, GIGA_DRAIN
	dbw 59, AROMATHERAPY
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	dbw 1, DISABLE
	dbw 1, FORESIGHT
	dbw 1, TACKLE
	dbw 9, SUPERSONIC
	dbw 17, CONFUSION
	dbw 20, POISONPOWDER
	dbw 25, LEECH_LIFE
	dbw 28, STUN_SPORE
	dbw 33, PSYBEAM
	dbw 36, SLEEP_POWDER
	dbw 41, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, DISABLE
	dbw 1, FORESIGHT
	dbw 1, SILVER_WIND
	dbw 1, SUPERSONIC
	dbw 1, TACKLE
	dbw 9, SUPERSONIC
	dbw 17, CONFUSION
	dbw 20, POISONPOWDER
	dbw 25, LEECH_LIFE
	dbw 28, STUN_SPORE
	dbw 31, GUST
	dbw 36, PSYBEAM
	dbw 42, SLEEP_POWDER
	dbw 52, PSYCHIC_M
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	dbbw EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, SAND_ATTACK
	dbw 5, GROWL
	dbw 9, MAGNITUDE
	dbw 17, DIG
	dbw 25, MUD_SLAP
	dbw 33, SLASH
	dbw 41, EARTHQUAKE
	dbw 49, FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 1, SAND_ATTACK
	dbw 1, TRI_ATTACK
	dbw 5, GROWL
	dbw 9, MAGNITUDE
	dbw 17, DIG
	dbw 25, MUD_SLAP
	dbw 26, SAND_TOMB
	dbw 38, SLASH
	dbw 51, EARTHQUAKE
	dbw 64, FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 11, BITE
	dbw 20, PAY_DAY
	dbw 28, FAINT_ATTACK
	dbw 35, FURY_SWIPES
	dbw 41, BURNING_SAND
	dbw 46, SLASH
	dbw 50, FAKE_OUT
	dbw 58, NIGHT_SLASH
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, GROWL
	dbw 1, SCRATCH
	dbw 11, BITE
	dbw 20, PAY_DAY
	dbw 29, FAINT_ATTACK
	dbw 38, FURY_SWIPES
	dbw 46, BURNING_SAND
	dbw 53, SLASH
	dbw 59, FAKE_OUT
	dbw 67, NIGHT_SLASH
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, DISABLE
	dbw 5, CONFUSION
	dbw 10, CONFUSION
	dbw 16, PSYCH_UP
	dbw 23, PSYBEAM
	dbw 31, WATER_PULSE
	dbw 40, FURY_SWIPES
	dbw 50, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, DISABLE
	dbw 1, TAIL_WHIP
	dbw 1, CONFUSION
	dbw 5, FURY_SWIPES
	dbw 10, CONFUSION
	dbw 16, PSYCH_UP
	dbw 23, PSYBEAM
	dbw 31, WATER_PULSE
	dbw 44, PSYCHIC_M
	dbw 58, HYDRO_PUMP
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	dbw 1, FURY_SWIPES
	dbw 1, LEER
	dbw 9, LOW_KICK
	dbw 15, KARATE_CHOP
	dbw 21, SCREECH
	dbw 27, FOCUS_ENERGY
	dbw 33, BOUNCE
	dbw 39, CROSS_CHOP
	dbw 45, THRASH
	dbw 51, DOUBLE_EDGE
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FURY_SWIPES
	dbw 1, LEER
	dbw 1, LOW_KICK
	dbw 1, RAGE
	dbw 9, LOW_KICK
	dbw 15, KARATE_CHOP
	dbw 21, SCREECH
	dbw 27, FOCUS_ENERGY
	dbw 28, RAGE
	dbw 36, BOUNCE
	dbw 45, CROSS_CHOP
	dbw 54, THRASH
	dbw 63, DOUBLE_EDGE
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	dbww EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, ROAR
	dbw 7, EMBER
	dbw 13, LEER
	dbw 19, ODOR_SLEUTH
	dbw 25, TAKE_DOWN
	dbw 31, FLAME_WHEEL
	dbw 37, FIRE_SPIN
	dbw 43, AGILITY
	dbw 49, FLAMETHROWER
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, EMBER
	dbw 1, ODOR_SLEUTH
	dbw 1, ROAR
	dbw 49, EXTREMESPEED
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 7, HYPNOSIS
	dbw 13, WATER_GUN
	dbw 19, DOUBLESLAP
	dbw 25, RAIN_DANCE
	dbw 31, BODY_SLAM
	dbw 37, BELLY_DRUM
	dbw 43, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	dbww EVOLVE_ITEM, WATER_STONE, POLIWRATH
	dbww EVOLVE_TRADE, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, HYPNOSIS
	dbw 1, WATER_GUN
	dbw 7, HYPNOSIS
	dbw 13, WATER_GUN
	dbw 19, DOUBLESLAP
	dbw 27, RAIN_DANCE
	dbw 35, BODY_SLAM
	dbw 43, BELLY_DRUM
	dbw 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, DOUBLESLAP
	dbw 1, HYPNOSIS
	dbw 1, SUBMISSION
	dbw 1, WATER_GUN
	dbw 35, SUBMISSION
	dbw 51, MIND_READER
	db 0 ; no more level-up moves

AbraEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	dbw 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	dbww EVOLVE_TRADE, -1, ALAKAZAM
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, KINESIS
	dbw 1, TELEPORT
	dbw 16, CONFUSION
	dbw 18, DISABLE
	dbw 21, PSYBEAM
	dbw 23, REFLECT
	dbw 25, RECOVER
	dbw 30, FUTURE_SIGHT
	dbw 33, ROLE_PLAY
	dbw 36, PSYCHIC_M
	;dbw 43, TRICK
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, KINESIS
	dbw 1, TELEPORT
	dbw 16, CONFUSION
	dbw 18, DISABLE
	dbw 21, PSYBEAM
	dbw 23, REFLECT
	dbw 25, RECOVER
	dbw 30, FUTURE_SIGHT
	dbw 33, CALM_MIND
	dbw 36, PSYCHIC_M
	;dbw 43, TRICK
	db 0 ; no more level-up moves

MachopEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, LOW_KICK
	dbw 7, FOCUS_ENERGY
	dbw 13, KARATE_CHOP
	dbw 19, SEISMIC_TOSS
	dbw 22, FORESIGHT
	dbw 25, REVENGE
	dbw 31, VITAL_THROW
	dbw 37, SUBMISSION
	dbw 40, CROSS_CHOP
	dbw 43, SCARY_FACE
	dbw 49, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	dbww EVOLVE_TRADE, -1, MACHAMP
	db 0 ; no more evolutions
	dbw 1, FOCUS_ENERGY
	dbw 1, LEER
	dbw 1, LOW_KICK
	dbw 7, FOCUS_ENERGY
	dbw 13, KARATE_CHOP
	dbw 19, SEISMIC_TOSS
	dbw 22, FORESIGHT
	dbw 25, REVENGE
	dbw 33, VITAL_THROW
	dbw 41, SUBMISSION
	dbw 46, CROSS_CHOP
	dbw 51, SCARY_FACE
	dbw 59, DYNAMICPUNCH
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FOCUS_ENERGY
	dbw 1, LEER
	dbw 1, LOW_KICK
	dbw 7, FOCUS_ENERGY
	dbw 13, KARATE_CHOP
	dbw 19, SEISMIC_TOSS
	dbw 22, FORESIGHT
	dbw 25, REVENGE
	dbw 33, VITAL_THROW
	dbw 41, SUBMISSION
	dbw 46, CROSS_CHOP
	dbw 51, SCARY_FACE
	dbw 59, DYNAMICPUNCH
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	dbbw EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	dbw 1, VINE_WHIP
	dbw 6, GROWTH
	dbw 11, WRAP
	dbw 15, SLEEP_POWDER
	dbw 17, POISONPOWDER
	dbw 19, STUN_SPORE
	dbw 23, ACID
	dbw 30, SWEET_SCENT
	dbw 37, RAZOR_LEAF
	dbw 45, SLAM
	dbw 51, POWER_WHIP
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	dbww EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	dbw 1, GROWTH
	dbw 1, VINE_WHIP
	dbw 1, WRAP
	dbw 6, GROWTH
	dbw 11, WRAP
	dbw 15, SLEEP_POWDER
	dbw 17, POISONPOWDER
	dbw 19, STUN_SPORE
	dbw 24, ACID
	dbw 33, SWEET_SCENT
	dbw 42, RAZOR_LEAF
	dbw 54, SLAM
	dbw 61, POWER_WHIP
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, RAZOR_LEAF
	dbw 1, SLEEP_POWDER
	dbw 1, POWER_WHIP
	dbw 1, ACID
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 1, WRAP
	dbw 6, SUPERSONIC
	dbw 12, CONSTRICT
	dbw 19, ACID
	dbw 25, BUBBLEBEAM
	dbw 30, BARRIER
	dbw 36, DIVE
	dbw 43, SLUDGE
	dbw 49, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, POISON_STING
	dbw 1, WRAP
	dbw 6, SUPERSONIC
	dbw 12, CONSTRICT
	dbw 19, ACID
	dbw 25, BUBBLEBEAM
	dbw 30, BARRIER
	dbw 38, DIVE
	dbw 47, SLUDGE
	dbw 55, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 6, MUD_SLAP
	dbw 8, ROCK_THROW
	dbw 11, ROCK_BLAST
	dbw 16, MAGNITUDE
	dbw 21, SELFDESTRUCT
	dbw 26, ROLLOUT
	dbw 31, ROCK_SLIDE
	dbw 36, EARTHQUAKE
	dbw 41, EXPLOSION
	dbw 46, STONE_EDGE
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, GRAVELER
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 1, MUD_SLAP
	dbw 1, ROCK_THROW
	dbw 6, MUD_SLAP
	dbw 11, ROCK_BLAST
	dbw 16, MAGNITUDE
	dbw 21, SELFDESTRUCT
	dbw 29, ROLLOUT
	dbw 37, ROCK_SLIDE
	dbw 45, EARTHQUAKE
	dbw 53, EXPLOSION
	dbw 62, STONE_EDGE
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 1, MUD_SLAP
	dbw 1, ROCK_THROW
	dbw 6, MUD_SLAP
	dbw 11, ROCK_BLAST
	dbw 16, MAGNITUDE
	dbw 21, SELFDESTRUCT
	dbw 29, ROLLOUT
	dbw 37, ROCK_SLIDE
	dbw 45, EARTHQUAKE
	dbw 53, EXPLOSION
	dbw 62, STONE_EDGE
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 5, GROWL
	dbw 9, FIRE_SPIN
	dbw 14, STOMP
	dbw 19, DOUBLE_KICK
	dbw 25, BURNING_SAND
	dbw 31, TAKE_DOWN
	dbw 38, AGILITY
	dbw 45, BOUNCE
	dbw 53, FIRE_BLAST
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, GROWL
	dbw 5, GROWL
	dbw 9, FIRE_SPIN
	dbw 14, STOMP
	dbw 19, DOUBLE_KICK
	dbw 25, BURNING_SAND
	dbw 31, TAKE_DOWN
	dbw 38, AGILITY
	dbw 40, FURY_ATTACK
	dbw 50, BOUNCE
	dbw 63, FIRE_BLAST
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	dbbw EVOLVE_LEVEL, 37, SLOWBRO
	dbww EVOLVE_TRADE, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
	dbw 1, CURSE
	dbw 1, TACKLE
	dbw 1, YAWN
	dbw 6, GROWL
	dbw 15, WATER_GUN
	dbw 20, CONFUSION
	dbw 29, DISABLE
	dbw 34, HEADBUTT
	dbw 43, AMNESIA
	dbw 48, PSYCHIC_M
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CURSE
	dbw 1, GROWL
	dbw 1, TACKLE
	dbw 1, YAWN
	dbw 6, GROWL
	dbw 15, WATER_GUN
	dbw 20, CONFUSION
	dbw 29, DISABLE
	dbw 34, HEADBUTT
	dbw 37, WITHDRAW
	dbw 46, AMNESIA
	dbw 54, PSYCHIC_M
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	dbw 1, METAL_SOUND
	dbw 1, TACKLE
	dbw 6, THUNDERSHOCK
	dbw 11, SUPERSONIC
	dbw 16, SONICBOOM
	dbw 21, THUNDER_WAVE
	dbw 26, SPARK
	dbw 32, LOCK_ON
	dbw 38, SWIFT
	dbw 44, MIRROR_SHOT
	dbw 50, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	dbww EVOLVE_ITEM, THUNDERSTONE, MAGNEZONE
	db 0 ; no more evolutions
	dbw 1, METAL_SOUND
	dbw 1, SUPERSONIC
	dbw 1, TACKLE
	dbw 1, THUNDERSHOCK
	dbw 6, THUNDERSHOCK
	dbw 11, SUPERSONIC
	dbw 16, SONICBOOM
	dbw 21, THUNDER_WAVE
	dbw 26, SPARK
	dbw 35, LOCK_ON
	dbw 44, TRI_ATTACK
	dbw 53, MIRROR_SHOT
	dbw 62, ZAP_CANNON
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_EVENITE, MLLOY
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 6, SAND_ATTACK
	dbw 11, LEER
	dbw 16, FURY_ATTACK
	dbw 21, KNOCK_OFF
	dbw 26, FURY_CUTTER
	dbw 31, SWORDS_DANCE
	dbw 36, AGILITY
	dbw 41, SLASH
	dbw 46, FALSE_SWIPE
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	dbw 1, FURY_ATTACK
	dbw 1, GROWL
	dbw 9, PURSUIT
	dbw 13, DOUBLE_KICK
	dbw 21, TRI_ATTACK
	dbw 25, RAGE
	dbw 33, UPROAR
	dbw 37, DRILL_PECK
	dbw 45, AGILITY
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FURY_ATTACK
	dbw 1, GROWL
	dbw 1, PECK
	dbw 9, PURSUIT
	dbw 13, DOUBLE_KICK
	dbw 21, TRI_ATTACK
	dbw 25, RAGE
	dbw 38, UPROAR
	dbw 47, DRILL_PECK
	dbw 60, AGILITY
	db 0 ; no more level-up moves

SeelEvosAttacks:
	dbbw EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	dbw 1, HEADBUTT
	dbw 9, SAFEGUARD
	dbw 17, ICY_WIND
	dbw 21, AURORA_BEAM
	dbw 29, REST
	dbw 29, SLEEP_TALK
	dbw 37, TAKE_DOWN
	dbw 41, ICE_BEAM
	dbw 49, DIVE
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, AURORA_BEAM
	dbw 1, SAFEGUARD
	dbw 1, HEADBUTT
	dbw 1, ICY_WIND
	dbw 9, SAFEGUARD
	dbw 17, ICY_WIND
	dbw 21, AURORA_BEAM
	dbw 29, REST
	dbw 29, SLEEP_TALK
	dbw 34, SHEER_COLD
	dbw 42, TAKE_DOWN
	dbw 51, ICE_BEAM
	dbw 64, DIVE
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	dbbw EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	dbw 1, POISON_GAS
	dbw 1, POUND
	dbw 4, HARDEN
	dbw 8, DISABLE
	dbw 13, SLUDGE
	dbw 19, MINIMIZE
	dbw 26, ACID_ARMOR
	dbw 34, SLUDGE_BOMB
	dbw 43, MEMENTO
	dbw 53, GUNK_SHOT
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 1, POISON_GAS
	dbw 1, POUND
	dbw 4, HARDEN
	dbw 8, DISABLE
	dbw 13, SLUDGE
	dbw 19, MINIMIZE
	dbw 26, ACID_ARMOR
	dbw 34, SLUDGE_BOMB
	dbw 47, MEMENTO
	dbw 61, GUNK_SHOT
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	dbww EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, WITHDRAW
	dbw 9, SUPERSONIC
	dbw 17, AURORA_BEAM
	dbw 25, PROTECT
	dbw 33, CLAMP
	dbw 41, DIVE
	dbw 49, ICE_BEAM
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, AURORA_BEAM
	dbw 1, PROTECT
	dbw 1, SUPERSONIC
	dbw 1, DIVE
	dbw 33, SPIKES
	dbw 41, SPIKE_CANNON
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	dbw 1, LICK
	dbw 1, HYPNOSIS
	dbw 8, SPITE
	dbw 13, MEAN_LOOK
	dbw 16, CURSE
	dbw 21, NIGHT_SHADE
	dbw 28, CONFUSE_RAY
	dbw 33, DREAM_EATER
	dbw 36, DESTINY_BOND
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	dbww EVOLVE_TRADE, -1, GENGAR
	db 0 ; no more evolutions
	dbw 1, LICK
	dbw 1, HYPNOSIS
	dbw 1, SPITE
	dbw 8, SPITE
	dbw 13, MEAN_LOOK
	dbw 16, CURSE
	dbw 21, NIGHT_SHADE
	dbw 25, SHADOW_PUNCH
	dbw 31, CONFUSE_RAY
	dbw 39, DREAM_EATER
	dbw 48, DESTINY_BOND
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LICK
	dbw 1, HYPNOSIS
	dbw 1, SPITE
	dbw 8, SPITE
	dbw 13, MEAN_LOOK
	dbw 16, CURSE
	dbw 21, NIGHT_SHADE
	dbw 25, SHADOW_PUNCH
	dbw 31, CONFUSE_RAY
	dbw 39, DREAM_EATER
	dbw 48, DESTINY_BOND
	db 0 ; no more level-up moves

OnixEvosAttacks:
	dbww EVOLVE_ITEM, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	dbw 1, SAND_TOMB
	dbw 1, SCREECH
	dbw 9, BIND
	dbw 13, ROCK_THROW
	dbw 21, HARDEN
	dbw 25, RAGE
	dbw 33, SANDSTORM
	dbw 37, SLAM
	dbw 45, IRON_TAIL
	dbw 49, STONE_EDGE
	dbw 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	dbbw EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, HYPNOSIS
	dbw 10, DISABLE
	dbw 18, CONFUSION
	dbw 25, HEADBUTT
	dbw 31, POISON_GAS
	dbw 36, MEDITATE
	dbw 40, PSYCHIC_M
	dbw 43, PSYCH_UP
	dbw 45, FUTURE_SIGHT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, DISABLE
	dbw 1, HYPNOSIS
	dbw 1, POUND
	dbw 10, DISABLE
	dbw 18, CONFUSION
	dbw 25, HEADBUTT
	dbw 26, FAINT_ATTACK
	dbw 33, POISON_GAS
	dbw 40, MEDITATE
	dbw 49, PSYCHIC_M
	dbw 55, PSYCH_UP
	dbw 60, FUTURE_SIGHT
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 5, LEER
	dbw 12, VICEGRIP
	dbw 16, METAL_CLAW
	dbw 23, MUD_SHOT
	dbw 27, STOMP
	dbw 34, GUILLOTINE
	dbw 41, PROTECT
	dbw 45, CRABHAMMER
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, VICEGRIP
	dbw 5, LEER
	dbw 12, VICEGRIP
	dbw 16, METAL_CLAW
	dbw 23, MUD_SHOT
	dbw 27, STOMP
	dbw 38, GUILLOTINE
	dbw 49, PROTECT
	dbw 57, CRABHAMMER
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, CHARGE_BEAM
	dbw 8, SCREECH
	dbw 15, SONICBOOM
	dbw 21, SPARK
	dbw 27, SELFDESTRUCT
	dbw 32, ROLLOUT
	dbw 37, LIGHT_SCREEN
	dbw 42, SWIFT
	dbw 46, EXPLOSION
	dbw 49, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, CHARGE_BEAM
	dbw 1, SCREECH
	dbw 1, SONICBOOM
	dbw 8, SCREECH
	dbw 15, SONICBOOM
	dbw 21, SPARK
	dbw 27, SELFDESTRUCT
	dbw 34, ROLLOUT
	dbw 41, LIGHT_SCREEN
	dbw 48, SWIFT
	dbw 54, EXPLOSION
	dbw 59, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	dbww EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	dbw 1, BARRAGE
	dbw 1, HYPNOSIS
	dbw 1, UPROAR
	dbw 7, REFLECT
	dbw 13, LEECH_SEED
	dbw 19, CONFUSION
	dbw 25, STUN_SPORE
	dbw 31, POISONPOWDER
	dbw 37, SLEEP_POWDER
	dbw 43, SOLARBEAM
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BARRAGE
	dbw 1, CONFUSION
	dbw 1, HYPNOSIS
	dbw 19, STOMP
	dbw 31, EGG_BOMB
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 5, TAIL_WHIP
	dbw 9, BONE_CLUB
	dbw 13, HEADBUTT
	dbw 17, LEER
	dbw 21, FOCUS_ENERGY
	dbw 25, BONEMERANG
	dbw 29, RAGE
	dbw 33, FALSE_SWIPE
	dbw 37, THRASH
	dbw 41, BONE_RUSH
	dbw 45, DOUBLE_EDGE
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BONE_CLUB
	dbw 1, GROWL
	dbw 1, HEADBUTT
	dbw 1, TAIL_WHIP
	dbw 5, TAIL_WHIP
	dbw 9, BONE_CLUB
	dbw 13, HEADBUTT
	dbw 17, LEER
	dbw 21, FOCUS_ENERGY
	dbw 25, BONEMERANG
	dbw 32, RAGE
	dbw 39, FALSE_SWIPE
	dbw 46, THRASH
	dbw 53, BONE_RUSH
	dbw 61, DOUBLE_EDGE
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, DOUBLE_KICK
	dbw 1, REVENGE
	dbw 6, MEDITATE
	dbw 11, ROLLING_KICK
	dbw 16, JUMP_KICK
	dbw 20, BRICK_BREAK
	dbw 21, FOCUS_ENERGY
	dbw 26, HI_JUMP_KICK
	dbw 31, MIND_READER
	dbw 36, FORESIGHT
	dbw 41, ENDURE
	dbw 46, MEGA_KICK
	dbw 51, REVERSAL
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COMET_PUNCH
	dbw 1, REVENGE
	dbw 7, AGILITY
	dbw 13, PURSUIT
	dbw 20, MACH_PUNCH
	dbw 26, FIRE_PUNCH
	dbw 26, ICE_PUNCH
	dbw 26, THUNDERPUNCH
	dbw 32, SKY_UPPERCUT
	dbw 38, MEGA_PUNCH
	dbw 44, DETECT
	dbw 50, COUNTER
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LICK
	dbw 7, SUPERSONIC
	dbw 12, DEFENSE_CURL
	dbw 18, KNOCK_OFF
	dbw 23, STOMP
	dbw 29, WRAP
	dbw 34, DISABLE
	dbw 40, SLAM
	dbw 45, SCREECH
	dbw 51, REFRESH
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, POISON_GAS
	dbw 9, SMOG
	dbw 17, SELFDESTRUCT
	dbw 21, SLUDGE
	dbw 25, SMOKESCREEN
	dbw 33, SLUDGE_BOMB
	dbw 41, EXPLOSION
	dbw 45, DESTINY_BOND
	dbw 49, MEMENTO
	dbw 56, GUNK_SHOT
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, POISON_GAS
	dbw 1, SELFDESTRUCT
	dbw 1, SMOG
	dbw 9, HAZE
	dbw 17, SELFDESTRUCT
	dbw 21, SLUDGE
	dbw 25, SMOKESCREEN
	dbw 33, SLUDGE_BOMB
	dbw 44, EXPLOSION
	dbw 51, DESTINY_BOND
	dbw 58, MEMENTO
	dbw 64, GUNK_SHOT
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	dbbw EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	dbw 1, HORN_ATTACK
	dbw 1, SCARY_FACE
	dbw 10, STOMP
	dbw 15, FURY_ATTACK
	dbw 24, ROCK_BLAST
	dbw 29, HORN_DRILL
	dbw 38, STONE_EDGE
	dbw 43, TAKE_DOWN
	dbw 52, EARTHQUAKE
	dbw 57, MEGAHORN
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FURY_ATTACK
	dbw 1, HORN_ATTACK
	dbw 1, STOMP
	dbw 1, SCARY_FACE
	dbw 10, STOMP
	dbw 15, FURY_ATTACK
	dbw 24, ROCK_BLAST
	dbw 29, HORN_DRILL
	dbw 38, STONE_EDGE
	dbw 42, ROCK_WRECKER
	dbw 46, TAKE_DOWN
	dbw 58, EARTHQUAKE
	dbw 66, MEGAHORN
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 5, TAIL_WHIP
	dbw 9, REFRESH
	dbw 13, SOFTBOILED
	dbw 17, DOUBLESLAP
	dbw 23, MINIMIZE
	dbw 29, SING
	dbw 35, EGG_BOMB
	dbw 41, DEFENSE_CURL
	dbw 49, LIGHT_SCREEN
	dbw 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, TANGROWTH
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, INGRAIN
	dbw 4, SLEEP_POWDER
	dbw 10, ABSORB
	dbw 13, GROWTH
	dbw 19, POISONPOWDER
	dbw 22, VINE_WHIP
	dbw 28, BIND
	dbw 31, MEGA_DRAIN
	dbw 37, STUN_SPORE
	dbw 40, SLAM
	dbw 46, TICKLE
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, COMET_PUNCH
	dbw 1, LEER
	dbw 7, BITE
	dbw 13, TAIL_WHIP
	dbw 19, FAKE_OUT
	dbw 25, MEGA_PUNCH
	dbw 31, RAGE
	dbw 37, ENDURE
	dbw 43, DIZZY_PUNCH
	dbw 49, REVERSAL
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 8, SMOKESCREEN
	dbw 15, AGILITY
	dbw 22, WATER_GUN
	dbw 29, TWISTER
	dbw 36, DRAGONBREATH
	dbw 43, HYDRO_PUMP
	dbw 50, DRAGON_DANCE
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	dbww EVOLVE_ITEM, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 1, LEER
	dbw 1, SMOKESCREEN
	dbw 1, WATER_GUN
	dbw 8, SMOKESCREEN
	dbw 15, AGILITY
	dbw 22, WATER_GUN
	dbw 29, TWISTER
	dbw 40, DRAGONBREATH
	dbw 51, HYDRO_PUMP
	dbw 62, DRAGON_DANCE
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, TAIL_WHIP
	dbw 1, BUBBLE
	dbw 10, SUPERSONIC
	dbw 15, HORN_ATTACK
	dbw 24, FLAIL
	dbw 29, FURY_ATTACK
	dbw 38, WATERFALL
	dbw 43, HORN_DRILL
	dbw 52, AGILITY
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, SUPERSONIC
	dbw 1, TAIL_WHIP
	dbw 1, BUBBLE
	dbw 10, SUPERSONIC
	dbw 15, HORN_ATTACK
	dbw 24, FLAIL
	dbw 29, FURY_ATTACK
	dbw 41, WATERFALL
	dbw 49, HORN_DRILL
	dbw 61, AGILITY
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	dbww EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 1, TACKLE
	dbw 6, WATER_GUN
	dbw 10, RAPID_SPIN
	dbw 15, RECOVER
	dbw 19, CAMOUFLAGE
	dbw 24, SWIFT
	dbw 28, BUBBLEBEAM
	dbw 33, MINIMIZE
	dbw 37, LIGHT_SCREEN
	dbw 42, COSMIC_POWER
	dbw 46, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, RAPID_SPIN
	dbw 1, RECOVER
	dbw 1, SWIFT
	dbw 1, BUBBLEBEAM
	dbw 33, CONFUSE_RAY
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BARRIER
	dbw 5, CONFUSION
	dbw 8, SUBSTITUTE
	dbw 12, MEDITATE
	dbw 15, DOUBLESLAP
	dbw 19, LIGHT_SCREEN
	dbw 19, REFLECT
	dbw 22, MAGICAL_LEAF
	dbw 26, ENCORE
	dbw 32, PSYBEAM
	dbw 37, MYSTICALFIRE
	dbw 41, ROLE_PLAY
	dbw 45, PSYCHIC_M
	dbw 49, BATON_PASS
	dbw 53, SAFEGUARD
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	dbww EVOLVE_ITEM, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, QUICK_ATTACK
	dbw 6, FOCUS_ENERGY
	dbw 11, PURSUIT
	dbw 16, FALSE_SWIPE
	dbw 21, AGILITY
	dbw 26, WING_ATTACK
	dbw 31, SLASH
	dbw 36, SWORDS_DANCE
	dbw 41, DOUBLE_TEAM
	dbw 46, X_SCISSOR
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LICK
	dbw 1, LOVELY_KISS
	dbw 1, POUND
	dbw 1, POWDER_SNOW
	dbw 9, LOVELY_KISS
	dbw 13, POWDER_SNOW
	dbw 21, DOUBLESLAP
	dbw 25, ICE_PUNCH
	dbw 35, MEAN_LOOK
	dbw 41, FAKE_TEARS
	dbw 51, BODY_SLAM
	dbw 57, PERISH_SONG
	dbw 67, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	dbbw EVOLVE_LEVEL, 50, ELECTIVIRE
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, QUICK_ATTACK
	dbw 1, THUNDERPUNCH
	dbw 9, THUNDERPUNCH
	dbw 17, LIGHT_SCREEN
	dbw 25, SWIFT
	dbw 36, SCREECH
	dbw 47, THUNDERBOLT
	dbw 58, THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	dbbw EVOLVE_LEVEL, 50, MAGMORTAR
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, FIRE_PUNCH
	dbw 1, LEER
	dbw 1, SMOG
	dbw 7, LEER
	dbw 13, SMOG
	dbw 19, FIRE_PUNCH
	dbw 25, SMOKESCREEN
	dbw 33, SUNNY_DAY
	dbw 41, FLAMETHROWER
	dbw 49, CONFUSE_RAY
	dbw 57, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, FOCUS_ENERGY
	dbw 1, VICEGRIP
	dbw 7, BIND
	dbw 13, SEISMIC_TOSS
	dbw 19, HARDEN
	dbw 25, REVENGE
	dbw 31, X_SCISSOR
	dbw 37, GUILLOTINE
	dbw 43, SUBMISSION
	dbw 49, SWORDS_DANCE
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, TAIL_WHIP
	dbw 8, RAGE
	dbw 13, HORN_ATTACK
	dbw 19, SCARY_FACE
	dbw 26, PURSUIT
	dbw 34, REST
	dbw 43, THRASH
	dbw 53, TAKE_DOWN
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	dbw 1, SPLASH
	dbw 15, TACKLE
	dbw 30, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, THRASH
	dbw 20, BITE
	dbw 25, DRAGON_RAGE
	dbw 30, LEER
	dbw 35, TWISTER
	dbw 40, HYDRO_PUMP
	dbw 45, RAIN_DANCE
	dbw 50, DRAGON_DANCE
	dbw 55, HYPER_BEAM
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 1, SING
	dbw 1, WATER_GUN
	dbw 7, MIST
	dbw 13, BODY_SLAM
	dbw 19, CONFUSE_RAY
	dbw 25, PERISH_SONG
	dbw 31, ICE_BEAM
	dbw 37, RAIN_DANCE
	dbw 43, SAFEGUARD
	dbw 49, HYDRO_PUMP
	dbw 55, SHEER_COLD
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	dbww EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	dbww EVOLVE_ITEM, WATER_STONE, VAPOREON
	dbww EVOLVE_ITEM, FIRE_STONE, FLAREON
	dbww EVOLVE_ITEM, SUN_STONE, ESPEON
	dbww EVOLVE_ITEM, MOON_STONE, UMBREON
	dbww EVOLVE_ITEM, LEAF_STONE, LEAFEON
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, GLACEON
	dbww EVOLVE_ITEM, DRAGON_SCALE, DRACONEON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWTH
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, GROWL
	dbw 23, QUICK_ATTACK
	dbw 30, BITE
	dbw 36, BATON_PASS
	dbw 42, TAKE_DOWN
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWTH
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, WATER_GUN
	dbw 23, QUICK_ATTACK
	dbw 30, BITE
	dbw 36, AURORA_BEAM
	dbw 42, HAZE
	dbw 47, ACID_ARMOR
	dbw 52, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWTH
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, THUNDERSHOCK
	dbw 23, QUICK_ATTACK
	dbw 30, DOUBLE_KICK
	dbw 36, PIN_MISSILE
	dbw 42, THUNDER_WAVE
	dbw 47, AGILITY
	dbw 52, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWTH
	dbw 1, TAIL_WHIP
	dbw 8, SAND_ATTACK
	dbw 16, EMBER
	dbw 23, QUICK_ATTACK
	dbw 30, BITE
	dbw 36, FIRE_SPIN
	dbw 42, SMOG
	dbw 47, BURNING_SAND
	dbw 52, FLAMETHROWER
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	dbww EVOLVE_ITEM, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	dbw 1, CONVERSION
	dbw 1, CONVERSION2
	dbw 1, TACKLE
	dbw 9, AGILITY
	dbw 12, PSYBEAM
	dbw 20, RECOVER
	dbw 24, SHARPEN
	dbw 32, LOCK_ON
	dbw 36, TRI_ATTACK
	dbw 44, CHARGE_BEAM
	dbw 48, ZAP_CANNON
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 1, WITHDRAW
	dbw 13, BITE
	dbw 19, WATER_GUN
	dbw 25, MUD_SHOT
	dbw 31, DIVE
	dbw 37, PROTECT
	dbw 43, TICKLE
	dbw 49, ANCIENTPOWER
	dbw 55, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, CONSTRICT
	dbw 1, WITHDRAW
	dbw 13, BITE
	dbw 19, WATER_GUN
	dbw 25, MUD_SHOT
	dbw 31, DIVE
	dbw 37, PROTECT
	dbw 40, SPIKE_CANNON
	dbw 46, TICKLE
	dbw 55, ANCIENTPOWER
	dbw 65, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	dbbw EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 1, SCRATCH
	dbw 13, ABSORB
	dbw 19, ENDURE
	dbw 25, MUD_SHOT
	dbw 31, SAND_ATTACK
	dbw 37, X_SCISSOR        
	dbw 43, METAL_SOUND
	dbw 49, MEGA_DRAIN
	dbw 55, ANCIENTPOWER
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, HARDEN
	dbw 1, SCRATCH
	dbw 13, ABSORB
	dbw 19, ENDURE
	dbw 25, MUD_SHOT
	dbw 31, SAND_ATTACK
	dbw 37, X_SCISSOR           
	dbw 40, SLASH
	dbw 46, METAL_SOUND
	dbw 55, MEGA_DRAIN
	dbw 65, ANCIENTPOWER
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, WING_ATTACK
	dbw 8, AGILITY
	dbw 15, BITE
	dbw 22, SUPERSONIC
	dbw 29, ANCIENTPOWER
	dbw 36, SCARY_FACE
	dbw 43, TAKE_DOWN
	dbw 50, HYPER_BEAM
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
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

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GUST
	dbw 1, POWDER_SNOW
	dbw 13, MIST
	dbw 25, AGILITY
	dbw 37, MIND_READER
	dbw 49, ICE_BEAM
	dbw 61, REFLECT
	dbw 73, BLIZZARD
	dbw 85, SHEER_COLD
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, THUNDERSHOCK
	dbw 13, THUNDER_WAVE
	dbw 25, AGILITY
	dbw 37, DETECT
	dbw 49, DRILL_PECK
	dbw 61, CHARGE_BEAM
	dbw 73, LIGHT_SCREEN
	dbw 85, THUNDER
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, WING_ATTACK
	dbw 13, FIRE_SPIN
	dbw 25, AGILITY
	dbw 37, ENDURE
	dbw 49, FLAMETHROWER
	dbw 61, SAFEGUARD
	dbw 73, HEAT_WAVE
	dbw 85, SKY_ATTACK
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, WRAP
	dbw 8, THUNDER_WAVE
	dbw 15, TWISTER
	dbw 22, DRAGON_RAGE
	dbw 29, SLAM
	dbw 36, AGILITY
	dbw 43, SAFEGUARD
	dbw 50, OUTRAGE
	dbw 57, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	dbbw EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, THUNDER_WAVE
	dbw 1, TWISTER
	dbw 1, WRAP
	dbw 8, THUNDER_WAVE
	dbw 15, TWISTER
	dbw 22, DRAGON_RAGE
	dbw 29, SLAM
	dbw 38, AGILITY
	dbw 47, SAFEGUARD
	dbw 56, OUTRAGE
	dbw 65, HYPER_BEAM
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, THUNDER_WAVE
	dbw 1, TWISTER
	dbw 1, WRAP
	dbw 8, THUNDER_WAVE
	dbw 15, TWISTER
	dbw 22, DRAGON_RAGE
	dbw 29, SLAM
	dbw 38, AGILITY
	dbw 47, SAFEGUARD
	dbw 55, WING_ATTACK
	dbw 61, OUTRAGE
	dbw 75, HYPER_BEAM
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 1, DISABLE
	dbw 11, BARRIER
	dbw 22, SWIFT
	dbw 33, PSYCH_UP
	dbw 44, FUTURE_SIGHT
	dbw 55, MIST
	dbw 66, PSYCHIC_M
	dbw 77, AMNESIA
	dbw 88, RECOVER
	dbw 99, SAFEGUARD
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 10, TRANSFORM
	dbw 20, MEGA_PUNCH
	dbw 30, METRONOME
	dbw 40, PSYCHIC_M
	dbw 50, ANCIENTPOWER
	db 0 ; no more level-up moves

ENDSECTION
