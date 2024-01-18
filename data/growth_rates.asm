MACRO growth_rate
; [1]/[2]*n**3 + [3]*n**2 + [4]*n - [5]
	dn \1, \2
	if \3 < 0
		db -\3 | $80 ; signed magnitude
	else
		db \3
	endc
	db \4, \5
ENDM

GrowthRates:
; entries correspond to GROWTH_* (see constants/pokemon_data_constants.asm)
	table_width 4, GrowthRates
	growth_rate 1, 1,   0,   0,   0 ; Medium Fast
	growth_rate 3, 4,  10,   0,  30 ; Slightly Fast
	growth_rate 3, 4,  20,   0,  70 ; Slightly Slow
	growth_rate 6, 5, -15, 100, 140 ; Medium Slow
	growth_rate 4, 5,   0,   0,   0 ; Fast
	growth_rate 5, 4,   0,   0,   0 ; Slow
	assert_table_length NUM_GROWTH_RATES - 2

ErraticExperience:
	dt      0 ; L:1
	dt     15 ; L:2
	dt     52 ; L:3
	dt    122 ; L:4
	dt    237 ; L:5
	dt    406 ; L:6
	dt    637 ; L:7
	dt    942 ; L:8
	dt   1326 ; L:9
	dt   1800 ; L:10
	dt   2369 ; L:11
	dt   3041 ; L:12
	dt   3822 ; L:13
	dt   4719 ; L:14
	dt   5737 ; L:15
	dt   6881 ; L:16
	dt   8155 ; L:17
	dt   9564 ; L:18
	dt  11111 ; L:19
	dt  12800 ; L:20
	dt  14632 ; L:21
	dt  16610 ; L:22
	dt  18737 ; L:23
	dt  21012 ; L:24
	dt  23437 ; L:25
	dt  26012 ; L:26
	dt  28737 ; L:27
	dt  31610 ; L:28
	dt  34632 ; L:29
	dt  37800 ; L:30
	dt  41111 ; L:31
	dt  44564 ; L:32
	dt  48155 ; L:33
	dt  51881 ; L:34
	dt  55737 ; L:35
	dt  59719 ; L:36
	dt  63822 ; L:37
	dt  68041 ; L:38
	dt  72369 ; L:39
	dt  76800 ; L:40
	dt  81326 ; L:41
	dt  85942 ; L:42
	dt  90637 ; L:43
	dt  95406 ; L:44
	dt 100237 ; L:45
	dt 105122 ; L:46
	dt 110052 ; L:47
	dt 115015 ; L:48
	dt 120001 ; L:49
	dt 125000 ; L:50
	dt 131324 ; L:51
	dt 137795 ; L:52
	dt 144410 ; L:53
	dt 151165 ; L:54
	dt 158056 ; L:55
	dt 165079 ; L:56
	dt 172229 ; L:57
	dt 179503 ; L:58
	dt 186894 ; L:59
	dt 194400 ; L:60
	dt 202013 ; L:61
	dt 209728 ; L:62
	dt 217540 ; L:63
	dt 225443 ; L:64
	dt 233431 ; L:65
	dt 241496 ; L:66
	dt 249633 ; L:67
	dt 257834 ; L:68
	dt 267406 ; L:69
	dt 276458 ; L:70
	dt 286328 ; L:71
	dt 296358 ; L:72
	dt 305767 ; L:73
	dt 316074 ; L:74
	dt 326531 ; L:75
	dt 336255 ; L:76
	dt 346965 ; L:77
	dt 357812 ; L:78
	dt 367807 ; L:79
	dt 378880 ; L:80
	dt 390077 ; L:81
	dt 400293 ; L:82
	dt 411686 ; L:83
	dt 423190 ; L:84
	dt 433572 ; L:85
	dt 445239 ; L:86
	dt 457001 ; L:87
	dt 467489 ; L:88
	dt 479378 ; L:89
	dt 491346 ; L:90
	dt 501878 ; L:91
	dt 513934 ; L:92
	dt 526049 ; L:93
	dt 536557 ; L:94
	dt 548720 ; L:95
	dt 560922 ; L:96
	dt 571333 ; L:97
	dt 583539 ; L:98
	dt 591882 ; L:99
	dt 600000 ; L:100

FluctuatingExperience:
	dt       0 ; L:1
	dt       4 ; L:2
	dt      13 ; L:3
	dt      32 ; L:4
	dt      65 ; L:5
	dt     112 ; L:6
	dt     178 ; L:7
	dt     276 ; L:8
	dt     393 ; L:9
	dt     540 ; L:10
	dt     745 ; L:11
	dt     967 ; L:12
	dt    1230 ; L:13
	dt    1591 ; L:14
	dt    1957 ; L:15
	dt    2457 ; L:16
	dt    3046 ; L:17
	dt    3732 ; L:18
	dt    4526 ; L:19
	dt    5440 ; L:20
	dt    6482 ; L:21
	dt    7666 ; L:22
	dt    9003 ; L:23
	dt   10506 ; L:24
	dt   12187 ; L:25
	dt   14060 ; L:26
	dt   16140 ; L:27
	dt   18439 ; L:28
	dt   20974 ; L:29
	dt   23760 ; L:30
	dt   26811 ; L:31
	dt   30146 ; L:32
	dt   33780 ; L:33
	dt   37731 ; L:34
	dt   42017 ; L:35
	dt   46656 ; L:36
	dt   50653 ; L:37
	dt   55969 ; L:38
	dt   60505 ; L:39
	dt   66560 ; L:40
	dt   71677 ; L:41
	dt   78533 ; L:42
	dt   84277 ; L:43
	dt   91998 ; L:44
	dt   98415 ; L:45
	dt  107069 ; L:46
	dt  114205 ; L:47
	dt  123863 ; L:48
	dt  131766 ; L:49
	dt  142500 ; L:50
	dt  151222 ; L:51
	dt  163105 ; L:52
	dt  172697 ; L:53
	dt  185807 ; L:54
	dt  196322 ; L:55
	dt  210739 ; L:56
	dt  222231 ; L:57
	dt  238036 ; L:58
	dt  250562 ; L:59
	dt  267840 ; L:60
	dt  281456 ; L:61
	dt  300293 ; L:62
	dt  315059 ; L:63
	dt  335544 ; L:64
	dt  351520 ; L:65
	dt  373744 ; L:66
	dt  390991 ; L:67
	dt  415050 ; L:68
	dt  433631 ; L:69
	dt  459620 ; L:70
	dt  479600 ; L:71
	dt  507617 ; L:72
	dt  529063 ; L:73
	dt  559209 ; L:74
	dt  582187 ; L:75
	dt  614566 ; L:76
	dt  639146 ; L:77
	dt  673863 ; L:78
	dt  700115 ; L:79
	dt  737280 ; L:80
	dt  765275 ; L:81
	dt  804997 ; L:82
	dt  834809 ; L:83
	dt  877201 ; L:84
	dt  908905 ; L:85
	dt  954084 ; L:86
	dt  987754 ; L:87
	dt 1035837 ; L:88
	dt 1071552 ; L:89
	dt 1122660 ; L:90
	dt 1160499 ; L:91
	dt 1214753 ; L:92
	dt 1254796 ; L:93
	dt 1312322 ; L:94
	dt 1354652 ; L:95
	dt 1415577 ; L:96
	dt 1460276 ; L:97
	dt 1524731 ; L:98
	dt 1571884 ; L:99
	dt 1640000 ; L:100
