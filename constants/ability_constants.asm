; Ability IDs for Pokémon abilities of Gen III
;
; Indexes for:
; - Ability Names        (see data/abilities/names.asm)
; - Ability Descriptions (see data/abilities/descriptions.asm)
; - Possible Abilities   (see data/pokemon/base_stats/*.asm)
; - Ability Effects      (- TODO -)
; - Ability Effects Text (- TODO -)
;
; For the sake of coding and ease of editing, similar abilities are grouped together
; Additional information is provided for several abilities here.

	const_def

; Prevents fleeing of certain pokemon, provided they do not have Run Away or a Smoke Ball. Also prevents switching out, except by added move effect.
	const NO_ABILITY  ; sentinel for lack of ability
	const ARENA_TRAP  ; Also doubles the overworld encounter rate if in the first slot
	const SHADOW_TAG  ; Only affects non-Ghost type Pokémon
	const MAGNET_PULL ; Only may affect Steel-type Pokémon. Also increases the overworld encounter rate of Steel-type Pokémon by 50% if in the first slot

; Stat boosting
; Boosts damage of specific moves in a "pinch" (1/3 or less max health)
	const BLAZE    ; Fire
	const OVERGROW ; Grass
	const TORRENT  ; Water
	const SWARM    ; Bug (THE OVERWORLD EFFECT OF INCREASING OVERWORLD CRIES IS NOT BEING IMPLEMENTED IN CSE)
; Boosts stat upon status infliction
	const GUTS         ; Attack
	const MARVEL_SCALE ; Defense
; Boosts Sp. Attack in presence of... (THESE ABILITIES ARE ESSENTIALLY USELESS WITHOUT DOUBLE BATTLES)
	const PLUS  ; Minus
	const MINUS ; Plus
; Passively boosts...
	const COMPOUNDEYES ; Accuracy by 30%. Also increases the rate of wild Pokémon holding an item by 50% if in the first slot
	const HUSTLE       ; Attack by 50%, but decreases accuracy of Physical moves by 20%. Also decreases the overworld encounter rate of wild Pokémon if in the first slot
	const HUGE_POWER   ; Doubles Attack
	const PURE_POWER   ; Doubles Attack
	const SPEED_BOOST  ; Speed at the end of the turn, until maxed out

; Weather related
; Prevents the effects of the weather
	const AIR_LOCK
	const CLOUD_NINE
; Boosts speed in weather conditions
	const CHLOROPHYLL ; Sunlight
	const SWIFT_SWIM  ; Rain
; Changes type to match the weather
	const FORECAST
; Causes a specific weather condition
	const DROUGHT     ; Sunlight
	const DRIZZLE     ; Rain
	const SAND_STREAM ; Sandstorm. Also halves the wild Pokémon encounter rate if in the first slot during an overworld sandstorm
; Boosts stats in weather
	const SAND_VEIL ; Evasion by 20% during a sandstorm
; Heals during weather
	const RAIN_DISH ; Heals during rain

; Nullifies or weakens specific moves/move effects
; Nullifies...
	const CACOPHONY    ; Sound-based moves (THIS ABILITY IS UNUSED IN THE BASE GAMES - Grasswhistle, Growl, Heal Bell, Hyper Voice, Metal Sound, Perish Song, Sing, Sonicboom, Supersonic, Screech, Snore and Uproar)
	const SOUNDPROOF   ; Sound-based moves (Grasswhistle, Growl, Heal Bell, Hyper Voice, Metal Sound, Perish Song, Sing, Sonicboom, Supersonic, Screech, Snore and Uproar)
	const LEVITATE     ; Ground-type moves
	const WONDER_GUARD ; Non-super-effective moves
	const STURDY       ; One-hit KO moves
	const SUCTION_CUPS ; Roar and Whirlwind. Also increases capture rate of hooked wild Pokémon if in Battle
	const DAMP         ; Selfdestruct and Explosion
; Entirely prevents any form of enemy inflicted stat reduction
	const CLEAR_BODY
	const WHITE_SMOKE ; Also decreases the overworld encounter rate by 50%
; Prevents specifically...
	const ROCK_HEAD    ; Recoil damage from moves, except from Struggle
	const BATTLE_ARMOR ; Critical hits
	const SHELL_ARMOR  ; Critical hits
	const INNER_FOCUS  ; Flinching
	const KEEN_EYE     ; Accuracy loss. Also decreases the encounter rate of lower-leveled wild Pokémon
	const HYPER_CUTTER ; Attack loss. Also increases the amount of grass removed when using Cut in the overworld
	const INSOMNIA     ; Sleep
	const VITAL_SPIRIT ; Sleep. Also decreases the overworld encounter rate of higher leveled Pokémon by 50% if in the first slot
	const IMMUNITY     ; Poisoning
	const LIMBER       ; Paralysis
	const WATER_VEIL   ; Burn
	const OBLIVIOUS    ; Infatuation and the move Captivate
	const OWN_TEMPO    ; Confusion
	const MAGMA_ARMOR  ; Freezing. Pokémon eggs will also hatch in half the time.
	const SHIELD_DUST  ; Added move effects
	const STICKY_HOLD  ; Item loss. Also increases capture rate of hooked wild Pokémon if in Battle
; Weakens...
	const THICK_FAT ; Fire-type and Ice-type moves by half

; Causes additional effects upon move usage
; Contact-based status effects (30% chance on contact)
	const CUTE_CHARM    ; Infatuation. Also increases the overworld encounter rate of Pokémon of the opposite gender by 67% if in the first slot
	const EFFECT_SPORE  ; Sleep, Paralysis or Poison (33% chance each)
	const FLAME_BODY    ; Burn. Pokémon eggs will also hatch in half the time.
	const POISON_POINT  ; Poisoning
	const STATIC        ; Paralysis. Also increases the overworld encounter rate of electric Pokémon by 50% if in the first slot
; Alters added move effects
	const LIQUID_OOZE  ; Damages Pokémon attempting to use life-sucking moves
	const SERENE_GRACE ; Doubles the chance of added move effects
; Pokémon's type changes to match the last damaging move that it was hit by
	const COLOR_CHANGE
; Boosts power  of Fire-type moves upon being hit by one unless frozen or protected
	const FLASH_FIRE ; Also provides complete immunity to Fire-type moves
; Synchronizes select status effects (Burn, Poisoning or Paralysis) if one is inflicted (it also can activate from the contact-based status effects)
	const SYNCHRONIZE ; Gas a 50% chance to force encountered Pokémon to share the same nature if in the first slot
; Draws the move to the ability holder
	const LIGHTNINGROD ; Electric-type moves. Also increases the rate of telephone calls
; Heals up to 25% of max HP upon being hit by a damaging move of the...
	const VOLT_ABSORB  ; Electric-type
	const WATER_ABSORB ; Water-type
; Damages Physical attackers by 1/16th of their max HP (1/8th is in Gen IV+)
	const ROUGH_SKIN

; Skips every-other turn
; Because of course, Slakoth and Slaking love their naps
	const TRUANT

; Heals statuses...
; In-battle
	const SHED_SKIN  ; 33% chance to recover from major statuses (does not include Confusion or Infatuation)
	const EARLY_BIRD ; Wakes up from sleep 50% earlier
; Upon exiting the battle
	const NATURAL_CURE

; Ability activates upon entrance
; Lowers...
	const INTIMIDATE ; Attack. Also reduces encounter rates of Pokémon at least 5 levels lower by 50%
; Copies the opponent's ability
	const TRACE

; Doubles PP usage. Also halves the wild Pokémon encounter rate if in the first slot
	const PRESSURE

; Allows the user to run away from any wild Pokémon battle without fail
	const RUN_AWAY

; Purely has an overworld effect
; Doubles wild Pokémon encounter rate if in the first slot
	const ILLUMINATE
; Halves wild Pokémon encounter rate if in the first slot
	const STENCH
; Randomly may find an item after battle
	const PICKUP

DEF NUM_ABILITIES EQU const_value - 1
