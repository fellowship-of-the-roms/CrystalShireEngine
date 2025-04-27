MACRO battleanimoam
; vtile offset, data length, data pointer
	db \1, \2
	dw \3
ENDM

BattleAnimOAMData:
; entries correspond to BATTLE_ANIM_OAMSET_* constants
	table_width 4
	battleanimoam $00, 16, .OAMData_000 ; BATTLE_ANIM_OAMSET_000
	battleanimoam $04,  9, .OAMData_001 ; BATTLE_ANIM_OAMSET_001
	battleanimoam $08,  4, .OAMData_002 ; BATTLE_ANIM_OAMSET_002
	battleanimoam $09,  4, .OAMData_003 ; BATTLE_ANIM_OAMSET_003
	battleanimoam $0d,  4, .OAMData_004 ; BATTLE_ANIM_OAMSET_004
	battleanimoam $0f,  4, .OAMData_003 ; BATTLE_ANIM_OAMSET_005
	battleanimoam $13,  4, .OAMData_004 ; BATTLE_ANIM_OAMSET_006
	battleanimoam $04, 16, .OAMData_000 ; BATTLE_ANIM_OAMSET_007
	battleanimoam $08, 16, .OAMData_000 ; BATTLE_ANIM_OAMSET_008
	battleanimoam $08, 16, .OAMData_009 ; BATTLE_ANIM_OAMSET_009
	battleanimoam $00,  4, .OAMData_004 ; BATTLE_ANIM_OAMSET_00A
	battleanimoam $02,  4, .OAMData_003 ; BATTLE_ANIM_OAMSET_00B
	battleanimoam $06,  2, .OAMData_00c ; BATTLE_ANIM_OAMSET_00C
	battleanimoam $07,  2, .OAMData_00c ; BATTLE_ANIM_OAMSET_00D
	battleanimoam $02,  4, .OAMData_004 ; BATTLE_ANIM_OAMSET_00E
	battleanimoam $04,  1, .OAMData_00f ; BATTLE_ANIM_OAMSET_00F
	battleanimoam $05,  1, .OAMData_00f ; BATTLE_ANIM_OAMSET_010
	battleanimoam $00,  2, .OAMData_011 ; BATTLE_ANIM_OAMSET_011
	battleanimoam $02,  2, .OAMData_011 ; BATTLE_ANIM_OAMSET_012
	battleanimoam $00,  4, .OAMData_013 ; BATTLE_ANIM_OAMSET_013
	battleanimoam $00,  1, .OAMData_00f ; BATTLE_ANIM_OAMSET_014
	battleanimoam $01,  1, .OAMData_00f ; BATTLE_ANIM_OAMSET_015
	battleanimoam $02,  1, .OAMData_00f ; BATTLE_ANIM_OAMSET_016
	battleanimoam $03,  1, .OAMData_00f ; BATTLE_ANIM_OAMSET_017
	battleanimoam $00,  4, .OAMData_002 ; BATTLE_ANIM_OAMSET_018
	battleanimoam $01, 16, .OAMData_000 ; BATTLE_ANIM_OAMSET_019
	battleanimoam $05, 16, .OAMData_000 ; BATTLE_ANIM_OAMSET_01A
	battleanimoam $00,  4, .OAMData_003 ; BATTLE_ANIM_OAMSET_01B
	battleanimoam $05, 12, .OAMData_01c ; BATTLE_ANIM_OAMSET_01C
	battleanimoam $02,  4, .OAMData_002 ; BATTLE_ANIM_OAMSET_01D
	battleanimoam $06,  1, .OAMData_00f ; BATTLE_ANIM_OAMSET_01E
	battleanimoam $07,  1, .OAMData_00f ; BATTLE_ANIM_OAMSET_01F
	battleanimoam $08,  1, .OAMData_00f ; BATTLE_ANIM_OAMSET_020
	battleanimoam $04,  4, .OAMData_003 ; BATTLE_ANIM_OAMSET_021
	battleanimoam $09, 22, .OAMData_022 ; BATTLE_ANIM_OAMSET_022
	battleanimoam $04,  2, .OAMData_011 ; BATTLE_ANIM_OAMSET_023
	battleanimoam $06,  2, .OAMData_011 ; BATTLE_ANIM_OAMSET_024
	battleanimoam $0c,  1, .OAMData_00f ; BATTLE_ANIM_OAMSET_025
	battleanimoam $0a,  1, .OAMData_00f ; BATTLE_ANIM_OAMSET_026
	battleanimoam $0b,  4, .OAMData_002 ; BATTLE_ANIM_OAMSET_027
	battleanimoam $08,  4, .OAMData_004 ; BATTLE_ANIM_OAMSET_028
	battleanimoam $06,  4, .OAMData_004 ; BATTLE_ANIM_OAMSET_029
	battleanimoam $00,  5, .OAMData_02a ; BATTLE_ANIM_OAMSET_02A
	battleanimoam $03,  6, .OAMData_02b ; BATTLE_ANIM_OAMSET_02B
	battleanimoam $00,  7, .OAMData_02c ; BATTLE_ANIM_OAMSET_02C
	battleanimoam $03,  8, .OAMData_02d ; BATTLE_ANIM_OAMSET_02D
	battleanimoam $00,  9, .OAMData_02e ; BATTLE_ANIM_OAMSET_02E
	battleanimoam $00,  4, .OAMData_02f ; BATTLE_ANIM_OAMSET_02F
	battleanimoam $02,  4, .OAMData_030 ; BATTLE_ANIM_OAMSET_030
	battleanimoam $04,  6, .OAMData_031 ; BATTLE_ANIM_OAMSET_031
	battleanimoam $00,  2, .OAMData_032 ; BATTLE_ANIM_OAMSET_032
	battleanimoam $00,  7, .OAMData_033 ; BATTLE_ANIM_OAMSET_033
	battleanimoam $00, 14, .OAMData_032 ; BATTLE_ANIM_OAMSET_034
	battleanimoam $00, 21, .OAMData_033 ; BATTLE_ANIM_OAMSET_035
	battleanimoam $00,  2, .OAMData_036 ; BATTLE_ANIM_OAMSET_036
	battleanimoam $00,  6, .OAMData_036 ; BATTLE_ANIM_OAMSET_037
	battleanimoam $00, 10, .OAMData_036 ; BATTLE_ANIM_OAMSET_038
	battleanimoam $00, 14, .OAMData_036 ; BATTLE_ANIM_OAMSET_039
	battleanimoam $00,  2, .OAMData_03a ; BATTLE_ANIM_OAMSET_03A
	battleanimoam $00,  6, .OAMData_03a ; BATTLE_ANIM_OAMSET_03B
	battleanimoam $00, 10, .OAMData_03a ; BATTLE_ANIM_OAMSET_03C
	battleanimoam $00, 14, .OAMData_03a ; BATTLE_ANIM_OAMSET_03D
	battleanimoam $00,  4, .OAMData_03e ; BATTLE_ANIM_OAMSET_03E
	battleanimoam $00, 16, .OAMData_03e ; BATTLE_ANIM_OAMSET_03F
	battleanimoam $00, 26, .OAMData_03e ; BATTLE_ANIM_OAMSET_040
	battleanimoam $00, 26, .OAMData_041 ; BATTLE_ANIM_OAMSET_041
	battleanimoam $0e,  4, .OAMData_042 ; BATTLE_ANIM_OAMSET_042
	battleanimoam $0e,  8, .OAMData_042 ; BATTLE_ANIM_OAMSET_043
	battleanimoam $0e,  4, .OAMData_044 ; BATTLE_ANIM_OAMSET_044
	battleanimoam $0e,  8, .OAMData_044 ; BATTLE_ANIM_OAMSET_045
	battleanimoam $0e,  4, .OAMData_046 ; BATTLE_ANIM_OAMSET_046
	battleanimoam $0e,  4, .OAMData_047 ; BATTLE_ANIM_OAMSET_047
	battleanimoam $00,  6, .OAMData_048 ; BATTLE_ANIM_OAMSET_048
	battleanimoam $03,  4, .OAMData_049 ; BATTLE_ANIM_OAMSET_049
	battleanimoam $03,  2, .OAMData_04a ; BATTLE_ANIM_OAMSET_04A
	battleanimoam $01,  5, .OAMData_00f ; BATTLE_ANIM_OAMSET_04B
	battleanimoam $01,  6, .OAMData_04c ; BATTLE_ANIM_OAMSET_04C
	battleanimoam $01,  7, .OAMData_04d ; BATTLE_ANIM_OAMSET_04D
	battleanimoam $01,  3, .OAMData_04d ; BATTLE_ANIM_OAMSET_04E
	battleanimoam $01,  8, .OAMData_04f ; BATTLE_ANIM_OAMSET_04F
	battleanimoam $01,  9, .OAMData_050 ; BATTLE_ANIM_OAMSET_050
	battleanimoam $01, 10, .OAMData_051 ; BATTLE_ANIM_OAMSET_051
	battleanimoam $01,  6, .OAMData_051 ; BATTLE_ANIM_OAMSET_052
	battleanimoam $00,  9, .OAMData_001 ; BATTLE_ANIM_OAMSET_053
	battleanimoam $04,  4, .OAMData_002 ; BATTLE_ANIM_OAMSET_054
	battleanimoam $05,  4, .OAMData_002 ; BATTLE_ANIM_OAMSET_055
	battleanimoam $00,  2, .OAMData_056 ; BATTLE_ANIM_OAMSET_056
	battleanimoam $02,  2, .OAMData_056 ; BATTLE_ANIM_OAMSET_057
	battleanimoam $04,  2, .OAMData_056 ; BATTLE_ANIM_OAMSET_058
	battleanimoam $02,  4, .OAMData_059 ; BATTLE_ANIM_OAMSET_059
	battleanimoam $02,  4, .OAMData_05a ; BATTLE_ANIM_OAMSET_05A
	battleanimoam $02,  2, .OAMData_00c ; BATTLE_ANIM_OAMSET_05B
	battleanimoam $04,  2, .OAMData_00c ; BATTLE_ANIM_OAMSET_05C
	battleanimoam $06,  4, .OAMData_05d ; BATTLE_ANIM_OAMSET_05D
	battleanimoam $08,  2, .OAMData_00c ; BATTLE_ANIM_OAMSET_05E
	battleanimoam $09,  2, .OAMData_00c ; BATTLE_ANIM_OAMSET_05F
	battleanimoam $05,  2, .OAMData_060 ; BATTLE_ANIM_OAMSET_060
	battleanimoam $00,  2, .OAMData_061 ; BATTLE_ANIM_OAMSET_061
	battleanimoam $00,  5, .OAMData_061 ; BATTLE_ANIM_OAMSET_062
	battleanimoam $00,  9, .OAMData_061 ; BATTLE_ANIM_OAMSET_063
	battleanimoam $09,  9, .OAMData_061 ; BATTLE_ANIM_OAMSET_064
	battleanimoam $00,  4, .OAMData_065 ; BATTLE_ANIM_OAMSET_065
	battleanimoam $00,  7, .OAMData_065 ; BATTLE_ANIM_OAMSET_066
	battleanimoam $00,  9, .OAMData_065 ; BATTLE_ANIM_OAMSET_067
	battleanimoam $09,  9, .OAMData_065 ; BATTLE_ANIM_OAMSET_068
	battleanimoam $04,  1, .OAMData_069 ; BATTLE_ANIM_OAMSET_069
	battleanimoam $05,  2, .OAMData_06a ; BATTLE_ANIM_OAMSET_06A
	battleanimoam $06,  4, .OAMData_003 ; BATTLE_ANIM_OAMSET_06B
	battleanimoam $0a,  4, .OAMData_003 ; BATTLE_ANIM_OAMSET_06C
	battleanimoam $0e,  4, .OAMData_003 ; BATTLE_ANIM_OAMSET_06D
	battleanimoam $08,  5, .OAMData_06e ; BATTLE_ANIM_OAMSET_06E
	battleanimoam $0d,  3, .OAMData_06f ; BATTLE_ANIM_OAMSET_06F
	battleanimoam $01,  8, .OAMData_070 ; BATTLE_ANIM_OAMSET_070
	battleanimoam $03,  8, .OAMData_070 ; BATTLE_ANIM_OAMSET_071
	battleanimoam $05,  8, .OAMData_070 ; BATTLE_ANIM_OAMSET_072
	battleanimoam $07,  8, .OAMData_070 ; BATTLE_ANIM_OAMSET_073
	battleanimoam $06,  4, .OAMData_002 ; BATTLE_ANIM_OAMSET_074
	battleanimoam $07,  4, .OAMData_002 ; BATTLE_ANIM_OAMSET_075
	battleanimoam $0a,  2, .OAMData_076 ; BATTLE_ANIM_OAMSET_076
	battleanimoam $00,  1, .OAMData_077 ; BATTLE_ANIM_OAMSET_077
	battleanimoam $00,  3, .OAMData_078 ; BATTLE_ANIM_OAMSET_078
	battleanimoam $00,  6, .OAMData_079 ; BATTLE_ANIM_OAMSET_079
	battleanimoam $00,  9, .OAMData_07a ; BATTLE_ANIM_OAMSET_07A
	battleanimoam $00, 12, .OAMData_07b ; BATTLE_ANIM_OAMSET_07B
	battleanimoam $00, 14, .OAMData_07c ; BATTLE_ANIM_OAMSET_07C
	battleanimoam $00, 15, .OAMData_07d ; BATTLE_ANIM_OAMSET_07D
	battleanimoam $09,  4, .OAMData_002 ; BATTLE_ANIM_OAMSET_07E
	battleanimoam $08,  4, .OAMData_003 ; BATTLE_ANIM_OAMSET_07F
	battleanimoam $0d,  1, .OAMData_00f ; BATTLE_ANIM_OAMSET_080
	battleanimoam $0e,  4, .OAMData_030 ; BATTLE_ANIM_OAMSET_081
	battleanimoam $10,  1, .OAMData_00f ; BATTLE_ANIM_OAMSET_082
	battleanimoam $11,  1, .OAMData_00f ; BATTLE_ANIM_OAMSET_083
	battleanimoam $04,  2, .OAMData_06a ; BATTLE_ANIM_OAMSET_084
	battleanimoam $00, 16, .OAMData_085 ; BATTLE_ANIM_OAMSET_085
	battleanimoam $0a,  4, .OAMData_004 ; BATTLE_ANIM_OAMSET_086
	battleanimoam $00,  8, .OAMData_087 ; BATTLE_ANIM_OAMSET_087
	battleanimoam $00, 12, .OAMData_088 ; BATTLE_ANIM_OAMSET_088
	battleanimoam $00, 16, .OAMData_087 ; BATTLE_ANIM_OAMSET_089
	battleanimoam $09,  2, .OAMData_08a ; BATTLE_ANIM_OAMSET_08A
	battleanimoam $09,  4, .OAMData_08a ; BATTLE_ANIM_OAMSET_08B
	battleanimoam $09,  6, .OAMData_08a ; BATTLE_ANIM_OAMSET_08C
	battleanimoam $09,  8, .OAMData_08a ; BATTLE_ANIM_OAMSET_08D
	battleanimoam $12,  5, .OAMData_08e ; BATTLE_ANIM_OAMSET_08E
	battleanimoam $00,  4, .OAMData_08f ; BATTLE_ANIM_OAMSET_08F
	battleanimoam $04,  4, .OAMData_08f ; BATTLE_ANIM_OAMSET_090
	battleanimoam $08,  4, .OAMData_08f ; BATTLE_ANIM_OAMSET_091
	battleanimoam $0c,  4, .OAMData_08f ; BATTLE_ANIM_OAMSET_092
	battleanimoam $00,  6, .OAMData_093 ; BATTLE_ANIM_OAMSET_093
	battleanimoam $0f,  1, .OAMData_00f ; BATTLE_ANIM_OAMSET_094
	battleanimoam $00, 16, .OAMData_095 ; BATTLE_ANIM_OAMSET_095
	battleanimoam $15,  4, .OAMData_030 ; BATTLE_ANIM_OAMSET_096
	battleanimoam $04,  4, .OAMData_030 ; BATTLE_ANIM_OAMSET_097
	battleanimoam $0c,  4, .OAMData_004 ; BATTLE_ANIM_OAMSET_098
	battleanimoam $0a,  4, .OAMData_099 ; BATTLE_ANIM_OAMSET_099
	battleanimoam $0c,  4, .OAMData_003 ; BATTLE_ANIM_OAMSET_09A
	battleanimoam $00, 36, .OAMData_09b ; BATTLE_ANIM_OAMSET_09B
	battleanimoam $0d,  2, .OAMData_09c ; BATTLE_ANIM_OAMSET_09C
	battleanimoam $0d,  4, .OAMData_09c ; BATTLE_ANIM_OAMSET_09D
	battleanimoam $0d,  6, .OAMData_09c ; BATTLE_ANIM_OAMSET_09E
	battleanimoam $02,  8, .OAMData_09f ; BATTLE_ANIM_OAMSET_09F
	battleanimoam $08,  7, .OAMData_0a0 ; BATTLE_ANIM_OAMSET_0A0
	battleanimoam $08,  5, .OAMData_0a0 ; BATTLE_ANIM_OAMSET_0A1
	battleanimoam $08,  3, .OAMData_0a0 ; BATTLE_ANIM_OAMSET_0A2
	battleanimoam $00, 24, .OAMData_0a3 ; BATTLE_ANIM_OAMSET_0A3
	battleanimoam $00,  9, .OAMData_0a4 ; BATTLE_ANIM_OAMSET_0A4
	battleanimoam $06,  9, .OAMData_0a4 ; BATTLE_ANIM_OAMSET_0A5
	battleanimoam $0c,  9, .OAMData_0a4 ; BATTLE_ANIM_OAMSET_0A6
	battleanimoam $12,  9, .OAMData_0a4 ; BATTLE_ANIM_OAMSET_0A7
	battleanimoam $18,  9, .OAMData_0a4 ; BATTLE_ANIM_OAMSET_0A8
	battleanimoam $1e,  9, .OAMData_0a4 ; BATTLE_ANIM_OAMSET_0A9
	battleanimoam $24,  9, .OAMData_0a4 ; BATTLE_ANIM_OAMSET_0AA
	battleanimoam $2a,  9, .OAMData_0a4 ; BATTLE_ANIM_OAMSET_0AB
	battleanimoam $00,  4, .OAMData_059 ; BATTLE_ANIM_OAMSET_0AC
	battleanimoam $12,  4, .OAMData_003 ; BATTLE_ANIM_OAMSET_0AD
	battleanimoam $10,  4, .OAMData_004 ; BATTLE_ANIM_OAMSET_0AE
	battleanimoam $16,  1, .OAMData_00f ; BATTLE_ANIM_OAMSET_0AF
	battleanimoam $17,  4, .OAMData_002 ; BATTLE_ANIM_OAMSET_0B0
	battleanimoam $18,  4, .OAMData_003 ; BATTLE_ANIM_OAMSET_0B1
	battleanimoam $1c,  4, .OAMData_003 ; BATTLE_ANIM_OAMSET_0B2
	battleanimoam $20,  3, .OAMData_003 ; BATTLE_ANIM_OAMSET_0B3
	battleanimoam $23,  4, .OAMData_004 ; BATTLE_ANIM_OAMSET_0B4
	battleanimoam $25,  3, .OAMData_003 ; BATTLE_ANIM_OAMSET_0B5
	battleanimoam $17,  4, .OAMData_003 ; BATTLE_ANIM_OAMSET_0B6
	battleanimoam $0a, 16, .OAMData_000 ; BATTLE_ANIM_OAMSET_0B7
	battleanimoam $10, 16, .OAMData_01c ; BATTLE_ANIM_OAMSET_0B8
	battleanimoam $00, 16, .OAMData_01c ; BATTLE_ANIM_OAMSET_0B9
	battleanimoam $00,  8, .OAMData_0ba ; BATTLE_ANIM_OAMSET_0BA
	battleanimoam $08,  2, .OAMData_011 ; BATTLE_ANIM_OAMSET_0BB
	battleanimoam $20,  6, .OAMData_0bc ; BATTLE_ANIM_OAMSET_0BC
	battleanimoam $02,  4, .OAMData_0bd ; BATTLE_ANIM_OAMSET_0BD
	battleanimoam $07, 10, .OAMData_0be ; BATTLE_ANIM_OAMSET_0BE
	battleanimoam $1a,  4, .OAMData_030 ; BATTLE_ANIM_OAMSET_0BF
	battleanimoam $16,  9, .OAMData_001 ; BATTLE_ANIM_OAMSET_0C0
	battleanimoam $10, 16, .OAMData_0c1 ; BATTLE_ANIM_OAMSET_0C1
	battleanimoam $09,  6, .OAMData_0c2 ; BATTLE_ANIM_OAMSET_0C2
	battleanimoam $11,  9, .OAMData_0c3 ; BATTLE_ANIM_OAMSET_0C3
	battleanimoam $00, 17, .OAMData_0c4 ; BATTLE_ANIM_OAMSET_0C4
	battleanimoam $0b,  4, .OAMData_030 ; BATTLE_ANIM_OAMSET_0C5
	battleanimoam $1c,  6, .OAMData_002 ; BATTLE_ANIM_OAMSET_0C6
	battleanimoam $20, 16, .OAMData_0c1 ; BATTLE_ANIM_OAMSET_0C7
	battleanimoam $05,  6, .OAMData_0c8 ; BATTLE_ANIM_OAMSET_0C8
	battleanimoam $0b,  4, .OAMData_003 ; BATTLE_ANIM_OAMSET_0C9
	battleanimoam $09,  4, .OAMData_0ca ; BATTLE_ANIM_OAMSET_0CA
	battleanimoam $0b,  4, .OAMData_004 ; BATTLE_ANIM_OAMSET_0CB
	battleanimoam $11, 13, .OAMData_0cc ; BATTLE_ANIM_OAMSET_0CC
	battleanimoam $00,  9, .OAMData_0c3 ; BATTLE_ANIM_OAMSET_0CD
	battleanimoam $09,  9, .OAMData_0c3 ; BATTLE_ANIM_OAMSET_0CE
	battleanimoam $00, 12, .OAMData_0cf ; BATTLE_ANIM_OAMSET_0CF
	battleanimoam $06, 12, .OAMData_0cf ; BATTLE_ANIM_OAMSET_0D0
	battleanimoam $0c, 12, .OAMData_0cf ; BATTLE_ANIM_OAMSET_0D1
	battleanimoam $12, 12, .OAMData_0cf ; BATTLE_ANIM_OAMSET_0D2
	battleanimoam $00, 13, .OAMData_0cc ; BATTLE_ANIM_OAMSET_0D3
	battleanimoam $00,  7, .OAMData_0d4 ; BATTLE_ANIM_OAMSET_0D4
	battleanimoam $00,  6, .OAMData_0d5 ; BATTLE_ANIM_OAMSET_0D5
	battleanimoam $00, 14, .OAMData_0d6 ; BATTLE_ANIM_OAMSET_0D6
	battleanimoam $00, 12, .OAMData_0d7 ; BATTLE_ANIM_OAMSET_0D7
	battleanimoam $06, 16, .OAMData_0d8 ; BATTLE_ANIM_OAMSET_0D8
	battleanimoam $00, 12, .OAMData_0d9 ; BATTLE_ANIM_OAMSET_0D9
	battleanimoam $10,  2, .OAMData_011 ; BATTLE_ANIM_OAMSET_0DA
	battleanimoam $1b,  4, .OAMData_003 ; BATTLE_ANIM_OAMSET_0DB
	battleanimoam $15,  4, .OAMData_004 ; BATTLE_ANIM_OAMSET_0DC
	battleanimoam $02,  2, .OAMData_0dd ; BATTLE_ANIM_OAMSET_0DD
	battleanimoam $00, 26, .OAMData_0de ; BATTLE_ANIM_OAMSET_0DE
	battleanimoam $00,  4, .OAMData_0df ; BATTLE_ANIM_OAMSET_0DF
	battleanimoam $04,  6, .OAMData_0df ; BATTLE_ANIM_OAMSET_0E0
	battleanimoam $0a,  5, .OAMData_0e1 ; BATTLE_ANIM_OAMSET_0E1
	battleanimoam $00, 16, .OAMData_01c ; BATTLE_ANIM_OAMSET_0E2
	battleanimoam $10, 16, .OAMData_01c ; BATTLE_ANIM_OAMSET_0E3
	battleanimoam $20, 16, .OAMData_01c ; BATTLE_ANIM_OAMSET_0E4
	battleanimoam $30, 16, .OAMData_01c ; BATTLE_ANIM_OAMSET_0E5
	battleanimoam $12, 16, .OAMData_0e6 ; BATTLE_ANIM_OAMSET_0E6
	battleanimoam $00, 36, .OAMData_0e7 ; BATTLE_ANIM_OAMSET_0E7
	battleanimoam $09, 16, .OAMData_000 ; BATTLE_ANIM_OAMSET_0E8
	battleanimoam $06,  9, .OAMData_0e9 ; BATTLE_ANIM_OAMSET_0E9
	battleanimoam $02,  8, .OAMData_0ea ; BATTLE_ANIM_OAMSET_0EA
	battleanimoam $06, 10, .OAMData_0eb ; BATTLE_ANIM_OAMSET_0EB
	battleanimoam $0b, 10, .OAMData_0eb ; BATTLE_ANIM_OAMSET_0EC
	battleanimoam $00, 16, .OAMData_0ed ; BATTLE_ANIM_OAMSET_0ED
	battleanimoam $08, 16, .OAMData_0ed ; BATTLE_ANIM_OAMSET_0EE
	battleanimoam $10, 16, .OAMData_0ed ; BATTLE_ANIM_OAMSET_0EF
	battleanimoam $18, 16, .OAMData_0ed ; BATTLE_ANIM_OAMSET_0F0
	battleanimoam $0a,  1, .OAMData_0f1 ; BATTLE_ANIM_OAMSET_0F1
	battleanimoam $0a,  1, .OAMData_060 ; BATTLE_ANIM_OAMSET_0F2
	battleanimoam $00,  4, .OAMData_0f3 ; BATTLE_ANIM_OAMSET_0F3
	battleanimoam $00,  8, .OAMData_0f4 ; BATTLE_ANIM_OAMSET_0F4
	battleanimoam $00, 12, .OAMData_0f5 ; BATTLE_ANIM_OAMSET_0F5
	battleanimoam $00, 16, .OAMData_0f6 ; BATTLE_ANIM_OAMSET_0F6
	battleanimoam $00, 18, .OAMData_0f7 ; BATTLE_ANIM_OAMSET_0F7
	battleanimoam $09, 18, .OAMData_0f7 ; BATTLE_ANIM_OAMSET_0F8
	battleanimoam $00,  9, .OAMData_0f9 ; BATTLE_ANIM_OAMSET_0F9
	battleanimoam $06,  9, .OAMData_0f9 ; BATTLE_ANIM_OAMSET_0FA
	battleanimoam $0c,  9, .OAMData_0f9 ; BATTLE_ANIM_OAMSET_0FB
	battleanimoam $00,  9, .OAMData_0f9 ; BATTLE_ANIM_OAMSET_0FC
	battleanimoam $06,  9, .OAMData_0a4 ; BATTLE_ANIM_OAMSET_0FD
	battleanimoam $11,  2, .OAMData_011 ; BATTLE_ANIM_OAMSET_0FE
	battleanimoam $0e,  1, .OAMData_00f ; BATTLE_ANIM_OAMSET_0FF
	battleanimoam $02,  5, .OAMData_100 ; BATTLE_ANIM_OAMSET_100
	battleanimoam $02,  6, .OAMData_101 ; BATTLE_ANIM_OAMSET_101
	battleanimoam $02,  7, .OAMData_102 ; BATTLE_ANIM_OAMSET_102
	battleanimoam $02,  8, .OAMData_103 ; BATTLE_ANIM_OAMSET_103
	battleanimoam $02,  9, .OAMData_104 ; BATTLE_ANIM_OAMSET_104
	battleanimoam $02, 10, .OAMData_105 ; BATTLE_ANIM_OAMSET_105
	battleanimoam $02, 11, .OAMData_106 ; BATTLE_ANIM_OAMSET_106
	battleanimoam $02,  7, .OAMData_106 ; BATTLE_ANIM_OAMSET_107
	battleanimoam $0a,  9, .OAMData_0e9 ; BATTLE_ANIM_OAMSET_108
	assert_table_length NUM_BATTLE_ANIM_OAMSETS

.OAMData_011:
	dbsprite  -1,  -1, 4, 0, $00, $0
	dbsprite  -1,   0, 4, 0, $01, $0

.OAMData_002:
	dbsprite  -1,  -1, 0, 0, $00, $0
	dbsprite   0,  -1, 0, 0, $00, X_FLIP
	dbsprite  -1,   0, 0, 0, $00, Y_FLIP
	dbsprite   0,   0, 0, 0, $00, X_FLIP | Y_FLIP

.OAMData_0c3:
	dbsprite  -2,  -2, 4, 4, $00, $0
	dbsprite  -1,  -2, 4, 4, $01, $0
	dbsprite   0,  -2, 4, 4, $02, $0
	dbsprite  -2,  -1, 4, 4, $03, $0
	dbsprite  -1,  -1, 4, 4, $04, $0
	dbsprite   0,  -1, 4, 4, $05, $0
	dbsprite  -2,   0, 4, 4, $06, $0
	dbsprite  -1,   0, 4, 4, $07, $0
	dbsprite   0,   0, 4, 4, $08, $0

.OAMData_001:
	dbsprite  -2,  -2, 4, 4, $00, $0
	dbsprite  -1,  -2, 4, 4, $01, $0
	dbsprite   0,  -2, 4, 4, $00, X_FLIP
	dbsprite  -2,  -1, 4, 4, $02, $0
	dbsprite  -1,  -1, 4, 4, $03, $0
	dbsprite   0,  -1, 4, 4, $02, X_FLIP | Y_FLIP
	dbsprite  -2,   0, 4, 4, $00, Y_FLIP
	dbsprite  -1,   0, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite   0,   0, 4, 4, $00, X_FLIP | Y_FLIP

.OAMData_0cf:
	dbsprite  -2,  -2, 4, 0, $00, $0
	dbsprite  -1,  -2, 4, 0, $01, $0
	dbsprite   0,  -2, 4, 0, $02, $0
	dbsprite  -2,  -1, 4, 0, $03, $0
	dbsprite  -1,  -1, 4, 0, $04, $0
	dbsprite   0,  -1, 4, 0, $05, $0
	dbsprite  -2,   0, 4, 0, $05, X_FLIP | Y_FLIP
	dbsprite  -1,   0, 4, 0, $04, X_FLIP | Y_FLIP
	dbsprite   0,   0, 4, 0, $03, X_FLIP | Y_FLIP
	dbsprite  -2,   1, 4, 0, $02, X_FLIP | Y_FLIP
	dbsprite  -1,   1, 4, 0, $01, X_FLIP | Y_FLIP
	dbsprite   0,   1, 4, 0, $00, X_FLIP | Y_FLIP

.OAMData_01c:
	dbsprite  -2,  -2, 0, 0, $00, $0
	dbsprite  -1,  -2, 0, 0, $01, $0
	dbsprite   0,  -2, 0, 0, $02, $0
	dbsprite   1,  -2, 0, 0, $03, $0
	dbsprite  -2,  -1, 0, 0, $04, $0
	dbsprite  -1,  -1, 0, 0, $05, $0
	dbsprite   0,  -1, 0, 0, $06, $0
	dbsprite   1,  -1, 0, 0, $07, $0
	dbsprite  -2,   0, 0, 0, $08, $0
	dbsprite  -1,   0, 0, 0, $09, $0
	dbsprite   0,   0, 0, 0, $0a, $0
	dbsprite   1,   0, 0, 0, $0b, $0
	dbsprite  -2,   1, 0, 0, $0c, $0
	dbsprite  -1,   1, 0, 0, $0d, $0
	dbsprite   0,   1, 0, 0, $0e, $0
	dbsprite   1,   1, 0, 0, $0f, $0

.OAMData_000:
	dbsprite  -2,  -2, 0, 0, $00, $0
	dbsprite  -1,  -2, 0, 0, $01, $0
	dbsprite  -2,  -1, 0, 0, $02, $0
	dbsprite  -1,  -1, 0, 0, $03, $0
	dbsprite   0,  -2, 0, 0, $01, X_FLIP
	dbsprite   1,  -2, 0, 0, $00, X_FLIP
	dbsprite   0,  -1, 0, 0, $03, X_FLIP
	dbsprite   1,  -1, 0, 0, $02, X_FLIP
	dbsprite  -2,   0, 0, 0, $02, Y_FLIP
	dbsprite  -1,   0, 0, 0, $03, Y_FLIP
	dbsprite  -2,   1, 0, 0, $00, Y_FLIP
	dbsprite  -1,   1, 0, 0, $01, Y_FLIP
	dbsprite   0,   0, 0, 0, $03, X_FLIP | Y_FLIP
	dbsprite   1,   0, 0, 0, $02, X_FLIP | Y_FLIP
	dbsprite   0,   1, 0, 0, $01, X_FLIP | Y_FLIP
	dbsprite   1,   1, 0, 0, $00, X_FLIP | Y_FLIP

.OAMData_009:
	dbsprite  -3,  -3, 4, 4, $00, $0
	dbsprite  -2,  -3, 4, 4, $01, $0
	dbsprite  -3,  -2, 4, 4, $02, $0
	dbsprite  -2,  -2, 4, 4, $03, $0
	dbsprite   0,  -3, 4, 4, $01, X_FLIP
	dbsprite   1,  -3, 4, 4, $00, X_FLIP
	dbsprite   0,  -2, 4, 4, $03, X_FLIP
	dbsprite   1,  -2, 4, 4, $02, X_FLIP
	dbsprite  -3,   0, 4, 4, $02, Y_FLIP
	dbsprite  -2,   0, 4, 4, $03, Y_FLIP
	dbsprite  -3,   1, 4, 4, $00, Y_FLIP
	dbsprite  -2,   1, 4, 4, $01, Y_FLIP
	dbsprite   0,   0, 4, 4, $03, X_FLIP | Y_FLIP
	dbsprite   1,   0, 4, 4, $02, X_FLIP | Y_FLIP
	dbsprite   0,   1, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite   1,   1, 4, 4, $00, X_FLIP | Y_FLIP

.OAMData_00c:
	dbsprite  -1,  -1, 0, 4, $00, $0
	dbsprite   0,  -1, 0, 4, $00, X_FLIP

.OAMData_06a:
	dbsprite  -1,   0, 0, 0, $00, $0
	dbsprite   0,   0, 0, 0, $00, X_FLIP

.OAMData_004:
	dbsprite  -1,  -1, 0, 0, $00, $0
	dbsprite   0,  -1, 0, 0, $00, X_FLIP
	dbsprite  -1,   0, 0, 0, $01, $0
	dbsprite   0,   0, 0, 0, $01, X_FLIP

.OAMData_05d:
	dbsprite  -1,  -1, 0, 0, $00, $0
	dbsprite   0,  -1, 0, 0, $01, $0
	dbsprite  -1,   0, 0, 0, $00, Y_FLIP
	dbsprite   0,   0, 0, 0, $01, Y_FLIP

.OAMData_013:
	dbsprite  -1,  -1, 0, 2, $02, $0
	dbsprite  -1,   0, 0, 2, $03, $0
	dbsprite   0,  -2, 0, 6, $02, $0
	dbsprite   0,  -1, 0, 6, $03, $0

.OAMData_022:
	dbsprite -11,   1, 0, 0, $01, $0
	dbsprite -10,   0, 0, 0, $02, $0
	dbsprite  -9,   0, 0, 0, $03, $0
	dbsprite  -8,   0, 0, 0, $00, $0
	dbsprite  -7,   0, 0, 0, $03, $0
	dbsprite  -6,   0, 0, 0, $00, $0
	dbsprite  -5,   0, 0, 0, $03, $0
	dbsprite  -4,   0, 0, 0, $00, $0
	dbsprite  -3,   0, 0, 0, $03, $0
	dbsprite  -2,   0, 0, 0, $00, $0
	dbsprite  -1,   0, 0, 0, $01, $0
	dbsprite   0,  -1, 0, 0, $02, $0
	dbsprite   1,  -1, 0, 0, $03, $0
	dbsprite   2,  -1, 0, 0, $00, $0
	dbsprite   3,  -1, 0, 0, $03, $0
	dbsprite   4,  -1, 0, 0, $00, $0
	dbsprite   5,  -1, 0, 0, $03, $0
	dbsprite   6,  -1, 0, 0, $00, $0
	dbsprite   7,  -1, 0, 0, $03, $0
	dbsprite   8,  -1, 0, 0, $00, $0
	dbsprite   9,  -1, 0, 0, $01, $0
	dbsprite  10,  -2, 0, 0, $02, $0

.OAMData_02a:
	dbsprite  -1,  -3, 0, 4, $00, $0
	dbsprite   0,  -3, 0, 4, $00, X_FLIP
	dbsprite  -1,  -2, 0, 4, $01, $0
	dbsprite   0,  -2, 0, 4, $01, X_FLIP
	dbsprite  -1,  -1, 4, 4, $02, $0

.OAMData_02b:
	dbsprite  -1,  -4, 0, 4, $00, $0
	dbsprite   0,  -4, 0, 4, $00, X_FLIP
	dbsprite  -1,  -3, 0, 4, $01, $0
	dbsprite   0,  -3, 0, 4, $01, X_FLIP
	dbsprite  -1,  -2, 4, 4, $02, $0
	dbsprite  -1,  -1, 4, 4, $02, $0

.OAMData_02c:
	dbsprite  -1,  -5, 0, 4, $00, $0
	dbsprite   0,  -5, 0, 4, $00, X_FLIP
	dbsprite  -1,  -4, 0, 4, $01, $0
	dbsprite   0,  -4, 0, 4, $01, X_FLIP
	dbsprite  -1,  -3, 4, 4, $02, $0
	dbsprite  -1,  -2, 4, 4, $02, $0
	dbsprite  -1,  -1, 4, 4, $02, $0

.OAMData_02d:
	dbsprite  -1,  -6, 0, 4, $00, $0
	dbsprite   0,  -6, 0, 4, $00, X_FLIP
	dbsprite  -1,  -5, 0, 4, $01, $0
	dbsprite   0,  -5, 0, 4, $01, X_FLIP
	dbsprite  -1,  -4, 4, 4, $02, $0
	dbsprite  -1,  -3, 4, 4, $02, $0
	dbsprite  -1,  -2, 4, 4, $02, $0
	dbsprite  -1,  -1, 4, 4, $02, $0

.OAMData_02e:
	dbsprite  -1,  -7, 0, 4, $00, $0
	dbsprite   0,  -7, 0, 4, $00, X_FLIP
	dbsprite  -1,  -6, 0, 4, $01, $0
	dbsprite   0,  -6, 0, 4, $01, X_FLIP
	dbsprite  -1,  -5, 4, 4, $02, $0
	dbsprite  -1,  -4, 4, 4, $02, $0
	dbsprite  -1,  -3, 4, 4, $02, $0
	dbsprite  -1,  -2, 4, 4, $02, $0
	dbsprite  -1,  -1, 4, 4, $02, $0

.OAMData_02f:
	dbsprite  -1,  -1, 0, 0, $00, $0
	dbsprite   0,  -1, 0, 0, $00, X_FLIP
	dbsprite  -1,   0, 0, 0, $01, $0
	dbsprite   0,   0, 0, 0, $00, X_FLIP | Y_FLIP

.OAMData_030:
	dbsprite  -1,  -1, 0, 0, $00, $0
	dbsprite   0,  -1, 0, 0, $01, $0
	dbsprite  -1,   0, 0, 0, $01, X_FLIP | Y_FLIP
	dbsprite   0,   0, 0, 0, $00, X_FLIP | Y_FLIP

.OAMData_031:
	dbsprite  -1,  -2, 0, 4, $00, $0
	dbsprite   0,  -2, 0, 4, $01, $0
	dbsprite  -1,  -1, 0, 4, $02, $0
	dbsprite   0,  -1, 0, 4, $03, $0
	dbsprite  -1,   0, 0, 4, $04, $0
	dbsprite   0,   0, 0, 4, $05, $0

.OAMData_076:
	dbsprite  -1,  -1, 0, 5, $00, $0
	dbsprite   0,  -1, 0, 1, $00, $0

.OAMData_032:
	dbsprite  -2,  -1, 4, 0, $00, $0
	dbsprite   0,  -1, 4, 0, $00, $0
	dbsprite  -2,  -3, 4, 0, $00, $0
	dbsprite   0,  -3, 4, 0, $00, $0
	dbsprite  -3,  -2, 4, 0, $00, $0
	dbsprite  -2,  -2, 4, 0, $01, $0
	dbsprite  -1,  -2, 4, 0, $00, $0
	dbsprite   0,  -2, 4, 0, $01, $0
	dbsprite   1,  -2, 4, 0, $00, $0
	dbsprite  -4,  -1, 4, 0, $00, $0
	dbsprite  -3,  -1, 4, 0, $01, $0
	dbsprite  -1,  -1, 4, 0, $01, $0
	dbsprite   1,  -1, 4, 0, $01, $0
	dbsprite   2,  -1, 4, 0, $00, $0

.OAMData_033:
	dbsprite  -2,  -2, 4, 0, $00, $0
	dbsprite   0,  -2, 4, 0, $00, $0
	dbsprite  -3,  -1, 4, 0, $00, $0
	dbsprite  -2,  -1, 4, 0, $01, $0
	dbsprite  -1,  -1, 4, 0, $00, $0
	dbsprite   0,  -1, 4, 0, $01, $0
	dbsprite   1,  -1, 4, 0, $00, $0
	dbsprite  -2,  -4, 4, 0, $00, $0
	dbsprite   0,  -4, 4, 0, $00, $0
	dbsprite  -3,  -3, 4, 0, $00, $0
	dbsprite  -2,  -3, 4, 0, $01, $0
	dbsprite  -1,  -3, 4, 0, $00, $0
	dbsprite   0,  -3, 4, 0, $01, $0
	dbsprite   1,  -3, 4, 0, $00, $0
	dbsprite  -4,  -2, 4, 0, $00, $0
	dbsprite  -3,  -2, 4, 0, $01, $0
	dbsprite  -1,  -2, 4, 0, $01, $0
	dbsprite   1,  -2, 4, 0, $01, $0
	dbsprite   2,  -2, 4, 0, $00, $0
	dbsprite  -4,  -1, 4, 0, $01, $0
	dbsprite   2,  -1, 4, 0, $01, $0

.OAMData_036:
	dbsprite  -1,  -7, 0, 4, $00, $0
	dbsprite   0,  -7, 0, 4, $01, $0
	dbsprite  -1,  -6, 0, 4, $02, $0
	dbsprite   0,  -6, 0, 4, $03, $0
	dbsprite  -1,  -5, 0, 4, $04, $0
	dbsprite   0,  -5, 0, 4, $05, $0
	dbsprite  -1,  -4, 0, 4, $06, $0
	dbsprite   0,  -4, 0, 4, $07, $0
	dbsprite  -1,  -3, 0, 4, $08, $0
	dbsprite   0,  -3, 0, 4, $09, $0
	dbsprite  -1,  -2, 0, 4, $0a, $0
	dbsprite   0,  -2, 0, 4, $0b, $0
	dbsprite  -1,  -1, 0, 4, $0c, $0
	dbsprite   0,  -1, 0, 4, $0d, $0

.OAMData_03a:
	dbsprite  -1,  -7, 0, 4, $0c, $0
	dbsprite   0,  -7, 0, 4, $0d, $0
	dbsprite  -1,  -6, 0, 4, $08, $0
	dbsprite   0,  -6, 0, 4, $09, $0
	dbsprite  -1,  -5, 0, 4, $04, $0
	dbsprite   0,  -5, 0, 4, $05, $0
	dbsprite  -1,  -4, 0, 4, $00, $0
	dbsprite   0,  -4, 0, 4, $01, $0
	dbsprite  -1,  -3, 0, 4, $02, $0
	dbsprite   0,  -3, 0, 4, $03, $0
	dbsprite   0,  -2, 0, 4, $02, $0
	dbsprite   1,  -2, 0, 4, $03, $0
	dbsprite   0,  -1, 0, 4, $0a, $0
	dbsprite   1,  -1, 0, 4, $0b, $0

.OAMData_03e:
	dbsprite  -2,   1, 0, 4, $00, Y_FLIP
	dbsprite  -1,   1, 0, 4, $02, Y_FLIP
	dbsprite   0,   1, 0, 4, $02, X_FLIP | Y_FLIP
	dbsprite   1,   1, 0, 4, $00, X_FLIP | Y_FLIP
	dbsprite  -3,  -1, 0, 4, $09, X_FLIP
	dbsprite  -2,  -1, 0, 4, $08, X_FLIP
	dbsprite  -1,  -1, 0, 4, $06, $0
	dbsprite   0,  -1, 0, 4, $07, $0
	dbsprite   1,  -1, 0, 4, $08, $0
	dbsprite   2,  -1, 0, 4, $09, $0
	dbsprite  -3,   0, 0, 4, $01, X_FLIP
	dbsprite  -2,   0, 0, 4, $00, X_FLIP
	dbsprite  -1,   0, 0, 4, $0c, $0
	dbsprite   0,   0, 0, 4, $0d, $0
	dbsprite   1,   0, 0, 4, $00, $0
	dbsprite   2,   0, 0, 4, $01, $0
	dbsprite  -2,  -3, 0, 4, $00, $0
	dbsprite  -1,  -3, 0, 4, $02, $0
	dbsprite   0,  -3, 0, 4, $02, X_FLIP
	dbsprite   1,  -3, 0, 4, $00, X_FLIP
	dbsprite  -3,  -2, 0, 4, $03, X_FLIP
	dbsprite  -2,  -2, 0, 4, $02, X_FLIP
	dbsprite  -1,  -2, 0, 4, $04, $0
	dbsprite   0,  -2, 0, 4, $05, $0
	dbsprite   1,  -2, 0, 4, $02, $0
	dbsprite   2,  -2, 0, 4, $03, $0

.OAMData_041:
	dbsprite  -2,  -3, 0, 4, $00, $0
	dbsprite  -1,  -3, 0, 4, $02, $0
	dbsprite   0,  -3, 0, 4, $02, X_FLIP
	dbsprite   1,  -3, 0, 4, $00, X_FLIP
	dbsprite  -3,  -2, 4, 4, $00, $0
	dbsprite  -2,  -2, 4, 4, $01, $0
	dbsprite  -1,  -2, 0, 4, $05, X_FLIP
	dbsprite   0,  -2, 0, 4, $04, X_FLIP
	dbsprite   0,  -2, 4, 4, $01, X_FLIP
	dbsprite   1,  -2, 4, 4, $00, X_FLIP
	dbsprite  -3,  -1, 4, 4, $02, $0
	dbsprite  -2,  -1, 4, 4, $03, $0
	dbsprite  -1,  -1, 0, 4, $07, X_FLIP
	dbsprite   0,  -1, 0, 4, $06, X_FLIP
	dbsprite   0,  -1, 4, 4, $03, X_FLIP
	dbsprite   1,  -1, 4, 4, $02, X_FLIP
	dbsprite  -3,   0, 4, 4, $04, $0
	dbsprite  -2,   0, 4, 4, $05, $0
	dbsprite  -1,   0, 0, 4, $0d, X_FLIP
	dbsprite   0,   0, 0, 4, $0c, X_FLIP
	dbsprite   0,   0, 4, 4, $05, X_FLIP
	dbsprite   1,   0, 4, 4, $04, X_FLIP
	dbsprite  -2,   1, 0, 4, $00, Y_FLIP
	dbsprite  -1,   1, 0, 4, $02, Y_FLIP
	dbsprite   0,   1, 0, 4, $02, X_FLIP | Y_FLIP
	dbsprite   1,   1, 0, 4, $00, X_FLIP | Y_FLIP

.OAMData_042:
	dbsprite  -1,  -3, 4, 0, $02, $0
	dbsprite  -1,   2, 4, 0, $02, X_FLIP | Y_FLIP
	dbsprite  -3,  -1, 0, 4, $01, $0
	dbsprite   2,  -1, 0, 4, $01, X_FLIP | Y_FLIP
	dbsprite  -1,  -4, 4, 0, $02, $0
	dbsprite  -1,   3, 4, 0, $02, X_FLIP | Y_FLIP
	dbsprite  -4,  -1, 0, 4, $01, $0
	dbsprite   3,  -1, 0, 4, $01, X_FLIP | Y_FLIP

.OAMData_044:
	dbsprite  -3,  -3, 5, 5, $00, X_FLIP
	dbsprite   1,  -3, 3, 5, $00, $0
	dbsprite  -3,   1, 5, 3, $00, X_FLIP | Y_FLIP
	dbsprite   1,   1, 3, 3, $00, Y_FLIP
	dbsprite  -4,  -4, 5, 5, $00, X_FLIP
	dbsprite   2,  -4, 3, 5, $00, $0
	dbsprite  -4,   2, 5, 3, $00, X_FLIP | Y_FLIP
	dbsprite   2,   2, 3, 3, $00, Y_FLIP

.OAMData_046:
	dbsprite  -1,  -3, 4, 4, $02, $0
	dbsprite  -1,   1, 4, 4, $02, X_FLIP | Y_FLIP
	dbsprite  -3,  -1, 4, 4, $01, $0
	dbsprite   1,  -1, 4, 4, $01, X_FLIP | Y_FLIP

.OAMData_047:
	dbsprite  -2,  -2, 0, 0, $00, X_FLIP
	dbsprite   1,  -2, 0, 0, $00, $0
	dbsprite  -2,   1, 0, 0, $00, X_FLIP | Y_FLIP
	dbsprite   1,   1, 0, 0, $00, Y_FLIP

.OAMData_048:
	dbsprite  -1,  -3, 4, 0, $00, $0
	dbsprite  -1,  -2, 2, 0, $00, $0
	dbsprite  -1,  -1, 0, 0, $00, $0
	dbsprite  -1,   0, 0, 0, $00, $0
	dbsprite  -1,   1, 2, 0, $00, $0
	dbsprite  -1,   2, 4, 0, $00, $0

.OAMData_049:
	dbsprite  -2,  -1, 0, 4, $00, X_FLIP
	dbsprite  -1,  -1, 0, 2, $00, X_FLIP
	dbsprite   0,  -1, 0, 2, $00, $0
	dbsprite   1,  -1, 0, 4, $00, $0

.OAMData_04a:
	dbsprite  -1,  -1, 0, 4, $00, X_FLIP | Y_FLIP
	dbsprite   0,  -1, 0, 4, $00, Y_FLIP

.OAMData_00f:
	dbsprite  -1,  -1, 4, 4, $00, $0
	dbsprite  -2,  -1, 4, 4, $01, $0
	dbsprite  -1,  -1, 4, 4, $01, X_FLIP
	dbsprite  -2,   0, 4, 4, $01, Y_FLIP
	dbsprite  -1,   0, 4, 4, $01, X_FLIP | Y_FLIP

.OAMData_04c:
	dbsprite  -1,  -1, 4, 4, $00, $0
	dbsprite  -2,   0, 6, 2, $00, $0
	dbsprite  -3,   0, 6, 2, $01, $0
	dbsprite  -2,   0, 6, 2, $01, X_FLIP
	dbsprite  -3,   1, 6, 2, $01, Y_FLIP
	dbsprite  -2,   1, 6, 2, $01, X_FLIP | Y_FLIP

.OAMData_04d:
	dbsprite  -1,  -1, 4, 4, $00, $0
	dbsprite  -2,   0, 6, 2, $00, $0
	dbsprite  -2,   1, 0, 0, $00, $0
	dbsprite  -3,   1, 0, 0, $01, $0
	dbsprite  -2,   1, 0, 0, $01, X_FLIP
	dbsprite  -3,   2, 0, 0, $01, Y_FLIP
	dbsprite  -2,   2, 0, 0, $01, X_FLIP | Y_FLIP

.OAMData_04f:
	dbsprite  -1,  -1, 4, 4, $00, $0
	dbsprite  -2,   0, 6, 2, $00, $0
	dbsprite  -2,   1, 0, 0, $00, $0
	dbsprite  -3,   1, 2, 6, $00, $0
	dbsprite  -4,   1, 2, 6, $01, $0
	dbsprite  -3,   1, 2, 6, $01, X_FLIP
	dbsprite  -4,   2, 2, 6, $01, Y_FLIP
	dbsprite  -3,   2, 2, 6, $01, X_FLIP | Y_FLIP

.OAMData_050:
	dbsprite  -1,  -1, 4, 4, $00, $0
	dbsprite  -2,   0, 6, 2, $00, $0
	dbsprite  -2,   1, 0, 0, $00, $0
	dbsprite  -3,   1, 2, 6, $00, $0
	dbsprite  -4,   2, 4, 4, $00, $0
	dbsprite  -5,   2, 4, 4, $01, $0
	dbsprite  -4,   2, 4, 4, $01, X_FLIP
	dbsprite  -5,   3, 4, 4, $01, Y_FLIP
	dbsprite  -4,   3, 4, 4, $01, X_FLIP | Y_FLIP

.OAMData_051:
	dbsprite  -1,  -1, 4, 4, $00, $0
	dbsprite  -2,   0, 6, 2, $00, $0
	dbsprite  -2,   1, 0, 0, $00, $0
	dbsprite  -3,   1, 2, 6, $00, $0
	dbsprite  -4,   2, 4, 4, $00, $0
	dbsprite  -5,   3, 6, 2, $00, $0
	dbsprite  -6,   3, 6, 2, $01, $0
	dbsprite  -5,   3, 6, 2, $01, X_FLIP
	dbsprite  -6,   4, 6, 2, $01, Y_FLIP
	dbsprite  -5,   4, 6, 2, $01, X_FLIP | Y_FLIP

.OAMData_059:
	dbsprite  -2,  -1, 0, 4, $00, $0
	dbsprite  -1,  -1, 0, 4, $01, $0
	dbsprite   0,  -1, 0, 4, $01, X_FLIP
	dbsprite   1,  -1, 0, 4, $00, X_FLIP

.OAMData_05a:
	dbsprite  -2,  -1, 0, 4, $02, $0
	dbsprite  -1,  -1, 0, 4, $01, $0
	dbsprite   0,  -1, 0, 4, $01, X_FLIP
	dbsprite   1,  -1, 0, 4, $02, X_FLIP

.OAMData_060:
	dbsprite  -1,  -1, 4, 0, $00, $0
.OAMData_069: ; LENGTH 1
	dbsprite  -1,   0, 4, 0, $00, $0

.OAMData_061:
	dbsprite  -4,  -1, 4, 4, $00, $0
	dbsprite  -3,  -1, 4, 4, $01, $0
	dbsprite  -2,  -1, 4, 4, $02, $0
	dbsprite  -1,  -1, 4, 4, $03, $0
	dbsprite   0,  -1, 4, 4, $04, $0
	dbsprite   1,  -1, 4, 4, $05, $0
	dbsprite   2,  -1, 4, 4, $06, $0
	dbsprite   1,  -2, 4, 4, $07, $0
	dbsprite   2,  -2, 4, 4, $08, $0

.OAMData_065:
	dbsprite  -4,  -2, 4, 4, $08, X_FLIP
	dbsprite  -3,  -2, 4, 4, $07, X_FLIP
	dbsprite  -4,  -1, 4, 4, $06, X_FLIP
	dbsprite  -3,  -1, 4, 4, $05, X_FLIP
	dbsprite  -2,  -1, 4, 4, $04, X_FLIP
	dbsprite  -1,  -1, 4, 4, $03, X_FLIP
	dbsprite   0,  -1, 4, 4, $02, X_FLIP
	dbsprite   1,  -1, 4, 4, $01, X_FLIP
	dbsprite   2,  -1, 4, 4, $00, X_FLIP

.OAMData_0d4:
	dbsprite  -4,   0, 4, 0, $00, OBP_NUM
	dbsprite  -3,   0, 4, 0, $01, OBP_NUM
	dbsprite  -2,   0, 4, 0, $02, OBP_NUM
	dbsprite  -1,   0, 4, 0, $03, OBP_NUM
	dbsprite   0,   0, 4, 0, $04, OBP_NUM
	dbsprite   1,   0, 4, 0, $05, OBP_NUM
	dbsprite   2,   0, 4, 0, $06, OBP_NUM

.OAMData_0d6:
	dbsprite  -4,  -1, 4, 0, $00, OBP_NUM
	dbsprite  -4,   0, 4, 0, $01, OBP_NUM
	dbsprite  -3,  -1, 4, 0, $02, OBP_NUM
	dbsprite  -3,   0, 4, 0, $03, OBP_NUM
	dbsprite  -2,  -1, 4, 0, $04, OBP_NUM
	dbsprite  -2,   0, 4, 0, $05, OBP_NUM
	dbsprite  -1,  -1, 4, 0, $06, OBP_NUM
	dbsprite  -1,   0, 4, 0, $07, OBP_NUM
	dbsprite   0,  -1, 4, 0, $08, OBP_NUM
	dbsprite   0,   0, 4, 0, $09, OBP_NUM
	dbsprite   1,  -1, 4, 0, $0a, OBP_NUM
	dbsprite   1,   0, 4, 0, $0b, OBP_NUM
	dbsprite   2,  -1, 4, 0, $0c, OBP_NUM
	dbsprite   2,   0, 4, 0, $0d, OBP_NUM

.OAMData_0d5:
	dbsprite  -3,   0, 0, 0, $00, $1 | OBP_NUM
	dbsprite  -2,   0, 0, 0, $01, $1 | OBP_NUM
	dbsprite  -1,   0, 0, 0, $02, $1 | OBP_NUM
	dbsprite   0,   0, 0, 0, $03, $1 | OBP_NUM
	dbsprite   1,   0, 0, 0, $04, $1 | OBP_NUM
	dbsprite   2,   0, 0, 0, $05, $1 | OBP_NUM

.OAMData_0d7:
	dbsprite  -3,   0, 0, 0, $00, $1 | OBP_NUM
	dbsprite  -3,   1, 0, 0, $01, $1 | OBP_NUM
	dbsprite  -2,   0, 0, 0, $02, $1 | OBP_NUM
	dbsprite  -2,   1, 0, 0, $03, $1 | OBP_NUM
	dbsprite  -1,   0, 0, 0, $04, $1 | OBP_NUM
	dbsprite  -1,   1, 0, 0, $05, $1 | OBP_NUM
	dbsprite   0,   0, 0, 0, $06, $1 | OBP_NUM
	dbsprite   0,   1, 0, 0, $07, $1 | OBP_NUM
	dbsprite   1,   0, 0, 0, $08, $1 | OBP_NUM
	dbsprite   1,   1, 0, 0, $09, $1 | OBP_NUM
	dbsprite   2,   0, 0, 0, $0a, $1 | OBP_NUM
	dbsprite   2,   1, 0, 0, $0b, $1 | OBP_NUM

.OAMData_06e:
	dbsprite   0,  -2, 4, 4, $00, $0
	dbsprite  -2,  -1, 4, 4, $01, $0
	dbsprite  -1,  -1, 4, 4, $02, $0
	dbsprite   0,  -1, 4, 4, $03, $0
	dbsprite  -2,   0, 4, 4, $04, $0

.OAMData_06f:
	dbsprite  -2,  -1, 4, 4, $00, $0
	dbsprite  -1,  -1, 4, 4, $01, $0
	dbsprite   0,  -1, 4, 4, $02, $0

.OAMData_077:
	dbsprite   1,  -4, 4, 4, $01, X_FLIP | Y_FLIP

.OAMData_078:
	dbsprite   1,  -4, 4, 4, $00, $0
	dbsprite   0,  -4, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite   1,  -3, 4, 4, $01, X_FLIP | Y_FLIP

.OAMData_079:
	dbsprite   1,  -4, 4, 4, $01, $0
	dbsprite   0,  -4, 4, 4, $00, $0
	dbsprite  -1,  -4, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite   1,  -3, 4, 4, $00, $0
	dbsprite   0,  -3, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite   1,  -2, 4, 4, $01, X_FLIP | Y_FLIP

.OAMData_07a:
	dbsprite  -2,  -4, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite  -1,  -4, 4, 4, $00, $0
	dbsprite   0,  -4, 4, 4, $01, $0
	dbsprite  -1,  -3, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite   0,  -3, 4, 4, $00, $0
	dbsprite   1,  -3, 4, 4, $01, $0
	dbsprite   0,  -2, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite   1,  -2, 4, 4, $00, $0
	dbsprite   1,  -1, 4, 4, $01, X_FLIP | Y_FLIP

.OAMData_07b:
	dbsprite  -3,  -4, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite  -2,  -4, 4, 4, $00, $0
	dbsprite  -1,  -4, 4, 4, $01, $0
	dbsprite  -2,  -3, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite  -1,  -3, 4, 4, $00, $0
	dbsprite   0,  -3, 4, 4, $01, $0
	dbsprite  -1,  -2, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite   0,  -2, 4, 4, $00, $0
	dbsprite   1,  -2, 4, 4, $01, $0
	dbsprite   0,  -1, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite   1,  -1, 4, 4, $00, $0
	dbsprite   1,   0, 4, 4, $01, X_FLIP | Y_FLIP

.OAMData_07c:
	dbsprite  -3,  -4, 4, 4, $00, $0
	dbsprite  -2,  -4, 4, 4, $01, $0
	dbsprite  -3,  -3, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite  -2,  -3, 4, 4, $00, $0
	dbsprite  -1,  -3, 4, 4, $01, $0
	dbsprite  -2,  -2, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite  -1,  -2, 4, 4, $00, $0
	dbsprite   0,  -2, 4, 4, $01, $0
	dbsprite  -1,  -1, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite   0,  -1, 4, 4, $00, $0
	dbsprite   1,  -1, 4, 4, $01, $0
	dbsprite   0,   0, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite   1,   0, 4, 4, $00, $0
	dbsprite   1,   1, 4, 4, $01, X_FLIP | Y_FLIP

.OAMData_07d:
	dbsprite  -3,  -4, 4, 4, $01, $0
	dbsprite  -3,  -3, 4, 4, $00, $0
	dbsprite  -2,  -3, 4, 4, $01, $0
	dbsprite  -3,  -2, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite  -2,  -2, 4, 4, $00, $0
	dbsprite  -1,  -2, 4, 4, $01, $0
	dbsprite  -2,  -1, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite  -1,  -1, 4, 4, $00, $0
	dbsprite   0,  -1, 4, 4, $01, $0
	dbsprite  -1,   0, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite   0,   0, 4, 4, $00, $0
	dbsprite   1,   0, 4, 4, $01, $0
	dbsprite   0,   1, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite   1,   1, 4, 4, $00, $0
	dbsprite   1,   2, 4, 4, $01, X_FLIP | Y_FLIP

.OAMData_070:
	dbsprite  -1,  -2, 0, 0, $00, $0
	dbsprite  -1,  -1, 0, 0, $01, $0
	dbsprite   0,  -2, 0, 0, $00, X_FLIP
	dbsprite   0,  -1, 0, 0, $01, X_FLIP
	dbsprite  -1,   0, 0, 0, $01, Y_FLIP
	dbsprite  -1,   1, 0, 0, $00, Y_FLIP
	dbsprite   0,   0, 0, 0, $01, X_FLIP | Y_FLIP
	dbsprite   0,   1, 0, 0, $00, X_FLIP | Y_FLIP

.OAMData_085:
	dbsprite  -2,  -2, 0, 0, $0e, $0
	dbsprite  -1,  -2, 0, 0, $0f, $0
	dbsprite   0,  -2, 0, 0, $10, $0
	dbsprite   1,  -2, 0, 0, $0e, X_FLIP
	dbsprite  -2,  -1, 0, 0, $11, $0
	dbsprite  -1,  -1, 0, 0, $05, $0
	dbsprite   0,  -1, 0, 0, $12, $0
	dbsprite   1,  -1, 0, 0, $11, X_FLIP
	dbsprite  -2,   0, 0, 0, $13, $0
	dbsprite  -1,   0, 0, 0, $14, $0
	dbsprite   0,   0, 0, 0, $14, X_FLIP
	dbsprite   1,   0, 0, 0, $13, X_FLIP
	dbsprite  -2,   1, 0, 0, $15, $0
	dbsprite  -1,   1, 0, 0, $16, $0
	dbsprite   0,   1, 0, 0, $17, $0
	dbsprite   1,   1, 0, 0, $15, X_FLIP

.OAMData_087:
	dbsprite  -1,  -2, 0, 4, $00, $0
	dbsprite   0,  -2, 0, 4, $01, $0
	dbsprite  -1,  -1, 0, 4, $02, $0
	dbsprite   0,  -1, 0, 4, $03, $0
.OAMData_056: ; LENGTH 2
	dbsprite  -1,  -1, 0, 4, $00, $0
	dbsprite   0,  -1, 0, 4, $01, $0
	dbsprite  -1,   0, 0, 4, $02, $0
	dbsprite   0,   0, 0, 4, $03, $0
	dbsprite  -1,  -3, 0, 4, $00, $0
	dbsprite   0,  -3, 0, 4, $01, $0
	dbsprite  -1,  -2, 0, 4, $02, $0
	dbsprite   0,  -2, 0, 4, $03, $0
	dbsprite  -1,   0, 0, 4, $00, $0
	dbsprite   0,   0, 0, 4, $01, $0
	dbsprite  -1,   1, 0, 4, $02, $0
	dbsprite   0,   1, 0, 4, $03, $0

.OAMData_088:
	dbsprite  -1,  -2, 0, 0, $00, $0
	dbsprite   0,  -2, 0, 0, $01, $0
	dbsprite  -1,  -1, 0, 0, $02, $0
	dbsprite   0,  -1, 0, 0, $03, $0
.OAMData_003: ; LENGTH 4
	dbsprite  -1,  -1, 0, 0, $00, $0
	dbsprite   0,  -1, 0, 0, $01, $0
	dbsprite  -1,   0, 0, 0, $02, $0
	dbsprite   0,   0, 0, 0, $03, $0
	dbsprite  -1,   0, 0, 0, $00, $0
	dbsprite   0,   0, 0, 0, $01, $0
	dbsprite  -1,   1, 0, 0, $02, $0
	dbsprite   0,   1, 0, 0, $03, $0

.OAMData_08a:
	dbsprite  -1,  -1, 4, 4, $00, $0
	dbsprite   0,  -1, 4, 0, $00, $0
	dbsprite   1,  -2, 4, 4, $00, $0
	dbsprite   2,  -2, 4, 0, $00, $0
	dbsprite   3,  -3, 4, 4, $00, $0
	dbsprite   4,  -3, 4, 0, $00, $0
	dbsprite   5,  -4, 4, 0, $00, $0
	dbsprite   6,  -5, 4, 4, $00, $0

.OAMData_08e:
	dbsprite  -1,  -3, 4, 4, $00, $0
	dbsprite  -1,  -2, 4, 4, $01, $0
	dbsprite  -1,  -1, 4, 4, $02, $0
	dbsprite  -1,   0, 4, 4, $01, Y_FLIP
	dbsprite  -1,   1, 4, 4, $00, Y_FLIP

.OAMData_08f:
	dbsprite  -2,  -1, 0, 4, $00, $0
	dbsprite  -1,  -1, 0, 4, $01, $0
	dbsprite   0,  -1, 0, 4, $02, $0
	dbsprite   1,  -1, 0, 4, $03, $0

.OAMData_093:
	dbsprite  -2,  -1, 4, 0, $00, $0
	dbsprite  -1,  -1, 4, 0, $01, $0
	dbsprite   0,  -1, 4, 0, $02, $0
	dbsprite  -2,   0, 4, 0, $03, $0
	dbsprite  -1,   0, 4, 0, $04, $0
	dbsprite   0,   0, 4, 0, $05, $0

.OAMData_095:
	dbsprite  -2,  -2, 0, 0, $00, $0
	dbsprite  -1,  -2, 0, 0, $01, $0
	dbsprite  -2,  -1, 0, 0, $02, $0
	dbsprite  -1,  -1, 0, 0, $03, $0
	dbsprite  -2,   0, 0, 0, $04, $0
	dbsprite  -1,   0, 0, 0, $05, $0
	dbsprite  -2,   1, 0, 0, $06, $0
	dbsprite  -1,   1, 0, 0, $07, $0
	dbsprite   1,  -2, 0, 0, $00, X_FLIP
	dbsprite   0,  -2, 0, 0, $01, X_FLIP
	dbsprite   1,  -1, 0, 0, $02, X_FLIP
	dbsprite   0,  -1, 0, 0, $03, X_FLIP
	dbsprite   1,   0, 0, 0, $04, X_FLIP
	dbsprite   0,   0, 0, 0, $05, X_FLIP
	dbsprite   1,   1, 0, 0, $06, X_FLIP
	dbsprite   0,   1, 0, 0, $07, X_FLIP

.OAMData_099:
	dbsprite  -1,  -1, 0, 0, $00, $0
	dbsprite   0,  -1, 0, 0, $05, $0
	dbsprite  -1,   0, 0, 0, $01, $0
	dbsprite   0,   0, 0, 0, $05, $0

.OAMData_09b:
	dbsprite   1,  -4, 0, 4, $00, $0
	dbsprite   2,  -4, 0, 4, $01, $0
	dbsprite  -1,  -3, 0, 4, $02, $0
	dbsprite   0,  -3, 0, 4, $03, $0
	dbsprite   1,  -3, 0, 4, $04, $0
	dbsprite   2,  -3, 0, 4, $05, $0
	dbsprite   3,  -3, 0, 4, $06, $0
	dbsprite  -2,  -2, 0, 4, $07, $0
	dbsprite  -1,  -2, 0, 4, $08, $0
	dbsprite   0,  -2, 0, 4, $09, $0
	dbsprite   1,  -2, 0, 4, $0a, $0
	dbsprite   2,  -2, 0, 4, $0b, $0
	dbsprite   3,  -2, 0, 4, $0c, $0
	dbsprite   4,  -2, 0, 4, $0d, $0
	dbsprite  -3,  -1, 0, 4, $0e, $0
	dbsprite  -2,  -1, 0, 4, $0f, $0
	dbsprite  -1,  -1, 0, 4, $10, $0
	dbsprite   0,  -1, 0, 4, $11, $0
	dbsprite   1,  -1, 0, 4, $12, $0
	dbsprite   2,  -1, 0, 4, $13, $0
	dbsprite  -5,   0, 0, 4, $14, $0
	dbsprite  -4,   0, 0, 4, $15, $0
	dbsprite  -3,   0, 0, 4, $16, $0
	dbsprite  -2,   0, 0, 4, $17, $0
	dbsprite  -1,   0, 0, 4, $18, $0
	dbsprite   0,   0, 0, 4, $19, $0
	dbsprite   1,   0, 0, 4, $1a, $0
	dbsprite   2,   0, 0, 4, $1b, $0
	dbsprite   3,   0, 0, 4, $1c, $0
	dbsprite  -5,   1, 0, 4, $1d, $0
	dbsprite  -4,   1, 0, 4, $1e, $0
	dbsprite  -2,   1, 0, 4, $1f, $0
	dbsprite  -1,   1, 0, 4, $20, $0
	dbsprite   0,   1, 0, 4, $21, $0
	dbsprite   1,   1, 0, 4, $22, $0
	dbsprite   0,   2, 0, 4, $23, $0

.OAMData_09c:
	dbsprite  -1,   0, 0, 4, $02, $0
	dbsprite   0,   0, 0, 4, $03, $0
	dbsprite  -1,  -1, 0, 4, $01, $0
	dbsprite   0,  -1, 0, 4, $01, X_FLIP
	dbsprite  -1,  -2, 0, 4, $00, $0
	dbsprite   0,  -2, 0, 4, $00, X_FLIP

.OAMData_09f:
	dbsprite  -2,  -1, 0, 0, $00, $0
	dbsprite  -1,  -1, 0, 0, $01, $0
	dbsprite   0,  -1, 0, 0, $02, $0
	dbsprite   1,  -1, 0, 0, $03, $0
	dbsprite  -2,   0, 0, 0, $04, $0
	dbsprite  -1,   0, 0, 0, $05, $0
	dbsprite   0,   0, 0, 0, $06, $0
	dbsprite   1,   0, 0, 0, $07, $0

.OAMData_0a0:
	dbsprite  -1,  -2, 4, 4, $00, $0
	dbsprite  -1,  -1, 4, 4, $00, $0
	dbsprite  -1,   0, 4, 4, $00, $0
	dbsprite  -1,  -3, 4, 4, $00, $0
	dbsprite  -1,   1, 4, 4, $00, $0
	dbsprite  -1,  -4, 4, 4, $00, $0
	dbsprite  -1,   2, 4, 4, $00, $0

.OAMData_0a3:
	dbsprite  -3,  -4, 0, 7, $00, $0
	dbsprite  -2,  -4, 0, 7, $01, $0
	dbsprite  -1,  -4, 0, 7, $02, $0
	dbsprite  -3,  -3, 0, 7, $03, $0
	dbsprite  -2,  -3, 0, 7, $04, $0
	dbsprite  -3,  -2, 0, 7, $06, $0
	dbsprite   2,  -4, 0, 7, $00, X_FLIP
	dbsprite   1,  -4, 0, 7, $01, X_FLIP
	dbsprite   0,  -4, 0, 7, $02, X_FLIP
	dbsprite   2,  -3, 0, 7, $03, X_FLIP
	dbsprite   1,  -3, 0, 7, $04, X_FLIP
	dbsprite   2,  -2, 0, 7, $06, X_FLIP
	dbsprite  -3,   1, 0, 7, $00, Y_FLIP
	dbsprite  -2,   1, 0, 7, $01, Y_FLIP
	dbsprite  -1,   1, 0, 7, $02, Y_FLIP
	dbsprite  -3,   0, 0, 7, $03, Y_FLIP
	dbsprite  -2,   0, 0, 7, $04, Y_FLIP
	dbsprite  -3,  -1, 0, 7, $06, Y_FLIP
	dbsprite   2,   1, 0, 7, $00, X_FLIP | Y_FLIP
	dbsprite   1,   1, 0, 7, $01, X_FLIP | Y_FLIP
	dbsprite   0,   1, 0, 7, $02, X_FLIP | Y_FLIP
	dbsprite   2,   0, 0, 7, $03, X_FLIP | Y_FLIP
	dbsprite   1,   0, 0, 7, $04, X_FLIP | Y_FLIP
	dbsprite   2,  -1, 0, 7, $06, X_FLIP | Y_FLIP

.OAMData_0a4:
	dbsprite  -2,  -2, 4, 4, $00, $0
	dbsprite  -1,  -2, 4, 4, $01, $0
	dbsprite   0,  -2, 4, 4, $02, $0
	dbsprite  -2,  -1, 4, 4, $03, $0
	dbsprite  -1,  -1, 4, 4, $04, $0
	dbsprite   0,  -1, 4, 4, $05, $0
	dbsprite  -2,   0, 4, 4, $00, Y_FLIP
	dbsprite  -1,   0, 4, 4, $01, Y_FLIP
	dbsprite   0,   0, 4, 4, $02, Y_FLIP

.OAMData_0ba:
	dbsprite  -2,  -2, 4, 4, $00, $0
	dbsprite  -1,  -2, 4, 4, $01, $0
	dbsprite   0,  -2, 4, 4, $00, X_FLIP
	dbsprite  -2,  -1, 4, 4, $02, $0
	dbsprite   0,  -1, 4, 4, $02, X_FLIP | Y_FLIP
	dbsprite  -2,   0, 4, 4, $00, Y_FLIP
	dbsprite  -1,   0, 4, 4, $01, X_FLIP | Y_FLIP
	dbsprite   0,   0, 4, 4, $00, X_FLIP | Y_FLIP

.OAMData_0bc:
	dbsprite  -3,  -1, 0, 4, $00, $0
	dbsprite  -2,  -1, 0, 4, $01, $0
	dbsprite  -1,  -1, 0, 4, $02, $0
	dbsprite   0,  -1, 0, 4, $02, X_FLIP
	dbsprite   1,  -1, 0, 4, $01, X_FLIP
	dbsprite   2,  -1, 0, 4, $00, X_FLIP

.OAMData_0bd:
	dbsprite   0,  -2, 0, 0, $00, $0
	dbsprite   0,  -1, 0, 0, $01, $0
	dbsprite   0,   0, 0, 0, $01, Y_FLIP
	dbsprite   0,   1, 0, 0, $00, Y_FLIP

.OAMData_0be:
	dsprite  -3, 0,   0, 0, $00, $0
	dsprite  -2, 0,   0, 0, $01, $0
	dsprite  -1, 0,   0, 0, $06, $0
	dsprite  -3, 0,   1, 0, $00, X_FLIP
	dsprite  -2, 0,   1, 0, $01, X_FLIP
	dsprite  -1, 0,   1, 0, $06, X_FLIP
	dsprite   0, 0,   0, 0, $01, Y_FLIP
	dsprite   1, 0,   0, 0, $00, Y_FLIP
	dsprite   0, 0,   1, 0, $01, X_FLIP | Y_FLIP
	dsprite   1, 0,   1, 0, $00, X_FLIP | Y_FLIP

.OAMData_0c1:
	dbsprite  -2,  -2, 0, 0, $00, $0
	dbsprite  -1,  -2, 0, 0, $01, $0
	dbsprite   0,  -2, 0, 0, $02, $0
	dbsprite   1,  -2, 0, 0, $00, X_FLIP
	dbsprite  -2,  -1, 0, 0, $03, $0
	dbsprite  -1,  -1, 0, 0, $04, $0
	dbsprite   0,  -1, 0, 0, $04, X_FLIP
	dbsprite   1,  -1, 0, 0, $05, $0
	dbsprite  -2,   0, 0, 0, $05, X_FLIP | Y_FLIP
	dbsprite  -1,   0, 0, 0, $04, Y_FLIP
	dbsprite   0,   0, 0, 0, $04, X_FLIP | Y_FLIP
	dbsprite   1,   0, 0, 0, $03, X_FLIP | Y_FLIP
	dbsprite  -2,   1, 0, 0, $00, Y_FLIP
	dbsprite  -1,   1, 0, 0, $02, X_FLIP | Y_FLIP
	dbsprite   0,   1, 0, 0, $01, X_FLIP | Y_FLIP
	dbsprite   1,   1, 0, 0, $00, X_FLIP | Y_FLIP

.OAMData_0c2:
	dbsprite  -2,  -1, 0, 0, $00, $0
	dbsprite  -1,  -1, 0, 0, $01, $0
	dbsprite   0,  -1, 0, 0, $00, X_FLIP | Y_FLIP
	dbsprite  -1,   0, 0, 0, $00, $0
	dbsprite   0,   0, 0, 0, $01, $0
	dbsprite   1,   0, 0, 0, $00, X_FLIP | Y_FLIP

.OAMData_0c4:
	dbsprite  -2,  -2, -1, 1, $00, $0
	dbsprite  -1,  -2, -1, 1, $01, $0
	dbsprite   0,  -2, -1, 1, $02, $0
	dbsprite  -2,  -1, -1, 1, $03, $0
	dbsprite  -1,  -1, -1, 1, $04, $0
	dbsprite   0,  -1, -1, 1, $05, $0
	dbsprite  -2,   0, -1, 1, $06, $0
	dbsprite  -1,   0, -1, 1, $07, $0
	dbsprite   0,   0, -1, 1, $08, $0
	dbsprite  -3,  -1, -1, 1, $00, $0
	dbsprite  -3,   0, -3, 3, $05, X_FLIP | Y_FLIP
	dbsprite  -3,   1, -3, 3, $02, X_FLIP | Y_FLIP
	dbsprite  -2,   1, -3, 3, $01, X_FLIP | Y_FLIP
	dbsprite  -3,   0, -1, 1, $03, $0
	dbsprite  -2,   0, -3, 3, $06, $0
	dbsprite  -2,   1, -1, 1, $07, $0
	dbsprite  -1,   1, -1, 1, $08, $0

.OAMData_0c8:
	dbsprite   1,  -1, 4, 0, $00, $0
	dbsprite   2,  -1, 4, 0, $01, $0
	dbsprite  -1,   0, 4, 0, $02, $0
	dbsprite   0,   0, 4, 0, $03, $0
	dbsprite   1,   0, 4, 0, $04, $0
	dbsprite   2,   0, 4, 0, $05, $0

.OAMData_0ca:
	dbsprite  -1,  -1, 0, 0, $00, $0
	dbsprite   0,  -1, 0, 0, $01, X_FLIP | Y_FLIP
	dbsprite  -1,   0, 0, 0, $01, $0
	dbsprite   0,   0, 0, 0, $01, X_FLIP

.OAMData_0cc:
	dbsprite -13,  -2, 4, 0, $00, $0
	dbsprite -11,  -4, 4, 0, $00, $0
	dbsprite  -9,  -1, 4, 0, $00, $0
	dbsprite  -7,  -5, 4, 0, $00, $0
	dbsprite  -5,  -3, 4, 0, $00, $0
	dbsprite  -3,  -5, 4, 0, $00, $0
	dbsprite  -1,  -3, 4, 0, $00, $0
	dbsprite   0,  -3, 4, 0, $00, $0
	dbsprite   2,  -5, 4, 0, $00, $0
	dbsprite   4,   0, 4, 0, $00, $0
	dbsprite   6,  -2, 4, 0, $00, $0
	dbsprite   8,  -4, 4, 0, $00, $0
	dbsprite  10,  -2, 4, 0, $00, $0

.OAMData_0d8:
	dbsprite  -2,  -3, 0, 7, $00, $0
	dbsprite  -1,  -3, 0, 7, $01, $0
	dbsprite  -2,  -2, 0, 7, $02, $0
	dbsprite  -1,  -2, 0, 7, $03, $0
	dbsprite   1,  -3, 0, 7, $00, X_FLIP
	dbsprite   0,  -3, 0, 7, $01, X_FLIP
	dbsprite   1,  -2, 0, 7, $02, X_FLIP
	dbsprite   0,  -2, 0, 7, $03, X_FLIP
	dbsprite  -2,   0, 0, 7, $00, Y_FLIP
	dbsprite  -1,   0, 0, 7, $01, Y_FLIP
	dbsprite  -2,  -1, 0, 7, $02, Y_FLIP
	dbsprite  -1,  -1, 0, 7, $03, Y_FLIP
	dbsprite   1,   0, 0, 7, $00, X_FLIP | Y_FLIP
	dbsprite   0,   0, 0, 7, $01, X_FLIP | Y_FLIP
	dbsprite   1,  -1, 0, 7, $02, X_FLIP | Y_FLIP
	dbsprite   0,  -1, 0, 7, $03, X_FLIP | Y_FLIP

.OAMData_0d9:
	dbsprite  -2,  -2, 0, 0, $00, $0
	dbsprite  -1,  -2, 0, 0, $01, $0
	dbsprite  -2,  -1, 0, 0, $02, $0
	dbsprite   0,  -2, 0, 0, $01, X_FLIP
	dbsprite   1,  -2, 0, 0, $00, X_FLIP
	dbsprite   1,  -1, 0, 0, $02, X_FLIP
	dbsprite  -2,   0, 0, 0, $02, Y_FLIP
	dbsprite  -2,   1, 0, 0, $00, Y_FLIP
	dbsprite  -1,   1, 0, 0, $01, Y_FLIP
	dbsprite   1,   0, 0, 0, $02, X_FLIP | Y_FLIP
	dbsprite   0,   1, 0, 0, $01, X_FLIP | Y_FLIP
	dbsprite   1,   1, 0, 0, $00, X_FLIP | Y_FLIP

.OAMData_0dd:
	dbsprite  -1,  -1, 4, 4, $00, $0
	dbsprite   0,   0, 2, 2, $00, $0

.OAMData_0de:
	dbsprite   -6, -6,  0,  0,$00, $0
	dbsprite   -5, -1,  0, -4,$00, $0
	dbsprite    2, -4,  0,  0,$00, $0
	dbsprite    0,  2, -2,  2,$00, $0
	dbsprite    4, -6,  0,  0,$00, $0
	dbsprite    7,  4,  0,  0,$00, $0
	dbsprite    8, -1,  2,  0,$00, $0
	dbsprite   11, -6,  2,  2,$00, $0
	dbsprite   -3, -5,  0,  0,$01, $0
	dbsprite    5,  2,  2,  0,$01, $0
	dbsprite   12, -4,  2,  0,$01, $0
	dbsprite   -5,  3,  0,  0,$02, X_FLIP
	dbsprite    0, -7,  0,  0,$02, $0
	dbsprite    6, -3, -2, -2,$02, X_FLIP
	dbsprite    9,  2,  1, -1,$02, $0
	dbsprite    2, -1,  0,  0,$03, $0
	dbsprite   10, -7,  0, -1,$03, X_FLIP
	dbsprite   -6, -4,  0,  0,$04, $0
	dbsprite   -6,  1,  2, -4,$04, $0
	dbsprite   -4, -7,  0,  0,$04, $0
	dbsprite   -2, -2,  1,  2,$04, $0
	dbsprite    3,  4,  0, -2,$04, $0
	dbsprite    5, -1,  0,  3,$04, $0
	dbsprite    7, -7,  0,  3,$04, $0
	dbsprite   10, -4,  0,  0,$04, $0
	dbsprite   12,  1,  2,  0,$04, $0

.OAMData_0df:
	dbsprite   3,  -1, 0, 0, $00, $0
	dbsprite   4,  -1, 0, 0, $01, $0
	dbsprite   3,   0, 0, 0, $02, $0
	dbsprite   4,   0, 0, 0, $03, $0
	dbsprite   5,  -1, 0, 0, $04, $0
	dbsprite   5,   0, 0, 0, $05, $0

.OAMData_0e1:
	dbsprite   4,  -1, 0, 0, $01, $0
	dbsprite   3,   0, 0, 0, $00, $0
	dbsprite   4,   0, 0, 0, $03, $0
	dbsprite   5,  -1, 0, 0, $02, $0
	dbsprite   5,   0, 0, 0, $04, $0

.OAMData_0e6:
	dbsprite  -2,  -1, 0, 0, $00, $0
	dbsprite  -1,  -1, 0, 0, $02, X_FLIP | Y_FLIP
	dbsprite  -2,   0, 0, 0, $02, $0
	dbsprite  -1,   0, 0, 0, $01, $0
	dbsprite   0,  -1, 0, 0, $02, Y_FLIP
	dbsprite   1,  -1, 0, 0, $00, X_FLIP
	dbsprite   0,   0, 0, 0, $01, $0
	dbsprite   1,   0, 0, 0, $02, X_FLIP
	dbsprite  -2,   1, 0, 0, $02, Y_FLIP
	dbsprite  -1,   1, 0, 0, $01, $0
	dbsprite  -2,   2, 0, 0, $00, Y_FLIP
	dbsprite  -1,   2, 0, 0, $02, X_FLIP
	dbsprite   0,   1, 0, 0, $01, $0
	dbsprite   1,   1, 0, 0, $02, X_FLIP | Y_FLIP
	dbsprite   0,   2, 0, 0, $02, $0
	dbsprite   1,   2, 0, 0, $00, X_FLIP | Y_FLIP

.OAMData_0e7:
	dbsprite  -3,  -4, 0, 7, $00, $0
	dbsprite  -2,  -4, 0, 7, $01, $0
	dbsprite  -1,  -4, 0, 7, $02, $0
	dbsprite  -3,  -3, 0, 7, $03, $0
	dbsprite  -2,  -3, 0, 7, $04, $0
	dbsprite  -1,  -3, 0, 7, $05, $0
	dbsprite  -3,  -2, 0, 7, $06, $0
	dbsprite  -2,  -2, 0, 7, $07, $0
	dbsprite  -1,  -2, 0, 7, $08, $0
	dbsprite   2,  -4, 0, 7, $00, X_FLIP
	dbsprite   1,  -4, 0, 7, $01, X_FLIP
	dbsprite   0,  -4, 0, 7, $02, X_FLIP
	dbsprite   2,  -3, 0, 7, $03, X_FLIP
	dbsprite   1,  -3, 0, 7, $04, X_FLIP
	dbsprite   0,  -3, 0, 7, $05, X_FLIP
	dbsprite   2,  -2, 0, 7, $06, X_FLIP
	dbsprite   1,  -2, 0, 7, $07, X_FLIP
	dbsprite   0,  -2, 0, 7, $08, X_FLIP
	dbsprite  -3,   1, 0, 7, $00, Y_FLIP
	dbsprite  -2,   1, 0, 7, $01, Y_FLIP
	dbsprite  -1,   1, 0, 7, $02, Y_FLIP
	dbsprite  -3,   0, 0, 7, $03, Y_FLIP
	dbsprite  -2,   0, 0, 7, $04, Y_FLIP
	dbsprite  -1,   0, 0, 7, $05, Y_FLIP
	dbsprite  -3,  -1, 0, 7, $06, Y_FLIP
	dbsprite  -2,  -1, 0, 7, $07, Y_FLIP
	dbsprite  -1,  -1, 0, 7, $08, Y_FLIP
	dbsprite   2,   1, 0, 7, $00, X_FLIP | Y_FLIP
	dbsprite   1,   1, 0, 7, $01, X_FLIP | Y_FLIP
	dbsprite   0,   1, 0, 7, $02, X_FLIP | Y_FLIP
	dbsprite   2,   0, 0, 7, $03, X_FLIP | Y_FLIP
	dbsprite   1,   0, 0, 7, $04, X_FLIP | Y_FLIP
	dbsprite   0,   0, 0, 7, $05, X_FLIP | Y_FLIP
	dbsprite   2,  -1, 0, 7, $06, X_FLIP | Y_FLIP
	dbsprite   1,  -1, 0, 7, $07, X_FLIP | Y_FLIP
	dbsprite   0,  -1, 0, 7, $08, X_FLIP | Y_FLIP

.OAMData_0e9:
	dsprite  -2, 4,  -2, 4, $00, $0
	dsprite  -2, 4,  -1, 4, $03, $0
	dsprite  -2, 4,   0, 4, $06, $0
	dsprite  -1, 4,  -2, 4, $01, $0
	dsprite  -1, 4,  -1, 4, $04, $0
	dsprite  -1, 4,   0, 4, $07, $0
	dsprite   0, 4,  -2, 4, $02, $0
	dsprite   0, 4,  -1, 4, $05, $0
	dsprite   0, 4,   0, 4, $08, $0

.OAMData_0ea:
	dbsprite  -1,  -3, 0, 0, $00, $0
	dbsprite   0,  -3, 0, 0, $00, X_FLIP
	dbsprite  -1,  -2, 0, 0, $01, $0
	dbsprite   0,  -2, 0, 0, $01, X_FLIP
	dbsprite  -1,  -1, 0, 0, $02, $0
	dbsprite   0,  -1, 0, 0, $02, X_FLIP
	dbsprite  -1,   0, 0, 0, $03, $0
	dbsprite   0,   0, 0, 0, $03, X_FLIP

.OAMData_0eb:
	dbsprite  -1,  -4, 0, 0, $00, $0
	dbsprite   0,  -4, 0, 0, $00, X_FLIP
	dbsprite  -1,  -3, 0, 0, $01, $0
	dbsprite   0,  -3, 0, 0, $01, X_FLIP
	dbsprite  -1,  -2, 0, 0, $02, $0
	dbsprite   0,  -2, 0, 0, $02, X_FLIP
	dbsprite  -1,  -1, 0, 0, $03, $0
	dbsprite   0,  -1, 0, 0, $03, X_FLIP
	dbsprite  -1,   0, 0, 0, $04, $0
	dbsprite   0,   0, 0, 0, $04, X_FLIP

.OAMData_0ed:
	dbsprite  -2,  -2, 0, 0, $00, $0
	dbsprite  -1,  -2, 0, 0, $01, $0
	dbsprite   0,  -2, 0, 0, $02, $0
	dbsprite   1,  -2, 0, 0, $03, $0
	dbsprite  -2,  -1, 0, 0, $04, $0
	dbsprite  -1,  -1, 0, 0, $05, $0
	dbsprite   0,  -1, 0, 0, $06, $0
	dbsprite   1,  -1, 0, 0, $07, $0
	dbsprite  -2,   0, 0, 0, $07, X_FLIP | Y_FLIP
	dbsprite  -1,   0, 0, 0, $06, X_FLIP | Y_FLIP
	dbsprite   0,   0, 0, 0, $05, X_FLIP | Y_FLIP
	dbsprite   1,   0, 0, 0, $04, X_FLIP | Y_FLIP
	dbsprite  -2,   1, 0, 0, $03, X_FLIP | Y_FLIP
	dbsprite  -1,   1, 0, 0, $02, X_FLIP | Y_FLIP
	dbsprite   0,   1, 0, 0, $01, X_FLIP | Y_FLIP
	dbsprite   1,   1, 0, 0, $00, X_FLIP | Y_FLIP

.OAMData_0f1:
	dbsprite  -1, 0,  -1, 4, $00, Y_FLIP

.OAMData_0f3:
	dbsprite  -1,  1, 0, 0, $00, $0
	dbsprite  -3,  2, 0, 0, $01, $0
	dbsprite  -2,  2, 0, 0, $02, $0
	dbsprite  -1,  2, 0, 0, $03, $0

.OAMData_0f4:
	dbsprite   0,  0, 0, 0, $00, $0
	dbsprite  -2,  1, 0, 0, $01, $0
	dbsprite  -1,  1, 0, 0, $02, $0
	dbsprite   0,  1, 0, 0, $03, $0
	dbsprite  -3,  2, 0, 0, $04, $0
	dbsprite  -2,  2, 0, 0, $05, $0
	dbsprite  -1,  2, 0, 0, $06, $0
	dbsprite   0,  2, 0, 0, $07, $0

.OAMData_0f5:
	dbsprite   1, -1, 0, 0, $00, $0
	dbsprite  -1,  0, 0, 0, $01, $0
	dbsprite   0,  0, 0, 0, $02, $0
	dbsprite   1,  0, 0, 0, $03, $0
	dbsprite  -2,  1, 0, 0, $04, $0
	dbsprite  -1,  1, 0, 0, $05, $0
	dbsprite   0,  1, 0, 0, $06, $0
	dbsprite   1,  1, 0, 0, $07, $0
	dbsprite  -3,  2, 0, 0, $08, $0
	dbsprite  -2,  2, 0, 0, $09, $0
	dbsprite  -1,  2, 0, 0, $0a, $0
	dbsprite   0,  2, 0, 0, $0b, $0

.OAMData_0f6:
	dbsprite   2, -2, 0, 0, $00, $0
	dbsprite   0, -1, 0, 0, $01, $0
	dbsprite   1, -1, 0, 0, $02, $0
	dbsprite   2, -1, 0, 0, $03, $0
	dbsprite  -1,  0, 0, 0, $04, $0
	dbsprite   0,  0, 0, 0, $05, $0
	dbsprite   1,  0, 0, 0, $06, $0
	dbsprite   2,  0, 0, 0, $07, $0
	dbsprite  -2,  1, 0, 0, $08, $0
	dbsprite  -1,  1, 0, 0, $09, $0
	dbsprite   0,  1, 0, 0, $0a, $0
	dbsprite   1,  1, 0, 0, $0b, $0
	dbsprite  -3,  2, 0, 0, $0c, $0
	dbsprite  -2,  2, 0, 0, $0d, $0
	dbsprite  -1,  2, 0, 0, $0e, $0
	dbsprite   0,  2, 0, 0, $0f, $0

.OAMData_0f7:
	dbsprite   0,  -2, 4, 4, $00, $0
	dbsprite   1,  -2, 4, 4, $01, $0
	dbsprite   2,  -2, 4, 4, $02, $0
	dbsprite   0,  -1, 4, 4, $03, $0
	dbsprite   1,  -1, 4, 4, $04, $0
	dbsprite   2,  -1, 4, 4, $05, $0
	dbsprite   0,   0, 4, 4, $06, $0
	dbsprite   1,   0, 4, 4, $07, $0
	dbsprite   2,   0, 4, 4, $08, $0
	dbsprite  -3,  -2, 4, 4, $00, X_FLIP
	dbsprite  -4,  -2, 4, 4, $01, X_FLIP
	dbsprite  -5,  -2, 4, 4, $02, X_FLIP
	dbsprite  -3,  -1, 4, 4, $03, X_FLIP
	dbsprite  -4,  -1, 4, 4, $04, X_FLIP
	dbsprite  -5,  -1, 4, 4, $05, X_FLIP
	dbsprite  -3,   0, 4, 4, $06, X_FLIP
	dbsprite  -4,   0, 4, 4, $07, X_FLIP
	dbsprite  -5,   0, 4, 4, $08, X_FLIP

.OAMData_0f9:
	dbsprite  -2,  -2, 4, 4, $00, $0
	dbsprite  -1,  -2, 4, 4, $01, $0
	dbsprite   0,  -2, 4, 4, $00, X_FLIP
	dbsprite  -2,  -1, 4, 4, $02, $0
	dbsprite  -1,  -1, 4, 4, $03, $0
	dbsprite   0,  -1, 4, 4, $02, X_FLIP
	dbsprite  -2,   0, 4, 4, $04, $0
	dbsprite  -1,   0, 4, 4, $05, $0
	dbsprite   0,   0, 4, 4, $04, X_FLIP

.OAMData_100:
	dbsprite   0, -1, -1, 4, $04, $0
	dbsprite  -1, -1, -1, 0, $00, $0
	dbsprite   0, -1, -1, 0, $00, X_FLIP
	dbsprite  -1,  0, -1, 0, $00, Y_FLIP
	dbsprite   0,  0, -1, 0, $00, X_FLIP | Y_FLIP

.OAMData_101:
	dbsprite   0, -1, -1, 4, $04, $0
	dbsprite  -1, -1, -1, 4, $04, $0
	dbsprite  -2, -1, -1, 0, $00, $0
	dbsprite  -1, -1, -1, 0, $00, X_FLIP
	dbsprite  -2,  0, -1, 0, $00, Y_FLIP
	dbsprite  -1,  0, -1, 0, $00, X_FLIP | Y_FLIP

.OAMData_102:
	dbsprite   0, -1, -1, 4, $04, $0
	dbsprite  -1, -1, -1, 4, $04, $0
	dbsprite  -2, -1, -1, 4, $04, $0
	dbsprite  -3, -1, -1, 0, $00, $0
	dbsprite  -2, -1, -1, 0, $00, X_FLIP
	dbsprite  -3,  0, -1, 0, $00, Y_FLIP
	dbsprite  -2,  0, -1, 0, $00, X_FLIP | Y_FLIP

.OAMData_103:
	dbsprite   0, -1, -1, 4, $04, $0
	dbsprite  -1, -1, -1, 4, $04, $0
	dbsprite  -2, -1, -1, 4, $04, $0
	dbsprite  -3, -1, -1, 4, $04, $0
	dbsprite  -4, -1, -1, 0, $00, $0
	dbsprite  -3, -1, -1, 0, $00, X_FLIP
	dbsprite  -4,  0, -1, 0, $00, Y_FLIP
	dbsprite  -3,  0, -1, 0, $00, X_FLIP | Y_FLIP

.OAMData_104:
	dbsprite   0, -1, -1, 4, $04, $0
	dbsprite  -1, -1, -1, 4, $04, $0
	dbsprite  -2, -1, -1, 4, $04, $0
	dbsprite  -3, -1, -1, 4, $04, $0
	dbsprite  -4, -1, -1, 4, $04, $0
	dbsprite  -5, -1, -1, 0, $00, $0
	dbsprite  -4, -1, -1, 0, $00, X_FLIP
	dbsprite  -5,  0, -1, 0, $00, Y_FLIP
	dbsprite  -4,  0, -1, 0, $00, X_FLIP | Y_FLIP

.OAMData_105:
	dbsprite   0, -1, -1, 4, $04, $0
	dbsprite  -1, -1, -1, 4, $04, $0
	dbsprite  -2, -1, -1, 4, $04, $0
	dbsprite  -3, -1, -1, 4, $04, $0
	dbsprite  -4, -1, -1, 4, $04, $0
	dbsprite  -5, -1, -1, 4, $04, $0
	dbsprite  -6, -1, -1, 0, $00, $0
	dbsprite  -5, -1, -1, 0, $00, X_FLIP
	dbsprite  -6,  0, -1, 0, $00, Y_FLIP
	dbsprite  -5,  0, -1, 0, $00, X_FLIP | Y_FLIP

.OAMData_106:
	dbsprite   0, -1, -1, 4, $04, $0
	dbsprite  -1, -1, -1, 4, $04, $0
	dbsprite  -2, -1, -1, 4, $04, $0
	dbsprite  -3, -1, -1, 4, $04, $0
	dbsprite  -4, -1, -1, 4, $04, $0
	dbsprite  -5, -1, -1, 4, $04, $0
	dbsprite  -6, -1, -1, 4, $04, $0
	dbsprite  -7, -1, -1, 0, $00, $0
	dbsprite  -6, -1, -1, 0, $00, X_FLIP
	dbsprite  -7,  0, -1, 0, $00, Y_FLIP
	dbsprite  -6,  0, -1, 0, $00, X_FLIP | Y_FLIP