; Ability descriptions for Pokémon abilities of Gen III
;
; Directly corresponds to the ability IDs (see constants/ability_constants.asm)
; Used to display the ability description on the Stats screen

AbilityDescriptions:
	dw NoAbilityDesc
	dw ArenaTrapDesc
	dw ShadowTagDesc
	dw MagnetPullDesc
	dw BlazeDesc
	dw OvergrowDesc
	dw TorrentDesc
	dw SwarmDesc
	dw GutsDesc
	dw MarvelScaleDesc
	dw PlusDesc
	dw MinusDesc
	dw CompoundeyesDesc
	dw HustleDesc
	dw HugePowerDesc
	dw PurePowerDesc
	dw SpeedBoostDesc
	dw AirLockDesc
	dw CloudNineDesc
	dw ChlorophyllDesc
	dw SwiftSwimDesc
	dw ForecastDesc
	dw DroughtDesc
	dw DrizzleDesc
	dw SandStreamDesc
	dw SandVeilDesc
	dw RainDishDesc
	dw CacophonyDesc
	dw SoundproofDesc
	dw LevitateDesc
	dw WonderGuardDesc
	dw SturdyDesc
	dw SuctionCupsDesc
	dw DampDesc
	dw ClearBodyDesc
	dw WhiteSmokeDesc
	dw RockHeadDesc
	dw BattleArmorDesc
	dw ShellArmorDesc
	dw InnerFocusDesc
	dw KeenEyeDesc
	dw HyperCutterDesc
	dw VitalSpiritDesc
	dw InsomniaDesc
	dw ImmunityDesc
	dw LimberDesc
	dw WaterVeilDesc
	dw ObliviousDesc
	dw OwnTempoDesc
	dw MagmaArmorDesc
	dw ShieldDustDesc
	dw StickyHoldDesc
	dw ThickFatDesc
	dw CuteCharmDesc
	dw EffectSporeDesc
	dw FlameBodyDesc
	dw PoisonPointDesc
	dw StaticDesc
	dw LiquidOozeDesc
	dw SereneGraceDesc
	dw ColorChangeDesc
	dw FlashFireDesc
	dw SynchronizeDesc
	dw LightningrodDesc
	dw VoltAbsorbDesc
	dw WaterAbsorbDesc
	dw RoughSkinDesc
	dw TruantDesc
	dw ShedSkinDesc
	dw EarlyBirdDesc
	dw NaturalCureDesc
	dw IntimidateDesc
	dw TraceDesc
	dw PressureDesc
	dw RunAwayDesc
	dw IlluminateDesc
	dw StenchDesc
	dw PickupDesc

; Actual descriptions start here
NoAbilityDesc:
; This shouldn't be possible, but just in case.
	db    "No special"
	next1 "ability.@"

ArenaTrapDesc:
ShadowTagDesc:
	db    "Prevents foes"
	next1 "from escaping.@"

MagnetPullDesc:
	db    "Prevents STEEL"
	next1 "#MON's escape.@"

BlazeDesc:
	db    "Boosts FIRE moves"
	next1 "in a pinch.@"

OvergrowDesc:
	db    "Boosts GRASS moves"
	next1 "in a pinch.@"

TorrentDesc:
	db    "Boosts WATER moves"
	next1 "in a pinch.@"

SwarmDesc:
	db    "Boosts BUG moves"
	next1 "in a pinch.@"

GutsDesc:
	db    "Boosts ATTACK if"
	next1 "status afflicted.@"

MarvelScaleDesc:
	db    "Boosts DEFENSE if"
	next1 "status afflicted.@"

PlusDesc:
	db    "Boosts SP.ATK in"
	next1 "presence of Minus.@"

MinusDesc:
	db    "Boosts SP.ATK in"
	next1 "presence of Plus.@"

CompoundeyesDesc:
	db    "Boosts ACCURACY"
	next1 "of moves.@"

HustleDesc:
	db    "Boosts ATTACK, but"
	next1 "lowers ACCURACY.@"

HugePowerDesc:
PurePowerDesc:
	    db    "Doubles ATTACK"
	    next1 "power of moves.@"

SpeedBoostDesc:
	db    "Constantly raises"
	next1 "the SPEED stat.@"

AirLockDesc:
CloudNineDesc:
	db    "Protects against"
	next1 "weather effects.@"

ChlorophyllDesc:
	db    "Boosts SPEED in"
	next1 "sunny conditions.@"

SwiftSwimDesc:
	db    "Boosts SPEED in"
	next1 "rainy conditions.@"

ForecastDesc:
	db    "Transforms upon"
	next1 "weather changes.@"

DroughtDesc:
	db    "Causes harsh sun"
	next1 "upon entrance.@"

DrizzleDesc:
	db    "Causes heavy rain"
	next1 "upon entrance.@"

SandStreamDesc:
	db    "Causes a sandstorm"
	next1 "upon entrance.@"

SandVeilDesc:
	db    "Boosts EVASION in"
	next1 "sandstorms.@"

RainDishDesc:
	db    "Heals HP during"
	next1 "rainy weather.@"

CacophonyDesc:
SoundproofDesc:
	db    "Protects against"
	next1 "sound-based moves.@"

LevitateDesc:
	db    "Protects against"
	next1 "GROUND moves.@"

WonderGuardDesc:
	db    "Can only be hit by"
	next1 "SE moves.@"

SturdyDesc:
	db    "Protects against"
	next1 "1-hit KO attacks.@"

SuctionCupsDesc:
	db    "Cannot be forced"
	next1 "to switch or flee.@"

DampDesc:
	db    "Prevents explosive"
	next1 "moves.@"

ClearBodyDesc:
WhiteSmokeDesc:
	db    "Prevents stat loss"
	next1 "from foe's moves.@"

RockHeadDesc:
	db    "Prevents damage"
	next1 "from recoil.@"

BattleArmorDesc:
ShellArmorDesc:
	db    "Prevents critical"
	next1 "hit damage.@"

InnerFocusDesc:
	db    "Prevents flinching"
	next1 "from foe's moves.@"

KeenEyeDesc:
	db    "ACCURACY cannot be"
	next1 "lowered.@"

HyperCutterDesc:
	db    "ATTACK cannot be"
	next1 "lowered by foes.@"

InsomniaDesc:
VitalSpiritDesc:
	db    "Prevents SLEEP."
	next1 "@"

ImmunityDesc:
	db    "Prevents being"
	next1 "POISONED.@"

LimberDesc:
	db    "Prevents being"
	next1 "PARALYZED.@"

WaterVeilDesc:
	db    "Prevents being"
	next1 "BURNED.@"

ObliviousDesc:
	db    "Prevents being"
	next1 "INFATUATED.@"

OwnTempoDesc:
	db    "Prevents being"
	next1 "CONFUSED.@"

MagmaArmorDesc:
	db    "Prevents being"
	next1 "FREEZED.@"

ShieldDustDesc:
	db    "Prevents added"
	next1 "move effects.@"

StickyHoldDesc:
	db    "Prevents item loss"
	next1 "from foes.@"

ThickFatDesc:
	db    "Resists ICE and"
	next1 "FIRE moves.@"

CuteCharmDesc:
	db    "May cause INFATU-"
	next1 "ATION on contact.@"

EffectSporeDesc:
	db    "May cause a status"
	next1 "effect on contact.@"

FlameBodyDesc:
	db    "May cause a BURN"
	next1 "on contact.@"

PoisonPointDesc:
	db    "May cause POISON-"
	next1 "ING on contact.@"

StaticDesc:
	db    "May cause PARA-"
	next1 "LYSIS on contact.@"

LiquidOozeDesc:
	db    "Damages users of"
	next1 "draining moves.@"

SereneGraceDesc:
	db    "Increases chances"
	next1 "of move effects.@"

ColorChangeDesc:
	db    "Matches type of"
	next1 "damaging moves.@"

FlashFireDesc:
	db    "Absorbs FIRE"
	next1 "moves for power.@"

SynchronizeDesc:
	db    "Shares inflicted"
	next1 "status effects.@"

LightningrodDesc:
	db    "Draws all ELECTRIC"
	next1 "moves.@"

VoltAbsorbDesc:
	db    "Heals HP when hit"
	next1 "by ELECTRIC moves.@"

WaterAbsorbDesc:
	db    "Heals HP when hit"
	next1 "by WATER moves.@"

RoughSkinDesc:
	db    "Damages users of"
	next1 "physical moves.@"

TruantDesc:
	db    "Cannot move every"
	next1 "other turn.@"

ShedSkinDesc:
	db    "May heal from a"
	next1 "status effect.@"

EarlyBirdDesc:
	db    "Wakes up quicker"
	next1 "from SLEEP.@"

NaturalCureDesc:
	db    "Heals from status"
	next1 "effects on exit.@"

IntimidateDesc:
	db    "Cuts the foe's"
	next1 "ATTACK.@"

TraceDesc:
	db    "Copies the foe's"
	next1 "ability.@"

PressureDesc:
	db    "Increases PP usage"
	next1 "of foes.@"

RunAwayDesc:
	db    "Guarantees escape"
	next1 "from battles.@"

IlluminateDesc:
	db    "Increases #MON"
	next1 "encounter rate.@"

StenchDesc:
	db    "Decreases #MON"
	next1 "encounter rate.@"

PickupDesc:
	db    "May find items"
	next1 "after battles.@"
