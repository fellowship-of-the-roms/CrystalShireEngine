; Eggs are negative now
INCBIN "gfx/pokemon/egg/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/egg/shiny.pal"

; -2
	RGB 30, 26, 11
	RGB 23, 16, 00
; -2 shiny
	RGB 30, 26, 11
	RGB 23, 16, 00

; -1
	RGB 23, 23, 23
	RGB 17, 17, 17
; -1 shiny
	RGB 23, 23, 23
	RGB 17, 17, 17

PokemonPalettes:
; entries correspond to Pokémon species, two apiece

; Each normal.gbcpal is generated from the corresponding .png, and
; only the middle two colors are included, not black or white.
; Shiny palettes are defined directly, not generated.

	; 2 middle palettes, normal and shiny, with 2 colors each
	table_width PAL_COLOR_SIZE * 2 * 2

; 000
	RGB 30, 22, 17
	RGB 16, 14, 19
; 000 shiny
	RGB 30, 22, 17
	RGB 16, 14, 19

; Kanto
INCBIN "gfx/pokemon/kanto/bulbasaur/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/bulbasaur/shiny.pal"
INCBIN "gfx/pokemon/kanto/ivysaur/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/ivysaur/shiny.pal"
INCBIN "gfx/pokemon/kanto/venusaur/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/venusaur/shiny.pal"
INCBIN "gfx/pokemon/kanto/charmander/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/charmander/shiny.pal"
INCBIN "gfx/pokemon/kanto/charmeleon/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/charmeleon/shiny.pal"
INCBIN "gfx/pokemon/kanto/charizard/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/charizard/shiny.pal"
INCBIN "gfx/pokemon/kanto/squirtle/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/squirtle/shiny.pal"
INCBIN "gfx/pokemon/kanto/wartortle/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/wartortle/shiny.pal"
INCBIN "gfx/pokemon/kanto/blastoise/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/blastoise/shiny.pal"
INCBIN "gfx/pokemon/kanto/caterpie/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/caterpie/shiny.pal"
INCBIN "gfx/pokemon/kanto/metapod/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/metapod/shiny.pal"
INCBIN "gfx/pokemon/kanto/butterfree/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/butterfree/shiny.pal"
INCBIN "gfx/pokemon/kanto/weedle/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/weedle/shiny.pal"
INCBIN "gfx/pokemon/kanto/kakuna/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/kakuna/shiny.pal"
INCBIN "gfx/pokemon/kanto/beedrill/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/beedrill/shiny.pal"
INCBIN "gfx/pokemon/kanto/pidgey/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/pidgey/shiny.pal"
INCBIN "gfx/pokemon/kanto/pidgeotto/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/pidgeotto/shiny.pal"
INCBIN "gfx/pokemon/kanto/pidgeot/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/pidgeot/shiny.pal"
INCBIN "gfx/pokemon/kanto/rattata/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/rattata/shiny.pal"
INCBIN "gfx/pokemon/kanto/raticate/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/raticate/shiny.pal"
INCBIN "gfx/pokemon/kanto/spearow/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/spearow/shiny.pal"
INCBIN "gfx/pokemon/kanto/fearow/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/fearow/shiny.pal"
INCBIN "gfx/pokemon/kanto/ekans/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/ekans/shiny.pal"
INCBIN "gfx/pokemon/kanto/arbok/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/arbok/shiny.pal"
INCBIN "gfx/pokemon/kanto/pikachu/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/pikachu/shiny.pal"
INCBIN "gfx/pokemon/kanto/raichu/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/raichu/shiny.pal"
INCBIN "gfx/pokemon/kanto/sandshrew/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/sandshrew/shiny.pal"
INCBIN "gfx/pokemon/kanto/sandslash/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/sandslash/shiny.pal"
INCBIN "gfx/pokemon/kanto/nidoran_f/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/nidoran_f/shiny.pal"
INCBIN "gfx/pokemon/kanto/nidorina/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/nidorina/shiny.pal"
INCBIN "gfx/pokemon/kanto/nidoqueen/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/nidoqueen/shiny.pal"
INCBIN "gfx/pokemon/kanto/nidoran_m/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/nidoran_m/shiny.pal"
INCBIN "gfx/pokemon/kanto/nidorino/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/nidorino/shiny.pal"
INCBIN "gfx/pokemon/kanto/nidoking/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/nidoking/shiny.pal"
INCBIN "gfx/pokemon/kanto/clefairy/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/clefairy/shiny.pal"
INCBIN "gfx/pokemon/kanto/clefable/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/clefable/shiny.pal"
INCBIN "gfx/pokemon/kanto/vulpix/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/vulpix/shiny.pal"
INCBIN "gfx/pokemon/kanto/ninetales/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/ninetales/shiny.pal"
INCBIN "gfx/pokemon/kanto/jigglypuff/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/jigglypuff/shiny.pal"
INCBIN "gfx/pokemon/kanto/wigglytuff/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/wigglytuff/shiny.pal"
INCBIN "gfx/pokemon/kanto/zubat/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/zubat/shiny.pal"
INCBIN "gfx/pokemon/kanto/golbat/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/golbat/shiny.pal"
INCBIN "gfx/pokemon/kanto/oddish/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/oddish/shiny.pal"
INCBIN "gfx/pokemon/kanto/gloom/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/gloom/shiny.pal"
INCBIN "gfx/pokemon/kanto/vileplume/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/vileplume/shiny.pal"
INCBIN "gfx/pokemon/kanto/paras/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/paras/shiny.pal"
INCBIN "gfx/pokemon/kanto/parasect/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/parasect/shiny.pal"
INCBIN "gfx/pokemon/kanto/venonat/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/venonat/shiny.pal"
INCBIN "gfx/pokemon/kanto/venomoth/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/venomoth/shiny.pal"
INCBIN "gfx/pokemon/kanto/diglett/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/diglett/shiny.pal"
INCBIN "gfx/pokemon/kanto/dugtrio/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/dugtrio/shiny.pal"
INCBIN "gfx/pokemon/kanto/meowth/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/meowth/shiny.pal"
INCBIN "gfx/pokemon/kanto/persian/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/persian/shiny.pal"
INCBIN "gfx/pokemon/kanto/psyduck/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/psyduck/shiny.pal"
INCBIN "gfx/pokemon/kanto/golduck/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/golduck/shiny.pal"
INCBIN "gfx/pokemon/kanto/mankey/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/mankey/shiny.pal"
INCBIN "gfx/pokemon/kanto/primeape/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/primeape/shiny.pal"
INCBIN "gfx/pokemon/kanto/growlithe/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/growlithe/shiny.pal"
INCBIN "gfx/pokemon/kanto/arcanine/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/arcanine/shiny.pal"
INCBIN "gfx/pokemon/kanto/poliwag/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/poliwag/shiny.pal"
INCBIN "gfx/pokemon/kanto/poliwhirl/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/poliwhirl/shiny.pal"
INCBIN "gfx/pokemon/kanto/poliwrath/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/poliwrath/shiny.pal"
INCBIN "gfx/pokemon/kanto/abra/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/abra/shiny.pal"
INCBIN "gfx/pokemon/kanto/kadabra/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/kadabra/shiny.pal"
INCBIN "gfx/pokemon/kanto/alakazam/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/alakazam/shiny.pal"
INCBIN "gfx/pokemon/kanto/machop/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/machop/shiny.pal"
INCBIN "gfx/pokemon/kanto/machoke/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/machoke/shiny.pal"
INCBIN "gfx/pokemon/kanto/machamp/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/machamp/shiny.pal"
INCBIN "gfx/pokemon/kanto/bellsprout/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/bellsprout/shiny.pal"
INCBIN "gfx/pokemon/kanto/weepinbell/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/weepinbell/shiny.pal"
INCBIN "gfx/pokemon/kanto/victreebel/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/victreebel/shiny.pal"
INCBIN "gfx/pokemon/kanto/tentacool/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/tentacool/shiny.pal"
INCBIN "gfx/pokemon/kanto/tentacruel/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/tentacruel/shiny.pal"
INCBIN "gfx/pokemon/kanto/geodude/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/geodude/shiny.pal"
INCBIN "gfx/pokemon/kanto/graveler/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/graveler/shiny.pal"
INCBIN "gfx/pokemon/kanto/golem/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/golem/shiny.pal"
INCBIN "gfx/pokemon/kanto/ponyta/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/ponyta/shiny.pal"
INCBIN "gfx/pokemon/kanto/rapidash/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/rapidash/shiny.pal"
INCBIN "gfx/pokemon/kanto/slowpoke/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/slowpoke/shiny.pal"
INCBIN "gfx/pokemon/kanto/slowbro/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/slowbro/shiny.pal"
INCBIN "gfx/pokemon/kanto/magnemite/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/magnemite/shiny.pal"
INCBIN "gfx/pokemon/kanto/magneton/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/magneton/shiny.pal"
INCBIN "gfx/pokemon/kanto/farfetch_d/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/farfetch_d/shiny.pal"
INCBIN "gfx/pokemon/kanto/doduo/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/doduo/shiny.pal"
INCBIN "gfx/pokemon/kanto/dodrio/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/dodrio/shiny.pal"
INCBIN "gfx/pokemon/kanto/seel/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/seel/shiny.pal"
INCBIN "gfx/pokemon/kanto/dewgong/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/dewgong/shiny.pal"
INCBIN "gfx/pokemon/kanto/grimer/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/grimer/shiny.pal"
INCBIN "gfx/pokemon/kanto/muk/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/muk/shiny.pal"
INCBIN "gfx/pokemon/kanto/shellder/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/shellder/shiny.pal"
INCBIN "gfx/pokemon/kanto/cloyster/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/cloyster/shiny.pal"
INCBIN "gfx/pokemon/kanto/gastly/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/gastly/shiny.pal"
INCBIN "gfx/pokemon/kanto/haunter/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/haunter/shiny.pal"
INCBIN "gfx/pokemon/kanto/gengar/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/gengar/shiny.pal"
INCBIN "gfx/pokemon/kanto/onix/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/onix/shiny.pal"
INCBIN "gfx/pokemon/kanto/drowzee/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/drowzee/shiny.pal"
INCBIN "gfx/pokemon/kanto/hypno/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/hypno/shiny.pal"
INCBIN "gfx/pokemon/kanto/krabby/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/krabby/shiny.pal"
INCBIN "gfx/pokemon/kanto/kingler/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/kingler/shiny.pal"
INCBIN "gfx/pokemon/kanto/voltorb/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/voltorb/shiny.pal"
INCBIN "gfx/pokemon/kanto/electrode/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/electrode/shiny.pal"
INCBIN "gfx/pokemon/kanto/exeggcute/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/exeggcute/shiny.pal"
INCBIN "gfx/pokemon/kanto/exeggutor/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/exeggutor/shiny.pal"
INCBIN "gfx/pokemon/kanto/cubone/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/cubone/shiny.pal"
INCBIN "gfx/pokemon/kanto/marowak/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/marowak/shiny.pal"
INCBIN "gfx/pokemon/kanto/hitmonlee/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/hitmonlee/shiny.pal"
INCBIN "gfx/pokemon/kanto/hitmonchan/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/hitmonchan/shiny.pal"
INCBIN "gfx/pokemon/kanto/lickitung/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/lickitung/shiny.pal"
INCBIN "gfx/pokemon/kanto/koffing/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/koffing/shiny.pal"
INCBIN "gfx/pokemon/kanto/weezing/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/weezing/shiny.pal"
INCBIN "gfx/pokemon/kanto/rhyhorn/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/rhyhorn/shiny.pal"
INCBIN "gfx/pokemon/kanto/rhydon/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/rhydon/shiny.pal"
INCBIN "gfx/pokemon/kanto/chansey/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/chansey/shiny.pal"
INCBIN "gfx/pokemon/kanto/tangela/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/tangela/shiny.pal"
INCBIN "gfx/pokemon/kanto/kangaskhan/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/kangaskhan/shiny.pal"
INCBIN "gfx/pokemon/kanto/horsea/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/horsea/shiny.pal"
INCBIN "gfx/pokemon/kanto/seadra/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/seadra/shiny.pal"
INCBIN "gfx/pokemon/kanto/goldeen/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/goldeen/shiny.pal"
INCBIN "gfx/pokemon/kanto/seaking/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/seaking/shiny.pal"
INCBIN "gfx/pokemon/kanto/staryu/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/staryu/shiny.pal"
INCBIN "gfx/pokemon/kanto/starmie/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/starmie/shiny.pal"
INCBIN "gfx/pokemon/kanto/mr__mime/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/mr__mime/shiny.pal"
INCBIN "gfx/pokemon/kanto/scyther/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/scyther/shiny.pal"
INCBIN "gfx/pokemon/kanto/jynx/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/jynx/shiny.pal"
INCBIN "gfx/pokemon/kanto/electabuzz/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/electabuzz/shiny.pal"
INCBIN "gfx/pokemon/kanto/magmar/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/magmar/shiny.pal"
INCBIN "gfx/pokemon/kanto/pinsir/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/pinsir/shiny.pal"
INCBIN "gfx/pokemon/kanto/tauros/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/tauros/shiny.pal"
INCBIN "gfx/pokemon/kanto/magikarp/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/magikarp/shiny.pal"
INCBIN "gfx/pokemon/kanto/gyarados/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/gyarados/shiny.pal"
INCBIN "gfx/pokemon/kanto/lapras/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/lapras/shiny.pal"
INCBIN "gfx/pokemon/kanto/ditto/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/ditto/shiny.pal"
INCBIN "gfx/pokemon/kanto/eevee/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/eevee/shiny.pal"
INCBIN "gfx/pokemon/kanto/vaporeon/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/vaporeon/shiny.pal"
INCBIN "gfx/pokemon/kanto/jolteon/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/jolteon/shiny.pal"
INCBIN "gfx/pokemon/kanto/flareon/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/flareon/shiny.pal"
INCBIN "gfx/pokemon/kanto/porygon/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/porygon/shiny.pal"
INCBIN "gfx/pokemon/kanto/omanyte/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/omanyte/shiny.pal"
INCBIN "gfx/pokemon/kanto/omastar/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/omastar/shiny.pal"
INCBIN "gfx/pokemon/kanto/kabuto/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/kabuto/shiny.pal"
INCBIN "gfx/pokemon/kanto/kabutops/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/kabutops/shiny.pal"
INCBIN "gfx/pokemon/kanto/aerodactyl/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/aerodactyl/shiny.pal"
INCBIN "gfx/pokemon/kanto/snorlax/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/snorlax/shiny.pal"
INCBIN "gfx/pokemon/kanto/articuno/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/articuno/shiny.pal"
INCBIN "gfx/pokemon/kanto/zapdos/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/zapdos/shiny.pal"
INCBIN "gfx/pokemon/kanto/moltres/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/moltres/shiny.pal"
INCBIN "gfx/pokemon/kanto/dratini/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/dratini/shiny.pal"
INCBIN "gfx/pokemon/kanto/dragonair/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/dragonair/shiny.pal"
INCBIN "gfx/pokemon/kanto/dragonite/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/dragonite/shiny.pal"
INCBIN "gfx/pokemon/kanto/mewtwo/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/mewtwo/shiny.pal"
INCBIN "gfx/pokemon/kanto/mew/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/kanto/mew/shiny.pal"
; Johto
INCBIN "gfx/pokemon/johto/chikorita/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/chikorita/shiny.pal"
INCBIN "gfx/pokemon/johto/bayleef/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/bayleef/shiny.pal"
INCBIN "gfx/pokemon/johto/meganium/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/meganium/shiny.pal"
INCBIN "gfx/pokemon/johto/cyndaquil/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/cyndaquil/shiny.pal"
INCBIN "gfx/pokemon/johto/quilava/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/quilava/shiny.pal"
INCBIN "gfx/pokemon/johto/typhlosion/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/typhlosion/shiny.pal"
INCBIN "gfx/pokemon/johto/totodile/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/totodile/shiny.pal"
INCBIN "gfx/pokemon/johto/croconaw/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/croconaw/shiny.pal"
INCBIN "gfx/pokemon/johto/feraligatr/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/feraligatr/shiny.pal"
INCBIN "gfx/pokemon/johto/sentret/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/sentret/shiny.pal"
INCBIN "gfx/pokemon/johto/furret/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/furret/shiny.pal"
INCBIN "gfx/pokemon/johto/hoothoot/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/hoothoot/shiny.pal"
INCBIN "gfx/pokemon/johto/noctowl/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/noctowl/shiny.pal"
INCBIN "gfx/pokemon/johto/ledyba/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/ledyba/shiny.pal"
INCBIN "gfx/pokemon/johto/ledian/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/ledian/shiny.pal"
INCBIN "gfx/pokemon/johto/spinarak/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/spinarak/shiny.pal"
INCBIN "gfx/pokemon/johto/ariados/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/ariados/shiny.pal"
INCBIN "gfx/pokemon/johto/crobat/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/crobat/shiny.pal"
INCBIN "gfx/pokemon/johto/chinchou/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/chinchou/shiny.pal"
INCBIN "gfx/pokemon/johto/lanturn/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/lanturn/shiny.pal"
INCBIN "gfx/pokemon/johto/pichu/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/pichu/shiny.pal"
INCBIN "gfx/pokemon/johto/cleffa/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/cleffa/shiny.pal"
INCBIN "gfx/pokemon/johto/igglybuff/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/igglybuff/shiny.pal"
INCBIN "gfx/pokemon/johto/togepi/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/togepi/shiny.pal"
INCBIN "gfx/pokemon/johto/togetic/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/togetic/shiny.pal"
INCBIN "gfx/pokemon/johto/natu/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/natu/shiny.pal"
INCBIN "gfx/pokemon/johto/xatu/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/xatu/shiny.pal"
INCBIN "gfx/pokemon/johto/mareep/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/mareep/shiny.pal"
INCBIN "gfx/pokemon/johto/flaaffy/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/flaaffy/shiny.pal"
INCBIN "gfx/pokemon/johto/ampharos/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/ampharos/shiny.pal"
INCBIN "gfx/pokemon/johto/bellossom/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/bellossom/shiny.pal"
INCBIN "gfx/pokemon/johto/marill/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/marill/shiny.pal"
INCBIN "gfx/pokemon/johto/azumarill/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/azumarill/shiny.pal"
INCBIN "gfx/pokemon/johto/sudowoodo/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/sudowoodo/shiny.pal"
INCBIN "gfx/pokemon/johto/politoed/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/politoed/shiny.pal"
INCBIN "gfx/pokemon/johto/hoppip/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/hoppip/shiny.pal"
INCBIN "gfx/pokemon/johto/skiploom/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/skiploom/shiny.pal"
INCBIN "gfx/pokemon/johto/jumpluff/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/jumpluff/shiny.pal"
INCBIN "gfx/pokemon/johto/aipom/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/aipom/shiny.pal"
INCBIN "gfx/pokemon/johto/sunkern/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/sunkern/shiny.pal"
INCBIN "gfx/pokemon/johto/sunflora/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/sunflora/shiny.pal"
INCBIN "gfx/pokemon/johto/yanma/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/yanma/shiny.pal"
INCBIN "gfx/pokemon/johto/wooper/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/wooper/shiny.pal"
INCBIN "gfx/pokemon/johto/quagsire/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/quagsire/shiny.pal"
INCBIN "gfx/pokemon/johto/espeon/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/espeon/shiny.pal"
INCBIN "gfx/pokemon/johto/umbreon/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/umbreon/shiny.pal"
INCBIN "gfx/pokemon/johto/murkrow/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/murkrow/shiny.pal"
INCBIN "gfx/pokemon/johto/slowking/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/slowking/shiny.pal"
INCBIN "gfx/pokemon/johto/misdreavus/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/misdreavus/shiny.pal"
INCLUDE "gfx/pokemon/johto/unown/normal.pal" ; not normal.gbcpal
INCLUDE "gfx/pokemon/johto/unown/shiny.pal"
INCBIN "gfx/pokemon/johto/wobbuffet/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/wobbuffet/shiny.pal"
INCBIN "gfx/pokemon/johto/girafarig/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/girafarig/shiny.pal"
INCBIN "gfx/pokemon/johto/pineco/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/pineco/shiny.pal"
INCBIN "gfx/pokemon/johto/forretress/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/forretress/shiny.pal"
INCBIN "gfx/pokemon/johto/dunsparce/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/dunsparce/shiny.pal"
INCBIN "gfx/pokemon/johto/gligar/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/gligar/shiny.pal"
INCBIN "gfx/pokemon/johto/steelix/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/steelix/shiny.pal"
INCBIN "gfx/pokemon/johto/snubbull/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/snubbull/shiny.pal"
INCBIN "gfx/pokemon/johto/granbull/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/granbull/shiny.pal"
INCBIN "gfx/pokemon/johto/qwilfish/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/qwilfish/shiny.pal"
INCBIN "gfx/pokemon/johto/scizor/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/scizor/shiny.pal"
INCBIN "gfx/pokemon/johto/shuckle/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/shuckle/shiny.pal"
INCBIN "gfx/pokemon/johto/heracross/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/heracross/shiny.pal"
INCBIN "gfx/pokemon/johto/sneasel/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/sneasel/shiny.pal"
INCBIN "gfx/pokemon/johto/teddiursa/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/teddiursa/shiny.pal"
INCBIN "gfx/pokemon/johto/ursaring/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/ursaring/shiny.pal"
INCBIN "gfx/pokemon/johto/slugma/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/slugma/shiny.pal"
INCBIN "gfx/pokemon/johto/magcargo/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/magcargo/shiny.pal"
INCBIN "gfx/pokemon/johto/swinub/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/swinub/shiny.pal"
INCBIN "gfx/pokemon/johto/piloswine/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/piloswine/shiny.pal"
INCBIN "gfx/pokemon/johto/corsola/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/corsola/shiny.pal"
INCBIN "gfx/pokemon/johto/remoraid/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/remoraid/shiny.pal"
INCBIN "gfx/pokemon/johto/octillery/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/octillery/shiny.pal"
INCBIN "gfx/pokemon/johto/delibird/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/delibird/shiny.pal"
INCBIN "gfx/pokemon/johto/mantine/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/mantine/shiny.pal"
INCBIN "gfx/pokemon/johto/skarmory/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/skarmory/shiny.pal"
INCBIN "gfx/pokemon/johto/houndour/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/houndour/shiny.pal"
INCBIN "gfx/pokemon/johto/houndoom/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/houndoom/shiny.pal"
INCBIN "gfx/pokemon/johto/kingdra/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/kingdra/shiny.pal"
INCBIN "gfx/pokemon/johto/phanpy/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/phanpy/shiny.pal"
INCBIN "gfx/pokemon/johto/donphan/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/donphan/shiny.pal"
INCBIN "gfx/pokemon/johto/porygon2/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/porygon2/shiny.pal"
INCBIN "gfx/pokemon/johto/stantler/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/stantler/shiny.pal"
INCBIN "gfx/pokemon/johto/smeargle/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/smeargle/shiny.pal"
INCBIN "gfx/pokemon/johto/tyrogue/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/tyrogue/shiny.pal"
INCBIN "gfx/pokemon/johto/hitmontop/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/hitmontop/shiny.pal"
INCBIN "gfx/pokemon/johto/smoochum/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/smoochum/shiny.pal"
INCBIN "gfx/pokemon/johto/elekid/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/elekid/shiny.pal"
INCBIN "gfx/pokemon/johto/magby/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/magby/shiny.pal"
INCBIN "gfx/pokemon/johto/miltank/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/miltank/shiny.pal"
INCBIN "gfx/pokemon/johto/blissey/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/blissey/shiny.pal"
INCBIN "gfx/pokemon/johto/raikou/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/raikou/shiny.pal"
INCBIN "gfx/pokemon/johto/entei/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/entei/shiny.pal"
INCBIN "gfx/pokemon/johto/suicune/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/suicune/shiny.pal"
INCBIN "gfx/pokemon/johto/larvitar/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/larvitar/shiny.pal"
INCBIN "gfx/pokemon/johto/pupitar/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/pupitar/shiny.pal"
INCBIN "gfx/pokemon/johto/tyranitar/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/tyranitar/shiny.pal"
INCBIN "gfx/pokemon/johto/lugia/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/lugia/shiny.pal"
INCBIN "gfx/pokemon/johto/ho_oh/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/ho_oh/shiny.pal"
INCBIN "gfx/pokemon/johto/celebi/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/johto/celebi/shiny.pal"
; Hoenn
INCBIN "gfx/pokemon/hoenn/treecko/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/treecko/shiny.pal"
INCBIN "gfx/pokemon/hoenn/grovyle/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/grovyle/shiny.pal"
INCBIN "gfx/pokemon/hoenn/sceptile/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/sceptile/shiny.pal"
INCBIN "gfx/pokemon/hoenn/torchic/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/torchic/shiny.pal"
INCBIN "gfx/pokemon/hoenn/combusken/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/combusken/shiny.pal"
INCBIN "gfx/pokemon/hoenn/blaziken/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/blaziken/shiny.pal"
INCBIN "gfx/pokemon/hoenn/mudkip/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/mudkip/shiny.pal"
INCBIN "gfx/pokemon/hoenn/marshtomp/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/marshtomp/shiny.pal"
INCBIN "gfx/pokemon/hoenn/swampert/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/swampert/shiny.pal"
INCBIN "gfx/pokemon/hoenn/euxinos/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/euxinos/shiny.pal"
INCBIN "gfx/pokemon/hoenn/weavile/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/weavile/shiny.pal"
INCBIN "gfx/pokemon/hoenn/honchkrow/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/honchkrow/shiny.pal"
INCBIN "gfx/pokemon/hoenn/gliscor/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/gliscor/shiny.pal"
INCBIN "gfx/pokemon/hoenn/leafeon/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/leafeon/shiny.pal"
INCBIN "gfx/pokemon/hoenn/glaceon/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/glaceon/shiny.pal"
INCBIN "gfx/pokemon/hoenn/draconeon/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/draconeon/shiny.pal"
INCBIN "gfx/pokemon/hoenn/kujinought/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/kujinought/shiny.pal"
INCBIN "gfx/pokemon/hoenn/mlloy/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/mlloy/shiny.pal"
INCBIN "gfx/pokemon/hoenn/lotad/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/lotad/shiny.pal"
INCBIN "gfx/pokemon/hoenn/lombre/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/lombre/shiny.pal"
INCBIN "gfx/pokemon/hoenn/ludicolo/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/ludicolo/shiny.pal"
INCBIN "gfx/pokemon/hoenn/seedot/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/seedot/shiny.pal"
INCBIN "gfx/pokemon/hoenn/nuzleaf/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/nuzleaf/shiny.pal"
INCBIN "gfx/pokemon/hoenn/shiftry/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/shiftry/shiny.pal"
INCBIN "gfx/pokemon/hoenn/electivire/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/electivire/shiny.pal"
INCBIN "gfx/pokemon/hoenn/magmortar/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/magmortar/shiny.pal"
INCBIN "gfx/pokemon/hoenn/voltrel/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/voltrel/shiny.pal"
INCBIN "gfx/pokemon/hoenn/voltrean/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/voltrean/shiny.pal"
INCBIN "gfx/pokemon/hoenn/solosis/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/solosis/shiny.pal"
INCBIN "gfx/pokemon/hoenn/duosion/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/duosion/shiny.pal"
INCBIN "gfx/pokemon/hoenn/reuniclus/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/reuniclus/shiny.pal"
INCBIN "gfx/pokemon/hoenn/surskit/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/surskit/shiny.pal"
INCBIN "gfx/pokemon/hoenn/masquerain/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/masquerain/shiny.pal"
INCBIN "gfx/pokemon/hoenn/shroomish/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/shroomish/shiny.pal"
INCBIN "gfx/pokemon/hoenn/breloom/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/breloom/shiny.pal"
INCBIN "gfx/pokemon/hoenn/slakoth/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/slakoth/shiny.pal"
INCBIN "gfx/pokemon/hoenn/vigoroth/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/vigoroth/shiny.pal"
INCBIN "gfx/pokemon/hoenn/slaking/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/slaking/shiny.pal"
INCBIN "gfx/pokemon/hoenn/nincada/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/nincada/shiny.pal"
INCBIN "gfx/pokemon/hoenn/ninjask/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/ninjask/shiny.pal"
INCBIN "gfx/pokemon/hoenn/shedinja/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/shedinja/shiny.pal"
INCBIN "gfx/pokemon/hoenn/tinkatink/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/tinkatink/shiny.pal"
INCBIN "gfx/pokemon/hoenn/tinkatuff/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/tinkatuff/shiny.pal"
INCBIN "gfx/pokemon/hoenn/tinkaton/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/tinkaton/shiny.pal"
INCBIN "gfx/pokemon/hoenn/makuhita/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/makuhita/shiny.pal"
INCBIN "gfx/pokemon/hoenn/hariyama/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/hariyama/shiny.pal"
INCBIN "gfx/pokemon/hoenn/azurill/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/azurill/shiny.pal"
INCBIN "gfx/pokemon/hoenn/nosepass/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/nosepass/shiny.pal"
INCBIN "gfx/pokemon/hoenn/skitty/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/skitty/shiny.pal"
INCBIN "gfx/pokemon/hoenn/delcatty/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/delcatty/shiny.pal"
INCBIN "gfx/pokemon/hoenn/spiritomb/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/spiritomb/shiny.pal"
INCBIN "gfx/pokemon/hoenn/tangrowth/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/tangrowth/shiny.pal"
INCBIN "gfx/pokemon/hoenn/aron/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/aron/shiny.pal"
INCBIN "gfx/pokemon/hoenn/lairon/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/lairon/shiny.pal"
INCBIN "gfx/pokemon/hoenn/aggron/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/aggron/shiny.pal"
INCBIN "gfx/pokemon/hoenn/meditite/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/meditite/shiny.pal"
INCBIN "gfx/pokemon/hoenn/medicham/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/medicham/shiny.pal"
INCBIN "gfx/pokemon/hoenn/shinx/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/shinx/shiny.pal"
INCBIN "gfx/pokemon/hoenn/luxio/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/luxio/shiny.pal"
INCBIN "gfx/pokemon/hoenn/luxray/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/luxray/shiny.pal"
INCBIN "gfx/pokemon/hoenn/gekopon/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/gekopon/shiny.pal"
INCBIN "gfx/pokemon/hoenn/tynamo/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/tynamo/shiny.pal"
INCBIN "gfx/pokemon/hoenn/eelektrik/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/eelektrik/shiny.pal"
INCBIN "gfx/pokemon/hoenn/eelektross/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/eelektross/shiny.pal"
INCBIN "gfx/pokemon/hoenn/corsoreef/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/corsoreef/shiny.pal"
INCBIN "gfx/pokemon/hoenn/dundrag/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/dundrag/shiny.pal"
INCBIN "gfx/pokemon/hoenn/carvanha/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/carvanha/shiny.pal"
INCBIN "gfx/pokemon/hoenn/sharpedo/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/sharpedo/shiny.pal"
INCBIN "gfx/pokemon/hoenn/barboach/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/barboach/shiny.pal"
INCBIN "gfx/pokemon/hoenn/whiscash/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/whiscash/shiny.pal"
INCBIN "gfx/pokemon/hoenn/smoguana/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/smoguana/shiny.pal"
INCBIN "gfx/pokemon/hoenn/smokomodo/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/smokomodo/shiny.pal"
INCBIN "gfx/pokemon/hoenn/torkoal/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/torkoal/shiny.pal"
INCBIN "gfx/pokemon/hoenn/spoink/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/spoink/shiny.pal"
INCBIN "gfx/pokemon/hoenn/grumpig/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/grumpig/shiny.pal"
INCBIN "gfx/pokemon/hoenn/spinda/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/spinda/shiny.pal"
INCBIN "gfx/pokemon/hoenn/trapinch/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/trapinch/shiny.pal"
INCBIN "gfx/pokemon/hoenn/vibrava/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/vibrava/shiny.pal"
INCBIN "gfx/pokemon/hoenn/flygon/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/flygon/shiny.pal"
INCBIN "gfx/pokemon/hoenn/nohface/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/nohface/shiny.pal"
INCBIN "gfx/pokemon/hoenn/kitsunoh/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/kitsunoh/shiny.pal"
INCBIN "gfx/pokemon/hoenn/krolucada/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/krolucada/shiny.pal"
INCBIN "gfx/pokemon/hoenn/krolucard/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/krolucard/shiny.pal"
INCBIN "gfx/pokemon/hoenn/stunky/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/stunky/shiny.pal"
INCBIN "gfx/pokemon/hoenn/skuntank/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/skuntank/shiny.pal"
INCBIN "gfx/pokemon/hoenn/larvesta/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/larvesta/shiny.pal"
INCBIN "gfx/pokemon/hoenn/volcarona/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/volcarona/shiny.pal"
INCBIN "gfx/pokemon/hoenn/impidimp/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/impidimp/shiny.pal"
INCBIN "gfx/pokemon/hoenn/morgrem/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/morgrem/shiny.pal"
INCBIN "gfx/pokemon/hoenn/grimmsnarl/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/grimmsnarl/shiny.pal"
INCBIN "gfx/pokemon/hoenn/wyrdeer/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/wyrdeer/shiny.pal"
INCBIN "gfx/pokemon/hoenn/baltoy/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/baltoy/shiny.pal"
INCBIN "gfx/pokemon/hoenn/claydol/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/claydol/shiny.pal"
INCBIN "gfx/pokemon/hoenn/munchlax/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/munchlax/shiny.pal"
INCBIN "gfx/pokemon/hoenn/purgislug/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/purgislug/shiny.pal"
INCBIN "gfx/pokemon/hoenn/anorith/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/anorith/shiny.pal"
INCBIN "gfx/pokemon/hoenn/armaldo/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/armaldo/shiny.pal"
INCBIN "gfx/pokemon/hoenn/feebas/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/feebas/shiny.pal"
INCBIN "gfx/pokemon/hoenn/milotic/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/milotic/shiny.pal"
INCBIN "gfx/pokemon/hoenn/castform/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/castform/shiny.pal"
INCBIN "gfx/pokemon/hoenn/litwick/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/litwick/shiny.pal"
INCBIN "gfx/pokemon/hoenn/lampent/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/lampent/shiny.pal"
INCBIN "gfx/pokemon/hoenn/chandelure/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/chandelure/shiny.pal"
INCBIN "gfx/pokemon/hoenn/duskull/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/duskull/shiny.pal"
INCBIN "gfx/pokemon/hoenn/dusclops/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/dusclops/shiny.pal"
INCBIN "gfx/pokemon/hoenn/decibelle/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/decibelle/shiny.pal"
INCBIN "gfx/pokemon/hoenn/chimecho/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/chimecho/shiny.pal"
INCBIN "gfx/pokemon/hoenn/absol/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/absol/shiny.pal"
INCBIN "gfx/pokemon/hoenn/magnezone/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/magnezone/shiny.pal"
INCBIN "gfx/pokemon/hoenn/snover/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/snover/shiny.pal"
INCBIN "gfx/pokemon/hoenn/abomasnow/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/abomasnow/shiny.pal"
INCBIN "gfx/pokemon/hoenn/turtwig/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/turtwig/shiny.pal"
INCBIN "gfx/pokemon/hoenn/grotle/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/grotle/shiny.pal"
INCBIN "gfx/pokemon/hoenn/torterra/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/torterra/shiny.pal"
INCBIN "gfx/pokemon/hoenn/chimchar/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/chimchar/shiny.pal"
INCBIN "gfx/pokemon/hoenn/monferno/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/monferno/shiny.pal"
INCBIN "gfx/pokemon/hoenn/infernape/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/infernape/shiny.pal"
INCBIN "gfx/pokemon/hoenn/piplup/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/piplup/shiny.pal"
INCBIN "gfx/pokemon/hoenn/prinplup/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/prinplup/shiny.pal"
INCBIN "gfx/pokemon/hoenn/empoleon/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/empoleon/shiny.pal"
INCBIN "gfx/pokemon/hoenn/relicanth/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/relicanth/shiny.pal"
INCBIN "gfx/pokemon/hoenn/luvdisc/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/luvdisc/shiny.pal"
INCBIN "gfx/pokemon/hoenn/raelic/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/raelic/shiny.pal"
INCBIN "gfx/pokemon/hoenn/romushu/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/romushu/shiny.pal"
INCBIN "gfx/pokemon/hoenn/fusang/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/fusang/shiny.pal"
INCBIN "gfx/pokemon/hoenn/beldum/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/beldum/shiny.pal"
INCBIN "gfx/pokemon/hoenn/metang/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/metang/shiny.pal"
INCBIN "gfx/pokemon/hoenn/metagross/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/metagross/shiny.pal"
INCBIN "gfx/pokemon/hoenn/regirock/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/regirock/shiny.pal"
INCBIN "gfx/pokemon/hoenn/regice/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/regice/shiny.pal"
INCBIN "gfx/pokemon/hoenn/registeel/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/registeel/shiny.pal"
INCBIN "gfx/pokemon/hoenn/latias/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/latias/shiny.pal"
INCBIN "gfx/pokemon/hoenn/latios/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/latios/shiny.pal"
INCBIN "gfx/pokemon/hoenn/kyogre/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/kyogre/shiny.pal"
INCBIN "gfx/pokemon/hoenn/groudon/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/groudon/shiny.pal"
INCBIN "gfx/pokemon/hoenn/rayquaza/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/rayquaza/shiny.pal"
INCBIN "gfx/pokemon/hoenn/jirachi/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/jirachi/shiny.pal"
INCBIN "gfx/pokemon/hoenn/deoxys/normal.gbcpal", middle_colors
INCLUDE "gfx/pokemon/hoenn/deoxys/shiny.pal"

	assert_table_length NUM_POKEMON + 1
