MACRO npctrade
; dialog set, requested mon, offered mon, nickname, dvs, item, OT ID, OT name, gender requested
	db \1
	dw \2, \3
	db \4, \5, \6, \7, \8
	dw \9
	shift
	shift
	shift
	dw \7
	db \8, \9
	db 0
ENDM

NPCTrades:
; entries correspond to NPCTRADE_* constants
; TODO: fix IV values for NPCTrades
	table_width NPCTRADE_STRUCT_LENGTH, NPCTrades
	npctrade TRADE_DIALOGSET_COLLECTOR, ABRA,       MACHOP,     "MUSCLE@@@@@", $37, $66, $00, $00, GOLD_BERRY,   37460, "MIKE@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, BELLSPROUT, ONIX,       "ROCKY@@@@@@", $96, $66, $00, $00, BITTER_BERRY, 48926, "KYLE@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_HAPPY,     KRABBY,     VOLTORB,    "VOLTY@@@@@@", $98, $88, $00, $00, PRZCUREBERRY, 29189, "TIM@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      DRAGONAIR,  DODRIO,     "DORIS@@@@@@", $77, $66, $00, $00, SMOKE_BALL,   00283, "EMY@@@@@", TRADE_GENDER_FEMALE
	npctrade TRADE_DIALOGSET_NEWBIE,    HAUNTER,    XATU,       "PAUL@@@@@@@", $96, $86, $00, $00, MYSTERYBERRY, 15616, "CHRIS@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_GIRL,      CHANSEY,    AERODACTYL, "AEROY@@@@@@", $96, $66, $00, $00, GOLD_BERRY,   26491, "KIM@@@@@", TRADE_GENDER_EITHER
	npctrade TRADE_DIALOGSET_COLLECTOR, DUGTRIO,    MAGNETON,   "MAGGIE@@@@@", $96, $66, $00, $00, METAL_COAT,   50082, "FOREST@@", TRADE_GENDER_EITHER
	assert_table_length NUM_NPC_TRADES
