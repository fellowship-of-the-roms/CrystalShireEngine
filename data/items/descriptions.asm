ItemDescriptions:
	indirect_table 2, 1
	indirect_entries NUM_ITEM_POCKET, ItemDescriptions1
	indirect_entries FIRST_KEY_ITEM - 1; sparse Table
	indirect_entries (FIRST_KEY_ITEM - 1) + NUM_KEY_ITEM_POCKET, ItemDescriptionsKeyItems
	indirect_entries FIRST_BALL_ITEM - 1 ; sparse Table
	indirect_entries (FIRST_BALL_ITEM - 1) + NUM_BALL_ITEM_POCKET, ItemDescriptionsBalls
	indirect_entries FIRST_BERRY_ITEM - 1 ; sparse Table
	indirect_entries (FIRST_BERRY_ITEM - 1) + NUM_BERRY_ITEM_POCKET, ItemDescriptionsBerries
	indirect_table_end

ItemDescriptions1:
; entries correspond to item ids (see constants/item_constants.asm)
	dw BrightpowderDesc ; 0001
	dw QuestionMarkDesc ; 0002
	dw MoonStoneDesc    ; 0003
	dw AntidoteDesc     ; 0004
	dw BurnHealDesc     ; 0005
	dw IceHealDesc      ; 0006
	dw AwakeningDesc    ; 0007
	dw ParlyzHealDesc   ; 0008
	dw FullRestoreDesc  ; 0009
	dw MaxPotionDesc    ; 000A
	dw HyperPotionDesc  ; 000B
	dw SuperPotionDesc  ; 000C
	dw PotionDesc       ; 000D
	dw EscapeRopeDesc   ; 000E
	dw RepelDesc        ; 000F
	dw MaxElixerDesc    ; 0010
	dw FireStoneDesc    ; 0011
	dw ThunderStoneDesc ; 0012
	dw WaterStoneDesc   ; 0013
	dw QuestionMarkDesc ; 0014
	dw HPUpDesc         ; 0015
	dw ProteinDesc      ; 0016
	dw IronDesc         ; 0017
	dw CarbosDesc       ; 0018
	dw LuckyPunchDesc   ; 0019
	dw CalciumDesc      ; 001A
	dw RareCandyDesc    ; 001B
	dw XAccuracyDesc    ; 001C
	dw LeafStoneDesc    ; 001D
	dw MetalPowderDesc  ; 001E
	dw NuggetDesc       ; 001F
	dw PokeDollDesc     ; 0020
	dw FullHealDesc     ; 0021
	dw ReviveDesc       ; 0022
	dw MaxReviveDesc    ; 0023
	dw GuardSpecDesc    ; 0024
	dw SuperRepelDesc   ; 0025
	dw MaxRepelDesc     ; 0026
	dw DireHitDesc      ; 0027
	dw QuestionMarkDesc ; 0028
	dw FreshWaterDesc   ; 0029
	dw SodaPopDesc      ; 002A
	dw LemonadeDesc     ; 002B
	dw XAttackDesc      ; 002C
	dw QuestionMarkDesc ; 002D
	dw XDefendDesc      ; 002E
	dw XSpeedDesc       ; 002F
	dw XSpecialDesc     ; 0030
	dw QuestionMarkDesc ; 0031
	dw ExpShareDesc     ; 0032
	dw SilverLeafDesc   ; 0033
	dw PPUpDesc         ; 0034
	dw EtherDesc        ; 0035
	dw MaxEtherDesc     ; 0036
	dw ElixerDesc       ; 0037
	dw MoomooMilkDesc   ; 0038
	dw QuickClawDesc    ; 0039
	dw GoldLeafDesc     ; 003A
	dw SoftSandDesc     ; 003B
	dw SharpBeakDesc    ; 003C
	dw PoisonBarbDesc   ; 003D
	dw KingsRockDesc    ; 003E
	dw TinyMushroomDesc ; 003F
	dw BigMushroomDesc  ; 0040
	dw SilverPowderDesc ; 0041
	dw QuestionMarkDesc ; 0042
	dw AmuletCoinDesc   ; 0043
	dw CleanseTagDesc   ; 0044
	dw MysticWaterDesc  ; 0045
	dw TwistedSpoonDesc ; 0046
	dw BlackbeltDesc    ; 0047
	dw QuestionMarkDesc ; 0048
	dw BlackGlassesDesc ; 0049
	dw SlowpokeTailDesc ; 004A
	dw PinkBowDesc      ; 004B
	dw StickDesc        ; 004C
	dw SmokeBallDesc    ; 004D
	dw NeverMeltIceDesc ; 004E
	dw MagnetDesc       ; 004F
	dw PearlDesc        ; 0050
	dw BigPearlDesc     ; 0051
	dw EverStoneDesc    ; 0052
	dw SpellTagDesc     ; 0053
	dw RageCandyBarDesc ; 0054
	dw MiracleSeedDesc  ; 0055
	dw ThickClubDesc    ; 0056
	dw FocusBandDesc    ; 0057
	dw QuestionMarkDesc ; 0058
	dw EnergyPowderDesc ; 0059
	dw EnergyRootDesc   ; 005A
	dw HealPowderDesc   ; 005B
	dw RevivalHerbDesc  ; 005C
	dw HardStoneDesc    ; 005D
	dw LuckyEggDesc     ; 005E
	dw StardustDesc     ; 005F
	dw StarPieceDesc    ; 0060
	dw QuestionMarkDesc ; 0061
	dw QuestionMarkDesc ; 0062
	dw ZincDesc         ; 0063
	dw CharcoalDesc     ; 0064
	dw BerryJuiceDesc   ; 0065
	dw ScopeLensDesc    ; 0066
	dw QuestionMarkDesc ; 0067
	dw QuestionMarkDesc ; 0068
	dw MetalCoatDesc    ; 0069
	dw DragonFangDesc   ; 006A
	dw QuestionMarkDesc ; 006B
	dw LeftoversDesc    ; 006C
	dw QuestionMarkDesc ; 006D
	dw QuestionMarkDesc ; 006E
	dw QuestionMarkDesc ; 006F
	dw DragonScaleDesc  ; 0070
	dw BerserkGeneDesc  ; 0071
	dw QuestionMarkDesc ; 0072
	dw QuestionMarkDesc ; 0073
	dw QuestionMarkDesc ; 0074
	dw SacredAshDesc    ; 0075
	dw FlowerMailDesc   ; 0076
	dw QuestionMarkDesc ; 0077
	dw LightBallDesc    ; 0078
	dw NormalBoxDesc    ; 0079
	dw GorgeousBoxDesc  ; 007A
	dw SunStoneDesc     ; 007B
	dw PolkadotBowDesc  ; 007C
	dw QuestionMarkDesc ; 007D
	dw UpGradeDesc      ; 007E
	dw QuestionMarkDesc ; 007F
	dw QuestionMarkDesc ; 0080
	dw BrickPieceDesc   ; 0081
	dw SurfMailDesc     ; 0082
	dw LiteBlueMailDesc ; 0083
	dw PortraitMailDesc ; 0084
	dw LovelyMailDesc   ; 0085
	dw EonMailDesc      ; 0086
	dw MorphMailDesc    ; 0087
	dw BlueSkyMailDesc  ; 0088
	dw MusicMailDesc    ; 0089
	dw MirageMailDesc   ; 008A
	dw QuestionMarkDesc ; 008B
	dw QuestionMarkDesc ; 008C
	dw QuestionMarkDesc ; 008D
	dw QuestionMarkDesc ; 008E
.IndirectEnd:

ItemDescriptionsKeyItems:
	dw BicycleDesc      ; 0100
	dw CoinCaseDesc     ; 0101
	dw ItemfinderDesc   ; 0102
	dw OldRodDesc       ; 0103
	dw GoodRodDesc      ; 0104
	dw SuperRodDesc     ; 0105
	dw RedScaleDesc     ; 0106
	dw SecretPotionDesc ; 0107
	dw SSTicketDesc     ; 0108
	dw MysteryEggDesc   ; 0109
	dw ClearBellDesc    ; 010A
	dw SilverWingDesc   ; 010B
	dw GSBallDesc       ; 010C
	dw BlueCardDesc     ; 010D
	dw CardKeyDesc      ; 010E
	dw MachinePartDesc  ; 010F
	dw EggTicketDesc    ; 0110
	dw LostItemDesc     ; 0111
	dw BasementKeyDesc  ; 0112
	dw PassDesc         ; 0113
	dw SquirtBottleDesc ; 0114
	dw RainbowWingDesc  ; 0115
.IndirectEnd:

ItemDescriptionsBalls:
	dw MasterBallDesc ; 0200
	dw UltraBallDesc  ; 0201
	dw GreatBallDesc  ; 0202
	dw PokeBallDesc   ; 0203
	dw HeavyBallDesc  ; 0204
	dw LevelBallDesc  ; 0205
	dw LureBallDesc   ; 0206
	dw FastBallDesc   ; 0207
	dw FriendBallDesc ; 0208
	dw MoonBallDesc   ; 0209
	dw LoveBallDesc   ; 020A
	dw ParkBallDesc   ; 020B
.IndirectEnd:

ItemDescriptionsBerries:
	dw RedApricornDesc  ; 0300
	dw BluApricornDesc  ; 0301
	dw YlwApricornDesc  ; 0302
	dw GrnApricornDesc  ; 0303
	dw WhtApricornDesc  ; 0304
	dw BlkApricornDesc  ; 0305
	dw PnkApricornDesc  ; 0306
	dw PsnCureBerryDesc ; 0307
	dw PrzCureBerryDesc ; 0308
	dw BurntBerryDesc   ; 0309
	dw IceBerryDesc     ; 030A
	dw BitterBerryDesc  ; 030B
	dw MintBerryDesc    ; 030C
	dw MiracleBerryDesc ; 030D
	dw MysteryBerryDesc ; 030E
	dw BerryDesc        ; 030F
	dw GoldBerryDesc    ; 0310
.IndirectEnd:

MasterBallDesc:
	db   "The best BALL. It"
	next "never misses.@"

UltraBallDesc:
	db   "A BALL with a high"
	next "rate of success.@"

BrightpowderDesc:
	db   "Lowers the foe's"
	next "accuracy. (HOLD)@"

GreatBallDesc:
	db   "A BALL with a de-"
	next "cent success rate.@"

PokeBallDesc:
	db   "An item for catch-"
	next "ing #MON.@"

BicycleDesc:
	db   "A collapsible bike"
	next "for fast movement.@"

MoonStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

AntidoteDesc:
	db   "Cures poisoned"
	next "#MON.@"

BurnHealDesc:
	db   "Heals burned"
	next "#MON.@"

IceHealDesc:
	db   "Defrosts frozen"
	next "#MON.@"

AwakeningDesc:
	db   "Awakens sleeping"
	next "#MON.@"

ParlyzHealDesc:
	db   "Heals paralyzed"
	next "#MON.@"

FullRestoreDesc:
	db   "Fully restores HP"
	next "& status.@"

MaxPotionDesc:
	db   "Fully restores"
	next "#MON HP.@"

HyperPotionDesc:
	db   "Restores #MON"
	next "HP by 200.@"

SuperPotionDesc:
	db   "Restores #MON"
	next "HP by 50.@"

PotionDesc:
	db   "Restores #MON"
	next "HP by 20.@"

EscapeRopeDesc:
	db   "Use for escaping"
	next "from caves, etc.@"

RepelDesc:
	db   "Repels weak #-"
	next "MON for 100 steps.@"

MaxElixerDesc:
	db   "Fully restores the"
	next "PP of one #MON.@"

FireStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

ThunderStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

WaterStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

HPUpDesc:
	db   "Raises the HP of"
	next "one #MON.@"

ProteinDesc:
	db   "Raises ATTACK of"
	next "one #MON.@"

IronDesc:
	db   "Raises DEFENSE of"
	next "one #MON.@"

CarbosDesc:
	db   "Raises SPEED of"
	next "one #MON.@"

LuckyPunchDesc:
	db   "Ups critical hit"
	next "ratio of CHANSEY.@"

CalciumDesc:
	db   "Raises SPCL.ATK"
	next "of one #MON.@"

RareCandyDesc:
	db   "Raises level of a"
	next "#MON by one.@"

XAccuracyDesc:
	db   "Raises accuracy."
	next "(1 BTL)@"

LeafStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

MetalPowderDesc:
	db   "Raises DEFENSE of"
	next "DITTO. (HOLD)@"

NuggetDesc:
	db   "Made of pure gold."
	next "Sell high.@"

PokeDollDesc:
	db   "Use to escape from"
	next "a wild #MON.@"

FullHealDesc:
	db   "Eliminates all"
	next "status problems.@"

ReviveDesc:
	db   "Restores a fainted"
	next "#MON to 1/2 HP.@"

MaxReviveDesc:
	db   "Fully restores a"
	next "fainted #MON.@"

GuardSpecDesc:
	db   "Prevents stats"
	next "reduction. (1 BTL)@"

SuperRepelDesc:
	db   "Repels weak #-"
	next "MON for 200 steps.@"

MaxRepelDesc:
	db   "Repels weak #-"
	next "MON for 250 steps.@"

DireHitDesc:
	db   "Ups critical hit"
	next "ratio. (1 BTL)@"

FreshWaterDesc:
	db   "Restores #MON"
	next "HP by 50.@"

SodaPopDesc:
	db   "Restores #MON"
	next "HP by 60.@"

LemonadeDesc:
	db   "Restores #MON"
	next "HP by 80.@"

XAttackDesc:
	db   "Raises ATTACK."
	next "(1 BTL)@"

XDefendDesc:
	db   "Raises DEFENSE."
	next "(1 BTL)@"

XSpeedDesc:
	db   "Raises SPEED."
	next "(1 BTL)@"

XSpecialDesc:
	db   "Raises SPECIAL"
	next "ATTACK. (1 BTL)@"

CoinCaseDesc:
	db   "Holds up to 9,999"
	next "game coins.@"

ItemfinderDesc:
	db   "Checks for unseen"
	next "items in the area.@"

ExpShareDesc:
	db   "Shares battle EXP."
	next "Points. (HOLD)@"

OldRodDesc:
	db   "Use by water to"
	next "fish for #MON.@"

GoodRodDesc:
	db   "A good ROD for"
	next "catching #MON.@"

SilverLeafDesc:
	db   "A strange, silver-"
	next "colored leaf.@"

SuperRodDesc:
	db   "The best ROD for"
	next "catching #MON.@"

PPUpDesc:
	db   "Raises max PP of"
	next "a selected move.@"

EtherDesc:
	db   "Restores PP of one"
	next "move by 10.@"

MaxEtherDesc:
	db   "Fully restores PP"
	next "of one move.@"

ElixerDesc:
	db   "Restores PP of all"
	next "moves by 10.@"

RedScaleDesc:
	db   "A scale from the"
	next "red GYARADOS.@"

SecretPotionDesc:
	db   "Fully heals any"
	next "#MON.@"

SSTicketDesc:
	db   "A ticket for the"
	next "S.S.AQUA.@"

MysteryEggDesc:
	db   "An EGG obtained"
	next "from MR.#MON.@"

ClearBellDesc:
	db   "Makes a gentle"
	next "ringing.@"

SilverWingDesc:
	db   "A strange, silver-"
	next "colored feather.@"

MoomooMilkDesc:
	db   "Restores #MON"
	next "HP by 100.@"

QuickClawDesc:
	db   "Raises 1st strike"
	next "ratio. (HOLD)@"

PsnCureBerryDesc:
	db   "A self-cure for"
	next "poison. (HOLD)@"

GoldLeafDesc:
	db   "A strange, gold-"
	next "colored leaf.@"

SoftSandDesc:
	db   "Powers up ground-"
	next "type moves. (HOLD)@"

SharpBeakDesc:
	db   "Powers up flying-"
	next "type moves. (HOLD)@"

PrzCureBerryDesc:
	db   "A self-cure for"
	next "paralysis. (HOLD)@"

BurntBerryDesc:
	db   "A self-cure for"
	next "freezing. (HOLD)@"

IceBerryDesc:
	db   "A self-heal for a"
	next "burn. (HOLD)@"

PoisonBarbDesc:
	db   "Powers up poison-"
	next "type moves. (HOLD)@"

KingsRockDesc:
	db   "May make the foe"
	next "flinch. (HOLD)@"

BitterBerryDesc:
	db   "A self-cure for"
	next "confusion. (HOLD)@"

MintBerryDesc:
	db   "A self-awakening"
	next "for sleep. (HOLD)@"

RedApricornDesc:
	db   "A red APRICORN.@"

TinyMushroomDesc:
	db   "An ordinary mush-"
	next "room. Sell low.@"

BigMushroomDesc:
	db   "A rare mushroom."
	next "Sell high.@"

SilverPowderDesc:
	db   "Powers up bug-type"
	next "moves. (HOLD)@"

BluApricornDesc:
	db   "A blue APRICORN.@"

AmuletCoinDesc:
	db   "Doubles monetary"
	next "earnings. (HOLD)@"

YlwApricornDesc:
	db   "A yellow APRICORN.@"

GrnApricornDesc:
	db   "A green APRICORN.@"

CleanseTagDesc:
	db   "Helps repel wild"
	next "#MON. (HOLD)@"

MysticWaterDesc:
	db   "Powers up water-"
	next "type moves. (HOLD)@"

TwistedSpoonDesc:
	db   "Powers up psychic-"
	next "type moves. (HOLD)@"

WhtApricornDesc:
	db   "A white APRICORN.@"

BlackbeltDesc:
	db   "Boosts fighting-"
	next "type moves. (HOLD)@"

BlkApricornDesc:
	db   "A black APRICORN."
	next "@"

PnkApricornDesc:
	db   "A pink APRICORN."
	next "@"

BlackGlassesDesc:
	db   "Powers up dark-"
	next "type moves. (HOLD)@"

SlowpokeTailDesc:
	db   "Very tasty. Sell"
	next "high.@"

PinkBowDesc:
	db   "Powers up normal-"
	next "type moves. (HOLD)@"

StickDesc:
	db   "An ordinary stick."
	next "Sell low.@"

SmokeBallDesc:
	db   "Escape from wild"
	next "#MON. (HOLD)@"

NeverMeltIceDesc:
	db   "Powers up ice-type"
	next "moves. (HOLD)@"

MagnetDesc:
	db   "Boosts electric-"
	next "type moves. (HOLD)@"

MiracleBerryDesc:
	db   "Cures all status"
	next "problems. (HOLD)@"

PearlDesc:
	db   "A beautiful pearl."
	next "Sell low.@"

BigPearlDesc:
	db   "A big, beautiful"
	next "pearl. Sell high.@"

EverStoneDesc:
	db   "Stops evolution."
	next "(HOLD)@"

SpellTagDesc:
	db   "Powers up ghost-"
	next "type moves. (HOLD)@"

RageCandyBarDesc:
	db   "Restores #MON"
	next "HP by 20.@"

GSBallDesc:
	db   "The mysterious"
	next "BALL.@"

BlueCardDesc:
	db   "Card to save"
	next "points.@"

MiracleSeedDesc:
	db   "Powers up grass-"
	next "type moves. (HOLD)@"

ThickClubDesc:
	db   "A bone of some"
	next "sort. Sell low.@"

FocusBandDesc:
	db   "May prevent faint-"
	next "ing. (HOLD)@"

EnergyPowderDesc:
	db   "Restores #MON"
	next "HP by 50. Bitter.@"

EnergyRootDesc:
	db   "Restores #MON"
	next "HP by 200. Bitter.@"

HealPowderDesc:
	db   "Cures all status"
	next "problems. Bitter.@"

RevivalHerbDesc:
	db   "Revives fainted"
	next "#MON. Bitter.@"

HardStoneDesc:
	db   "Powers up rock-"
	next "type moves. (HOLD)@"

LuckyEggDesc:
	db   "Earns extra EXP."
	next "points. (HOLD)@"

CardKeyDesc:
	db   "Opens shutters in"
	next "the RADIO TOWER.@"

MachinePartDesc:
	db   "A machine part for"
	next "the POWER PLANT.@"

EggTicketDesc:
	db   "May use at Golden-"
	next "rod trade corner.@"

LostItemDesc:
	db   "The # DOLL lost"
	next "by the COPYCAT.@"

StardustDesc:
	db   "Pretty, red sand."
	next "Sell high.@"

StarPieceDesc:
	db   "A hunk of red gem."
	next "Sell very high.@"

BasementKeyDesc:
	db   "Opens doors.@"

PassDesc:
	db   "A ticket for the"
	next "MAGNET TRAIN.@"

ZincDesc:
	db   "Raises SPCL.DEF"
	next "of one #MON.@"

CharcoalDesc:
	db   "Powers up fire-"
	next "type moves. (HOLD)@"

BerryJuiceDesc:
	db   "Restores #MON"
	next "HP by 20.@"

ScopeLensDesc:
	db   "Raises critical"
	next "hit ratio. (HOLD)@"

MetalCoatDesc:
	db   "Powers up steel-"
	next "type moves. (HOLD)@"

DragonFangDesc:
	db   "Powers up dragon-"
	next "type moves. (HOLD)@"

LeftoversDesc:
	db   "Restores HP during"
	next "battle. (HOLD)@"

MysteryBerryDesc:
	db   "A self-restore"
	next "for PP. (HOLD)@"

DragonScaleDesc:
	db   "A rare dragon-type"
	next "item.@"

BerserkGeneDesc:
	db   "Boosts ATTACK but"
	next "causes confusion.@"

SacredAshDesc:
	db   "Fully revives all"
	next "fainted #MON.@"

HeavyBallDesc:
	db   "A BALL for catch-"
	next "ing heavy #MON.@"

FlowerMailDesc:
	db   "Flower-print MAIL."
	next "(HOLD)@"

LevelBallDesc:
	db   "A BALL for lower-"
	next "level #MON.@"

LureBallDesc:
	db   "A BALL for #MON"
	next "hooked by a ROD.@"

FastBallDesc:
	db   "A BALL for catch-"
	next "ing fast #MON.@"

LightBallDesc:
	db   "An odd, electrical"
	next "orb. (HOLD)@"

FriendBallDesc:
	db   "A BALL that makes"
	next "#MON friendly.@"

MoonBallDesc:
	db   "A BALL for MOON"
	next "STONE evolvers.@"

LoveBallDesc:
	db   "For catching the"
	next "opposite gender.@"

NormalBoxDesc:
	db   "Open it and see"
	next "what's inside.@"

GorgeousBoxDesc:
	db   "Open it and see"
	next "what's inside.@"

SunStoneDesc:
	db   "Evolves certain"
	next "kinds of #MON.@"

PolkadotBowDesc:
	db   "Powers up normal-"
	next "type moves. (HOLD)@"

UpGradeDesc:
	db   "A mysterious box"
	next "made by SILPH CO.@"

BerryDesc:
	db   "A self-restore"
	next "item. (10HP, HOLD)@"

GoldBerryDesc:
	db   "A self-restore"
	next "item. (30HP, HOLD)@"

SquirtBottleDesc:
	db   "A bottle used for"
	next "watering plants.@"

ParkBallDesc:
	db   "The Bug-Catching"
	next "Contest BALL.@"

RainbowWingDesc:
	db   "A mystical feather"
	next "of rainbow colors.@"

QuestionMarkDesc:
	db   "?@"

BrickPieceDesc:
	db   "A rare chunk of"
	next "tile.@"

SurfMailDesc:
	db   "LAPRAS-print MAIL."
	next "(HOLD)@"

LiteBlueMailDesc:
	db   "DRATINI-print"
	next "MAIL. (HOLD)@"

PortraitMailDesc:
	db   "MAIL featuring the"
	next "holder's likeness.@"

LovelyMailDesc:
	db   "Heart-print MAIL."
	next "(HOLD)@"

EonMailDesc:
	db   "EEVEE-print MAIL."
	next "(HOLD)@"

MorphMailDesc:
	db   "DITTO-print MAIL."
	next "(HOLD)@"

BlueSkyMailDesc:
	db   "Sky-print MAIL."
	next "(HOLD)@"

MusicMailDesc:
	db   "NATU-print MAIL."
	next "(HOLD)@"

MirageMailDesc:
	db   "MEW-print MAIL."
	next "(HOLD)@"
