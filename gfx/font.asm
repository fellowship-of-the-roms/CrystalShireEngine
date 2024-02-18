Font:
INCBIN "gfx/font/font.1bpp"

Signs:
	table_width 8 tiles, Signs
INCBIN "gfx/signs/wood.2bpp"
INCBIN "gfx/signs/city.2bpp"
INCBIN "gfx/signs/forest.2bpp"
INCBIN "gfx/signs/cave.2bpp"
INCBIN "gfx/signs/route.2bpp"
INCBIN "gfx/signs/water.2bpp"
INCBIN "gfx/signs/building.2bpp"
	assert_table_length NUM_SIGNS

FontBattleExtra:
INCBIN "gfx/font/font_battle_extra.2bpp"

Frames:
	table_width TEXTBOX_FRAME_TILES * LEN_1BPP_TILE, Frames
INCBIN "gfx/frames/1.1bpp"
INCBIN "gfx/frames/2.1bpp"
INCBIN "gfx/frames/3.1bpp"
INCBIN "gfx/frames/4.1bpp"
INCBIN "gfx/frames/5.1bpp"
INCBIN "gfx/frames/6.1bpp"
INCBIN "gfx/frames/7.1bpp"
INCBIN "gfx/frames/8.1bpp"
	assert_table_length NUM_FRAMES
INCBIN "gfx/frames/9.1bpp" ; unused

StatsScreenPageTilesGFX:
INCBIN "gfx/stats/stats_tiles.2bpp"

EnemyHPBarBorderGFX:
INCBIN "gfx/battle/enemy_hp_bar_border.1bpp"

HPExpBarBorderGFX:
INCBIN "gfx/battle/hp_exp_bar_border.1bpp"

ExpBarGFX:
INCBIN "gfx/battle/expbar.2bpp"

TownMapGFX:
INCBIN "gfx/pokegear/town_map.2bpp.lz"

TextboxSpaceGFX:
; StatsScreen_LoadTextboxSpaceGFX reads 2bpp; LoadFrame reads first half as 1bpp
INCBIN "gfx/font/space.2bpp"

MobilePhoneTilesGFX:
INCBIN "gfx/mobile/phone_tiles.2bpp"

INCLUDE "gfx/footprints.asm"
