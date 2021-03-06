INCLUDE "constants.asm"


SECTION "Evolutions and Attacks", ROMX

; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

INCLUDE "data/pokemon/evos_attacks_pointers.asm"

BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 3, GROWL
	db 7, LEECH_SEED
	db 9, VINE_WHIP
	db 13, POISONPOWDER
	db 13, SLEEP_POWDER
	db 15, TAKE_DOWN
	db 19, RAZOR_LEAF
	db 21, SWEET_SCENT
	db 25, GROWTH
	db 27, DOUBLE_EDGE
	db 32, SYNTHESIS
else
	db 1, TACKLE
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 20, RAZOR_LEAF
	db 25, SWEET_SCENT
	db 32, GROWTH
	db 39, SYNTHESIS
	db 46, SOLARBEAM
endc
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 3, GROWL
	db 7, LEECH_SEED
	db 9, VINE_WHIP
	db 13, POISONPOWDER
	db 13, SLEEP_POWDER
	db 15, TAKE_DOWN
	db 19, RAZOR_LEAF
	db 23, SWEET_SCENT
	db 28, GROWTH
	db 31, DOUBLE_EDGE
	db 36, SYNTHESIS
	db 44, SOLARBEAM
else
	db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 29, SWEET_SCENT
	db 38, GROWTH
	db 47, SYNTHESIS
	db 56, SOLARBEAM
endc
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, PETAL_DANCE
	db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 1, VINE_WHIP
	db 3, GROWL
	db 7, LEECH_SEED
	db 9, VINE_WHIP
	db 13, POISONPOWDER
	db 13, SLEEP_POWDER
	db 15, TAKE_DOWN
	db 19, RAZOR_LEAF
	db 23, SWEET_SCENT
	db 28, GROWTH
	db 31, DOUBLE_EDGE
	db 40, SYNTHESIS
	db 48, PETAL_DANCE
	db 52, SOLARBEAM
else
	db 1, TACKLE
	db 1, PETAL_DANCE
	db 1, GROWL
	db 1, LEECH_SEED
	db 1, VINE_WHIP
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 29, SWEET_SCENT
	db 41, GROWTH
	db 53, SYNTHESIS
	db 65, SOLARBEAM
endc
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, DRAGON_RAGE
	db 19, SCARY_FACE
	db 26, FIRE_PUNCH
	db 32, SLASH
	db 37, FLAMETHROWER
	db 43, FIRE_SPIN
	db 47, FIRE_BLAST
else
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 13, SMOKESCREEN
	db 19, RAGE
	db 25, SCARY_FACE
	db 31, FLAMETHROWER
	db 37, SLASH
	db 43, DRAGON_RAGE
	db 49, FIRE_SPIN
endc
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, DRAGON_RAGE
	db 22, SCARY_FACE
	db 30, FIRE_PUNCH
	db 35, SLASH
	db 42, FLAMETHROWER
	db 50, FIRE_SPIN
	db 54, FIRE_BLAST
else
	db 1, SCRATCH
	db 1, GROWL
	db 1, EMBER
	db 7, EMBER
	db 13, SMOKESCREEN
	db 20, RAGE
	db 27, SCARY_FACE
	db 34, FLAMETHROWER
	db 41, SLASH
	db 48, DRAGON_RAGE
	db 55, FIRE_SPIN
endc
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, WING_ATTACK
	db 1, FIRE_BLAST
	db 1, DRAGONBREATH
	db 1, SHADOW_BALL
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 10, SMOKESCREEN
	db 16, DRAGON_RAGE
	db 22, SCARY_FACE
	db 32, FIRE_PUNCH
	db 40, SLASH
	db 42, FLAMETHROWER
	db 56, FIRE_SPIN
	db 62, FIRE_BLAST
else
	db 1, SCRATCH
	db 1, GROWL
	db 1, EMBER
	db 1, SMOKESCREEN
	db 7, EMBER
	db 13, SMOKESCREEN
	db 20, RAGE
	db 27, SCARY_FACE
	db 34, FLAMETHROWER
	db 36, WING_ATTACK
	db 44, SLASH
	db 54, DRAGON_RAGE
	db 64, FIRE_SPIN
	db 0 ; no more level-up moves
endc

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, WATER_GUN
	db 10, WITHDRAW
	db 13, BUBBLE
	db 16, BITE
	db 19, RAPID_SPIN
	db 22, PROTECT
	db 27, WATERFALL
	db 31, SKULL_BASH
	db 34, BARRIER
	db 37, RAIN_DANCE
	db 40, HYDRO_PUMP
else
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, WITHDRAW
	db 13, WATER_GUN
	db 18, BITE
	db 23, RAPID_SPIN
	db 28, PROTECT
	db 33, RAIN_DANCE
	db 40, SKULL_BASH
	db 47, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 4, TAIL_WHIP
	db 7, WATER_GUN
	db 10, WITHDRAW
	db 13, BUBBLE
	db 16, BITE
	db 21, RAPID_SPIN
	db 25, PROTECT
	db 31, WATERFALL
	db 37, SKULL_BASH
	db 41, BARRIER
	db 45, RAIN_DANCE
	db 49, HYDRO_PUMP
else
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, BUBBLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, WITHDRAW
	db 13, WATER_GUN
	db 19, BITE
	db 25, RAPID_SPIN
	db 31, PROTECT
	db 37, RAIN_DANCE
	db 45, SKULL_BASH
	db 53, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, BARRIER
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 4, TAIL_WHIP
	db 7, WATER_GUN
	db 10, WITHDRAW
	db 13, BUBBLE
	db 16, BITE
	db 21, RAPID_SPIN
	db 25, PROTECT
	db 33, WATERFALL
	db 40, SKULL_BASH
	db 47, BARRIER
	db 54, RAIN_DANCE
	db 60, HYDRO_PUMP
else
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, BUBBLE
	db 1, WITHDRAW
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, WITHDRAW
	db 13, WATER_GUN
	db 19, BITE
	db 25, RAPID_SPIN
	db 31, PROTECT
	db 42, RAIN_DANCE
	db 55, SKULL_BASH
	db 68, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, CONFUSION
	db 1, GUST
	db 12, CONFUSION
	db 15, POISONPOWDER
	db 15, STUN_SPORE
	db 15, SLEEP_POWDER
	db 17, PSYBEAM
	db 23, SUPERSONIC
	db 25, SAFEGUARD
	db 29, WHIRLWIND
	db 35, WING_ATTACK
else
	db 1, CONFUSION
	db 10, CONFUSION
	db 13, POISONPOWDER
	db 14, STUN_SPORE
	db 15, SLEEP_POWDER
	db 18, SUPERSONIC
	db 23, WHIRLWIND
	db 28, GUST
	db 34, PSYBEAM
	db 40, SAFEGUARD
endc
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, FURY_ATTACK
	db 1, TWINEEDLE
	db 13, FURY_ATTACK
	db 16, RAGE
	db 19, PURSUIT
	db 22, FOCUS_ENERGY
	db 26, SLUDGE
	db 30, PIN_MISSILE
	db 36, AGILITY
else
	db 1, FURY_ATTACK
	db 10, FURY_ATTACK
	db 15, FOCUS_ENERGY
	db 20, TWINEEDLE
	db 25, RAGE
	db 30, PURSUIT
	db 35, PIN_MISSILE
	db 40, AGILITY
endc
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 9, GUST
	db 13, QUICK_ATTACK
	db 21, WHIRLWIND
	db 29, WING_ATTACK
	db 37, AGILITY
	db 47, MIRROR_MOVE
else
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 9, GUST
	db 13, QUICK_ATTACK
	db 17, WHIRLWIND
	db 21, TWISTER
	db 29, WING_ATTACK
	db 35, AGILITY
	db 45, MIRROR_MOVE
endc
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 1, GUST
	db 5, SAND_ATTACK
	db 9, GUST
	db 13, QUICK_ATTACK
	db 17, WHIRLWIND
	db 22, TWISTER
	db 27, WING_ATTACK
	db 32, AGILITY
	db 37, CHARM
	db 55, MIRROR_MOVE
else
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 1, GUST
	db 5, SAND_ATTACK
	db 9, GUST
	db 15, QUICK_ATTACK
	db 23, WHIRLWIND
	db 33, WING_ATTACK
	db 43, AGILITY
	db 55, MIRROR_MOVE
endc
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 1, GUST
	db 5, SAND_ATTACK
	db 9, GUST
	db 13, QUICK_ATTACK
	db 17, WHIRLWIND
	db 22, TWISTER
	db 27, WING_ATTACK
	db 40, CHARM
	db 47, AGILITY
	db 55, FLY
	db 61, MIRROR_MOVE
else
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 1, GUST
	db 1, QUICK_ATTACK
	db 5, SAND_ATTACK
	db 9, GUST
	db 15, QUICK_ATTACK
	db 23, WHIRLWIND
	db 33, WING_ATTACK
	db 46, AGILITY
	db 61, MIRROR_MOVE
endc
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, QUICK_ATTACK
	db 7, HYPER_FANG
	db 10, BITE
	db 13, PURSUIT
	db 16, HYPER_FANG
	db 22, CRUNCH
	db 28, SUPER_FANG
	db 32, DOUBLE_EDGE
else
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, HYPER_FANG
	db 20, FOCUS_ENERGY
	db 27, PURSUIT
	db 34, SUPER_FANG
endc
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCARY_FACE
	db 1, SWORDS_DANCE
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 1, FOCUS_ENERGY
	db 4, QUICK_ATTACK
	db 7, FOCUS_ENERGY
	db 10, BITE
	db 13, PURSUIT
	db 16, HYPER_FANG
	db 22, CRUNCH
	db 34, SUPER_FANG
	db 39, DOUBLE_EDGE
else
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 7, QUICK_ATTACK
	db 13, HYPER_FANG
	db 20, SCARY_FACE
	db 30, PURSUIT
	db 40, SUPER_FANG
endc
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, PECK
	db 1, GROWL
	db 4, LEER
	db 8, PURSUIT
	db 11, FURY_ATTACK
	db 15, WING_ATTACK
	db 22, AGILITY
	db 29, MIRROR_MOVE
	db 36, DRILL_PECK
else
	db 1, PECK
	db 1, GROWL
	db 7, LEER
	db 13, FURY_ATTACK
	db 25, PURSUIT
	db 31, MIRROR_MOVE
	db 37, DRILL_PECK
	db 43, AGILITY
endc
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, DRILL_PECK
	db 1, PECK
	db 1, GROWL
	db 1, LEER
	db 1, PURSUIT
	db 4, LEER
	db 8, PURSUIT
	db 11, FURY_ATTACK
	db 22, FOCUS_ENERGY
	db 27, AGILITY
	db 34, MIRROR_MOVE
	db 40, DRILL_PECK
else
	db 1, PECK
	db 1, GROWL
	db 1, LEER
	db 1, FURY_ATTACK
	db 7, LEER
	db 13, FURY_ATTACK
	db 26, PURSUIT
	db 32, MIRROR_MOVE
	db 40, DRILL_PECK
	db 47, AGILITY
endc
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, WRAP
	db 1, LEER
	db 4, POISON_STING
	db 9, BITE
	db 12, GLARE
	db 17, SCREECH
	db 20, ACID
	db 25, SLUDGE
	db 33, DIG
	db 38, TOXIC
	db 44, SLUDGE_BOMB
	db 48, HAZE
else
	db 1, WRAP
	db 1, LEER
	db 9, POISON_STING
	db 15, BITE
	db 23, GLARE
	db 29, SCREECH
	db 37, ACID
	db 43, HAZE
endc
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, CRUNCH
	db 1, WRAP
	db 1, LEER
	db 1, POISON_STING
	db 1, BITE
	db 4, POISON_STING
	db 9, BITE
	db 12, GLARE
	db 17, SCREECH
	db 20, ACID
	db 27, SLUDGE
	db 35, DIG
	db 40, TOXIC
	db 45, SLUDGE_BOMB
	db 49, HAZE
else
	db 1, WRAP
	db 1, LEER
	db 1, POISON_STING
	db 1, BITE
	db 9, POISON_STING
	db 15, BITE
	db 25, GLARE
	db 33, SCREECH
	db 43, ACID
	db 51, HAZE
endc
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TAIL_WHIP
	db 1, THUNDERSHOCK
	db 5, GROWL
	db 10, QUICK_ATTACK
	db 14, SPARK
	db 18, THUNDER_WAVE
	db 21, HEADBUTT
	db 23, DOUBLE_TEAM
	db 26, THUNDERPUNCH
	db 31, AGILITY
	db 37, SLAM
	db 42, THUNDERBOLT
	db 46, AMNESIA
	db 51, ZAP_CANNON
	db 53, LIGHT_SCREEN
	db 58, THUNDER
else
	db 1, THUNDERSHOCK
	db 1, GROWL
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, QUICK_ATTACK
	db 15, DOUBLE_TEAM
	db 20, SLAM
	db 26, THUNDERBOLT
	db 33, AGILITY
	db 41, THUNDER
	db 50, LIGHT_SCREEN
endc
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TAIL_WHIP
	db 1, THUNDERSHOCK
	db 5, GROWL
	db 13, QUICK_ATTACK
	db 17, SPARK
	db 21, THUNDER_WAVE
	db 24, HEADBUTT
	db 27, DOUBLE_TEAM
	db 29, THUNDERPUNCH
	db 34, AGILITY
	db 40, SLAM
	db 45, THUNDERBOLT
	db 49, AMNESIA
	db 54, ZAP_CANNON
	db 57, LIGHT_SCREEN
	db 61, THUNDER
else
	db 1, THUNDERSHOCK
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 1, THUNDERBOLT
endc
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 3, SAND_ATTACK
	db 5, POISON_STING
	db 7, ROLLOUT
	db 9, RAPID_SPIN
	db 11, FURY_CUTTER
	db 14, MAGNITUDE
	db 17, SWIFT
	db 20, FURY_SWIPES
	db 25, SLASH
	db 30, DIG
	db 34, METAL_CLAW
	db 38, SWORDS_DANCE
	db 42, SANDSTORM
	db 46, EARTHQUAKE
else
	db 1, SCRATCH
	db 6, DEFENSE_CURL
	db 11, SAND_ATTACK
	db 17, POISON_STING
	db 23, SLASH
	db 30, SWIFT
	db 37, FURY_SWIPES
	db 45, SANDSTORM
endc
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, SAND_ATTACK
	db 1, POISON_STING
	db 5, POISON_STING
	db 7, ROLLOUT
	db 9, RAPID_SPIN
	db 11, FURY_CUTTER
	db 14, MAGNITUDE
	db 17, SWIFT
	db 20, FURY_SWIPES
	db 25, SLASH
	db 32, DIG
	db 38, METAL_CLAW
	db 43, SWORDS_DANCE
	db 48, SANDSTORM
	db 53, EARTHQUAKE
else
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, SAND_ATTACK
	db 6, DEFENSE_CURL
	db 11, SAND_ATTACK
	db 17, POISON_STING
	db 24, SLASH
	db 33, SWIFT
	db 42, FURY_SWIPES
	db 52, SANDSTORM
endc
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, GROWL
	db 1, SCRATCH
	db 5, TAIL_WHIP
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 19, FURY_SWIPES
	db 21, BITE
	db 25, SHARPEN
	db 31, SPIKES
	db 35, CRUNCH
	db 43, CHARM
	db 45, SLUDGE_BOMB
else
	db 1, GROWL
	db 1, TACKLE
	db 8, SCRATCH
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 23, TAIL_WHIP
	db 30, BITE
	db 38, FURY_SWIPES
endc
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, GROWL
	db 1, SCRATCH
	db 5, TAIL_WHIP
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 20, FURY_SWIPES
	db 23, BITE
	db 28, SHARPEN
	db 35, SPIKES
	db 40, CRUNCH
	db 50, CHARM
	db 56, SLUDGE_BOMB
else
	db 1, GROWL
	db 1, TACKLE
	db 8, SCRATCH
	db 12, DOUBLE_KICK
	db 19, POISON_STING
	db 27, TAIL_WHIP
	db 36, BITE
	db 46, FURY_SWIPES
endc
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, DYNAMICPUNCH
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 8, TAIL_WHIP
	db 12, DOUBLE_KICK
	db 15, POISON_STING
	db 23, FURY_SWIPES
	db 26, BITE
	db 31, SHARPEN
	db 38, SPIKES
	db 41, BODY_SLAM
	db 45, CRUNCH
	db 48, EARTHQUAKE
	db 53, CHARM
	db 59, SLUDGE_BOMB
	db 61, DYNAMICPUNCH
else
	db 1, TACKLE
	db 1, SCRATCH
	db 1, DOUBLE_KICK
	db 1, TAIL_WHIP
	db 23, BODY_SLAM
endc
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, LEER
	db 1, PECK
	db 7, FOCUS_ENERGY
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 19, FURY_ATTACK
	db 21, HORN_ATTACK
	db 25, SHARPEN
	db 31, SPIKES
	db 36, SLUDGE
	db 43, CHARM
	db 45, HORN_DRILL
else
	db 1, LEER
	db 1, TACKLE
	db 8, HORN_ATTACK
	db 12, DOUBLE_KICK
	db 17, POISON_STING
	db 23, FOCUS_ENERGY
	db 30, FURY_ATTACK
	db 38, HORN_DRILL
endc
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, LEER
	db 1, PECK
	db 7, FOCUS_ENERGY
	db 9, DOUBLE_KICK
	db 13, POISON_STING
	db 20, FURY_ATTACK
	db 23, HORN_ATTACK
	db 28, SHARPEN
	db 35, SPIKES
	db 38, SLUDGE
	db 44, CHARM
	db 54, HORN_DRILL
else
	db 1, LEER
	db 1, TACKLE
	db 8, HORN_ATTACK
	db 12, DOUBLE_KICK
	db 19, POISON_STING
	db 27, FOCUS_ENERGY
	db 36, FURY_ATTACK
	db 46, HORN_DRILL
endc
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, MEGAHORN
	db 1, PECK
	db 1, FOCUS_ENERGY
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 10, FOCUS_ENERGY
	db 12, DOUBLE_KICK
	db 16, POISON_STING
	db 23, FURY_ATTACK
	db 26, HORN_ATTACK
	db 31, SHARPEN
	db 35, THRASH
	db 38, SPIKES
	db 41, EARTHQUAKE
	db 44, SLUDGE
	db 47, CHARM
	db 57, HORN_DRILL
	db 61, MEGAHORN
else
	db 1, TACKLE
	db 1, HORN_ATTACK
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 23, THRASH
endc
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, POUND
	db 1, GROWL
	db 4, ENCORE
	db 7, SING
	db 10, DOUBLESLAP
	db 13, DEFENSE_CURL
	db 17, FOCUS_ENERGY
	db 22, VITAL_THROW
	db 25, MINIMIZE
	db 29, KINESIS
	db 31, METRONOME
	db 35, BARRIER
	db 40, BODY_SLAM
	db 43, MOONLIGHT
	db 46, LIGHT_SCREEN
	db 50, RECOVER
else
	db 1, POUND
	db 1, GROWL
	db 4, ENCORE
	db 8, SING
	db 13, DOUBLESLAP
	db 19, MINIMIZE
	db 26, DEFENSE_CURL
	db 34, METRONOME
	db 43, MOONLIGHT
	db 53, LIGHT_SCREEN
endc
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, POUND
	db 1, GROWL
	db 7, ENCORE
	db 10, SING
	db 13, DOUBLESLAP
	db 16, DEFENSE_CURL
	db 20, FOCUS_ENERGY
	db 25, VITAL_THROW
	db 28, MINIMIZE
	db 32, KINESIS
	db 34, METRONOME
	db 38, BARRIER
	db 43, BODY_SLAM
	db 46, MOONLIGHT
	db 49, LIGHT_SCREEN
	db 53, RECOVER
else
	db 1, SING
	db 1, DOUBLESLAP
	db 1, METRONOME
	db 1, MOONLIGHT
endc
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, EMBER
	db 4, TAIL_WHIP
	db 7, ROAR
	db 9, CHARM
	db 10, QUICK_ATTACK
	db 12, CONFUSE_RAY
	db 15, FIRE_SPIN
	db 18, PURSUIT
	db 23, FAINT_ATTACK
	db 26, SHADOW_BALL
	db 28, FLAME_WHEEL
	db 33, PSYBEAM
	db 37, FLAMETHROWER
	db 42, FIRE_BLAST
else
	db 1, EMBER
	db 1, TAIL_WHIP
	db 7, QUICK_ATTACK
	db 13, ROAR
	db 19, CONFUSE_RAY
	db 25, SAFEGUARD
	db 31, FLAMETHROWER
	db 37, FIRE_SPIN
endc
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, EMBER
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 1, CONFUSE_RAY
	db 1, FLAMETHROWER
	db 7, TAIL_WHIP
	db 10, ROAR
	db 12, CHARM
	db 13, QUICK_ATTACK
	db 15, CONFUSE_RAY
	db 18, FIRE_SPIN
	db 21, PURSUIT
	db 26, FAINT_ATTACK
	db 29, SHADOW_BALL
	db 31, FLAME_WHEEL
	db 36, PSYBEAM
	db 40, FLAMETHROWER
	db 45, FIRE_BLAST
else
	db 1, EMBER
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 43, FIRE_SPIN
endc
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SING
	db 5, DEFENSE_CURL
	db 9, POUND
	db 13, DISABLE
	db 19, DOUBLESLAP
	db 25, ROLLOUT
	db 29, REST
	db 33, BODY_SLAM
	db 37, MACH_PUNCH
	db 45, MIMIC
	db 52, DOUBLE_EDGE
else
	db 1, SING
	db 4, DEFENSE_CURL
	db 9, POUND
	db 14, DISABLE
	db 19, ROLLOUT
	db 24, DOUBLESLAP
	db 29, REST
	db 34, BODY_SLAM
	db 39, DOUBLE_EDGE
endc
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DISABLE
	db 1, DEFENSE_CURL
	db 1, DOUBLESLAP
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, ABSORB
	db 5, SUPERSONIC
	db 7, LICK
	db 11, BITE
	db 13, GUST
	db 17, CONFUSE_RAY
	db 19, WING_ATTACK
	db 23, SWIFT
	db 25, SLUDGE
	db 29, MEAN_LOOK
	db 31, LEECH_LIFE
	db 35, HAZE
	db 37, SLUDGE_BOMB
	db 41, FLY
	db 43, DETECT
else
	db 1, LEECH_LIFE
	db 6, SUPERSONIC
	db 12, BITE
	db 19, CONFUSE_RAY
	db 27, WING_ATTACK
	db 36, MEAN_LOOK
	db 46, HAZE
endc
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCREECH
	db 1, ABSORB
	db 1, SUPERSONIC
	db 1, LICK
	db 1, BITE
	db 5, SUPERSONIC
	db 7, LICK
	db 11, BITE
	db 13, GUST
	db 17, CONFUSE_RAY
	db 19, WING_ATTACK
	db 24, SWIFT
	db 27, SLUDGE
	db 32, MEAN_LOOK
	db 35, LEECH_LIFE
	db 40, HAZE
	db 37, SLUDGE_BOMB
	db 48, FLY
	db 51, DETECT
else
	db 1, SCREECH
	db 1, LEECH_LIFE
	db 1, SUPERSONIC
	db 6, SUPERSONIC
	db 12, BITE
	db 19, CONFUSE_RAY
	db 30, WING_ATTACK
	db 42, MEAN_LOOK
	db 55, HAZE
endc
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, ABSORB
	db 1, GROWTH
	db 5, SWEET_SCENT
	db 9, ACID
	db 13, POISONPOWDER
	db 14, STUN_SPORE
	db 15, SLEEP_POWDER
	db 19, MEGA_DRAIN
	db 23, RAZOR_LEAF
	db 27, MOONLIGHT
	db 31, GIGA_DRAIN
	db 35, TOXIC
	db 41, PETAL_DANCE
else
	db 1, ABSORB
	db 7, SWEET_SCENT
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 23, ACID
	db 32, MOONLIGHT
	db 39, PETAL_DANCE
endc
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, ABSORB
	db 1, GROWTH
	db 1, SWEET_SCENT
	db 1, ACID
	db 5, SWEET_SCENT
	db 9, ACID
	db 13, POISONPOWDER
	db 14, STUN_SPORE
	db 15, SLEEP_POWDER
	db 19, MEGA_DRAIN
	db 24, RAZOR_LEAF
	db 29, MOONLIGHT
	db 34, GIGA_DRAIN
	db 39, TOXIC
	db 46, PETAL_DANCE
else
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, POISONPOWDER
	db 7, SWEET_SCENT
	db 14, POISONPOWDER
	db 16, STUN_SPORE
	db 18, SLEEP_POWDER
	db 24, ACID
	db 35, MOONLIGHT
	db 44, PETAL_DANCE
endc
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, MEGA_DRAIN
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, POISONPOWDER
	db 1, STUN_SPORE
	db 1, PETAL_DANCE
	db 8, SWEET_SCENT
	db 12, ACID
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 18, SLEEP_POWDER
	db 21, MEGA_DRAIN
	db 27, RAZOR_LEAF
	db 32, MOONLIGHT
	db 37, GIGA_DRAIN
	db 42, TOXIC
	db 49, PETAL_DANCE
	db 60, SOLARBEAM
else
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, PETAL_DANCE
endc
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCRATCH
	db 6, STUN_SPORE
	db 6, POISONPOWDER
	db 11, ABSORB
	db 17, FURY_CUTTER
	db 22, SPORE
	db 27, SLASH
	db 33, GROWTH
	db 38, GIGA_DRAIN
	db 43, SPIDER_WEB
	db 46, LEECH_LIFE
else
	db 1, SCRATCH
	db 7, STUN_SPORE
	db 13, POISONPOWDER
	db 19, LEECH_LIFE
	db 25, SPORE
	db 31, SLASH
	db 37, GROWTH
	db 43, GIGA_DRAIN
endc
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCRATCH
	db 1, STUN_SPORE
	db 1, POISONPOWDER
	db 1, ABSORB
	db 6, STUN_SPORE
	db 6, POISONPOWDER
	db 11, ABSORB
	db 17, FURY_CUTTER
	db 22, SPORE
	db 29, SLASH
	db 37, GROWTH
	db 44, GIGA_DRAIN
	db 51, LEECH_LIFE
else
	db 1, SCRATCH
	db 1, STUN_SPORE
	db 1, POISONPOWDER
	db 7, STUN_SPORE
	db 13, POISONPOWDER
	db 19, LEECH_LIFE
	db 28, SPORE
	db 37, SLASH
	db 46, GROWTH
	db 55, GIGA_DRAIN
endc
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 5, SUPERSONIC
	db 11, CONFUSION
	db 13, POISONPOWDER
	db 17, PSYBEAM
	db 23, STUN_SPORE
	db 25, LEECH_LIFE
	db 29, SLEEP_POWDER
	db 35, FURY_CUTTER
	db 47, PSYCHIC_M
else
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 9, SUPERSONIC
	db 17, CONFUSION
	db 20, POISONPOWDER
	db 25, LEECH_LIFE
	db 28, STUN_SPORE
	db 33, PSYBEAM
	db 36, SLEEP_POWDER
	db 41, PSYCHIC_M
endc
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, GUST
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 1, SUPERSONIC
	db 5, SUPERSONIC
	db 11, CONFUSION
	db 13, POISONPOWDER
	db 17, PSYBEAM
	db 23, STUN_SPORE
	db 25, LEECH_LIFE
	db 33, SLEEP_POWDER
	db 37, FURY_CUTTER
	db 45, SLUDGE_BOMB
	db 55, PSYCHIC_M
else
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 1, SUPERSONIC
	db 9, SUPERSONIC
	db 17, CONFUSION
	db 20, POISONPOWDER
	db 25, LEECH_LIFE
	db 28, STUN_SPORE
	db 31, GUST
	db 36, PSYBEAM
	db 42, SLEEP_POWDER
	db 52, PSYCHIC_M
endc
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SAND_ATTACK
	db 1, SCRATCH
	db 4, GROWL
	db 7, LICK
	db 10, MUD_SLAP
	db 14, MAGNITUDE
	db 20, FAINT_ATTACK
	db 25, SPIKES
	db 30, DIG
	db 35, SLASH
	db 39, EARTHQUAKE
	db 43, FISSURE
else
	db 1, SCRATCH
	db 5, GROWL
	db 9, MAGNITUDE
	db 17, DIG
	db 25, SAND_ATTACK
	db 33, SLASH
	db 41, EARTHQUAKE
	db 49, FISSURE
endc
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SAND_ATTACK
	db 1, SCRATCH
	db 4, GROWL
	db 7, LICK
	db 10, MUD_SLAP
	db 14, MAGNITUDE
	db 20, FAINT_ATTACK
	db 25, SPIKES
	db 33, DIG
	db 38, SLASH
	db 45, EARTHQUAKE
	db 55, FISSURE
else
	db 1, TRI_ATTACK
	db 1, SCRATCH
	db 1, GROWL
	db 1, MAGNITUDE
	db 5, GROWL
	db 9, MAGNITUDE
	db 17, DIG
	db 25, SAND_ATTACK
	db 37, SLASH
	db 49, EARTHQUAKE
	db 61, FISSURE
endc
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCRATCH
	db 1, GROWL
	db 6, BITE
	db 12, FURY_SWIPES
	db 17, SCREECH
	db 22, FAINT_ATTACK
	db 25, ENCORE
	db 30, PAY_DAY
	db 33, SLASH
	db 38, SWAGGER
	db 43, CRUNCH
	db 48, SWORDS_DANCE
else
	db 1, SCRATCH
	db 1, GROWL
	db 11, BITE
	db 20, PAY_DAY
	db 28, FAINT_ATTACK
	db 35, SCREECH
	db 41, FURY_SWIPES
	db 46, SLASH
endc
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SWIFT
	db 1, SCRATCH
	db 1, GROWL
	db 6, BITE
	db 12, FURY_SWIPES
	db 17, SCREECH
	db 22, FAINT_ATTACK
	db 25, ENCORE
	db 30, PAY_DAY
	db 33, ROCK_SLIDE
	db 37, SLASH
	db 45, SWAGGER
	db 49, CRUNCH
	db 56, SWORDS_DANCE
else
	db 1, SCRATCH
	db 1, GROWL
	db 1, BITE
	db 11, BITE
	db 20, PAY_DAY
	db 29, FAINT_ATTACK
	db 38, SCREECH
	db 46, FURY_SWIPES
	db 53, SLASH
endc
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCRATCH
	db 4, TAIL_WHIP
	db 7, WATER_GUN
	db 10, CONFUSION
	db 13, FURY_SWIPES
	db 16, BUBBLEBEAM
	db 19, DISABLE
	db 22, SCREECH
	db 25, PSYBEAM
	db 28, SURF
	db 34, PSYCH_UP
	db 37, AMNESIA
	db 40, HYDRO_PUMP
else
	db 1, SCRATCH
	db 5, TAIL_WHIP
	db 10, DISABLE
	db 16, CONFUSION
	db 23, SCREECH
	db 31, PSYCH_UP
	db 40, FURY_SWIPES
	db 50, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 4, TAIL_WHIP
	db 7, WATER_GUN
	db 10, CONFUSION
	db 13, FURY_SWIPES
	db 16, BUBBLEBEAM
	db 19, DISABLE
	db 22, SCREECH
	db 25, PSYBEAM
	db 28, SURF
	db 36, PSYCH_UP
	db 41, AMNESIA
	db 46, HYDRO_PUMP
else
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 1, DISABLE
	db 1, CONFUSION
	db 5, TAIL_WHIP
	db 10, DISABLE
	db 16, CONFUSION
	db 23, SCREECH
	db 31, PSYCH_UP
	db 44, FURY_SWIPES
	db 58, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCRATCH
	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 5, FURY_SWIPES
	db 8, KARATE_CHOP
	db 12, PURSUIT
	db 15, SEISMIC_TOSS
	db 19, SWAGGER
	db 22, CROSS_CHOP
	db 26, FAINT_ATTACK
	db 29, CRUNCH
	db 33, THRASH
	db 36, DYNAMICPUNCH
	db 40, SCREECH
	db 43, MAGNITUDE
	db 47, DRAGON_RAGE
else
	db 1, SCRATCH
	db 1, LEER
	db 9, LOW_KICK
	db 15, KARATE_CHOP
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 33, SEISMIC_TOSS
	db 39, CROSS_CHOP
	db 45, SCREECH
	db 51, THRASH
endc
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, RAGE
	db 1, SCRATCH
	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 5, FURY_SWIPES
	db 8, KARATE_CHOP
	db 12, PURSUIT
	db 15, SEISMIC_TOSS
	db 19, SWAGGER
	db 22, CROSS_CHOP
	db 26, FAINT_ATTACK
	db 32, CRUNCH
	db 36, THRASH
	db 40, DYNAMICPUNCH
	db 44, SCREECH
	db 48, MAGNITUDE
	db 53, DRAGON_RAGE
else
	db 1, SCRATCH
	db 1, LEER
	db 1, LOW_KICK
	db 1, RAGE
	db 9, LOW_KICK
	db 15, KARATE_CHOP
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 28, RAGE
	db 36, SEISMIC_TOSS
	db 45, CROSS_CHOP
	db 54, SCREECH
	db 63, THRASH
endc
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, EMBER
	db 1, LEER
	db 4, SHARPEN
	db 8, BITE
	db 12, FLAME_WHEEL
	db 16, FOCUS_ENERGY
	db 20, AGILITY
	db 24, FIRE_SPIN
	db 30, CRUNCH
	db 36, TAKE_DOWN
	db 40, FLAMETHROWER
	db 44, ROAR
	db 50, REVERSAL
else
	db 1, BITE
	db 1, ROAR
	db 9, EMBER
	db 18, LEER
	db 26, TAKE_DOWN
	db 34, FLAME_WHEEL
	db 42, AGILITY
	db 50, FLAMETHROWER
endc
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, EXTREMESPEED
	db 1, FLAME_WHEEL
	db 1, AGILITY
	db 1, FOCUS_ENERGY
	db 1, CRUNCH
	db 1, TAKE_DOWN
	db 1, ROAR
	db 1, REVERSAL
	db 1, EMBER
	db 1, LEER
	db 1, BITE
	db 4, SHARPEN
	db 8, BITE
	db 12, FLAME_WHEEL
	db 16, FOCUS_ENERGY
	db 20, AGILITY
	db 24, FIRE_SPIN
	db 30, CRUNCH
	db 36, TAKE_DOWN
	db 40, FLAMETHROWER
	db 44, ROAR
	db 50, REVERSAL
else
	db 1, ROAR
	db 1, LEER
	db 1, TAKE_DOWN
	db 1, FLAME_WHEEL
	db 50, EXTREMESPEED
endc
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 6, POUND
	db 12, MUD_SLAP
	db 18, BUBBLEBEAM
	db 24, RAIN_DANCE
	db 30, BODY_SLAM
	db 36, MAGNITUDE
	db 42, HYDRO_PUMP
	db 48, BELLY_DRUM
	db 54, DOUBLE_EDGE
else
	db 1, BUBBLE
	db 7, HYPNOSIS
	db 13, WATER_GUN
	db 19, DOUBLESLAP
	db 25, RAIN_DANCE
	db 31, BODY_SLAM
	db 37, BELLY_DRUM
	db 43, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_TRADE, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 6, POUND
	db 12, MUD_SLAP
	db 18, BUBBLEBEAM
	db 24, RAIN_DANCE
	db 32, BODY_SLAM
	db 40, MAGNITUDE
	db 48, HYDRO_PUMP
	db 56, BELLY_DRUM
	db 66, DOUBLE_EDGE
else
	db 1, BUBBLE
	db 1, HYPNOSIS
	db 1, WATER_GUN
	db 7, HYPNOSIS
	db 13, WATER_GUN
	db 19, DOUBLESLAP
	db 27, RAIN_DANCE
	db 35, BODY_SLAM
	db 43, BELLY_DRUM
	db 51, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SUBMISSION
	db 1, MIND_READER
	db 1, DYNAMICPUNCH
	db 1, BUBBLEBEAM
	db 1, RAIN_DANCE
	db 1, BODY_SLAM
	db 1, MAGNITUDE
	db 1, HYDRO_PUMP
	db 1, BELLY_DRUM
	db 1, DOUBLE_EDGE
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, POUND
	db 1, MUD_SLAP
	db 9, POUND
	db 15, MUD_SLAP
	db 21, BUBBLEBEAM
	db 27, RAIN_DANCE
	db 35, BODY_SLAM
	db 43, MAGNITUDE
	db 51, HYDRO_PUMP
	db 59, BELLY_DRUM
	db 69, DOUBLE_EDGE
else
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, SUBMISSION
	db 35, SUBMISSION
	db 51, MIND_READER
endc
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 16, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_ITEM, LINK_CABLE, ALAKAZAM
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TELEPORT
	db 1, KINESIS
	db 1, CONFUSION
	db 16, KINESIS
	db 18, DISABLE
	db 21, PSYBEAM
	db 26, REFLECT
	db 30, RECOVER
	db 38, PSYCHIC_M,
	db 43, FUTURE_SIGHT
else
	db 1, TELEPORT
	db 1, KINESIS
	db 1, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 26, RECOVER
	db 31, FUTURE_SIGHT
	db 38, PSYCHIC_M
	db 45, REFLECT
endc
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TELEPORT
	db 1, KINESIS
	db 1, CONFUSION
	db 16, KINESIS
	db 18, DISABLE
	db 21, PSYBEAM
	db 26, REFLECT
	db 30, RECOVER
	db 38, PSYCHIC_M,
	db 43, FUTURE_SIGHT
else
	db 1, TELEPORT
	db 1, KINESIS
	db 1, CONFUSION
	db 16, CONFUSION
	db 18, DISABLE
	db 21, PSYBEAM
	db 26, RECOVER
	db 31, FUTURE_SIGHT
	db 38, PSYCHIC_M
	db 45, REFLECT
endc
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, LOW_KICK
	db 1, LEER
	db 3, FOCUS_ENERGY
	db 7, KARATE_CHOP
	db 12, FORESIGHT
	db 15, SEISMIC_TOSS
	db 21, FAINT_ATTACK
	db 25, VITAL_THROW
	db 27, JUMP_KICK
	db 33, SUBMISSION
	db 37, MEDITATE
	db 39, CROSS_CHOP
	db 43, SCARY_FACE
	db 45, DYNAMICPUNCH
	db 52, DOUBLE_EDGE
else
	db 1, LOW_KICK
	db 1, LEER
	db 7, FOCUS_ENERGY
	db 13, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 25, FORESIGHT
	db 31, VITAL_THROW
	db 37, CROSS_CHOP
	db 43, SCARY_FACE
	db 49, SUBMISSION
endc
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_ITEM, LINK_CABLE, MACHAMP
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 3, FOCUS_ENERGY
	db 7, KARATE_CHOP
	db 12, FORESIGHT
	db 15, SEISMIC_TOSS
	db 21, FAINT_ATTACK
	db 25, VITAL_THROW
	db 27, JUMP_KICK
	db 37, SUBMISSION
	db 43, MEDITATE
	db 47, CROSS_CHOP
	db 53, SCARY_FACE
	db 57, DYNAMICPUNCH
	db 62, DOUBLE_EDGE
else
	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 8, FOCUS_ENERGY
	db 15, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 25, FORESIGHT
	db 34, VITAL_THROW
	db 43, CROSS_CHOP
	db 52, SCARY_FACE
	db 61, SUBMISSION
endc
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, STRENGTH
	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 3, FOCUS_ENERGY
	db 7, KARATE_CHOP
	db 12, FORESIGHT
	db 15, SEISMIC_TOSS
	db 21, FAINT_ATTACK
	db 25, VITAL_THROW
	db 27, JUMP_KICK
	db 37, SUBMISSION
	db 43, MEDITATE
	db 47, CROSS_CHOP
	db 53, SCARY_FACE
	db 57, DYNAMICPUNCH
	db 62, DOUBLE_EDGE
else
	db 1, LOW_KICK
	db 1, LEER
	db 1, FOCUS_ENERGY
	db 8, FOCUS_ENERGY
	db 15, KARATE_CHOP
	db 19, SEISMIC_TOSS
	db 25, FORESIGHT
	db 34, VITAL_THROW
	db 43, CROSS_CHOP
	db 52, SCARY_FACE
	db 61, SUBMISSION
endc
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, VINE_WHIP
	db 7, GROWTH
	db 11, WRAP
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 23, ACID
	db 27, FAINT_ATTACK
	db 30, SWEET_SCENT
	db 35, SLUDGE
	db 39, RAZOR_LEAF
	db 45, SLAM
else
	db 1, VINE_WHIP
	db 6, GROWTH
	db 11, WRAP
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 23, ACID
	db 30, SWEET_SCENT
	db 37, RAZOR_LEAF
	db 45, SLAM
endc
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, VINE_WHIP
	db 1, GROWTH
	db 1, WRAP
	db 7, GROWTH
	db 11, WRAP
	db 13, SLEEP_POWDER
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 24, ACID
	db 29, FAINT_ATTACK
	db 32, SWEET_SCENT
	db 39, SLUDGE
	db 44, RAZOR_LEAF
	db 52, SLAM
else
	db 1, VINE_WHIP
	db 1, GROWTH
	db 1, WRAP
	db 6, GROWTH
	db 11, WRAP
	db 15, SLEEP_POWDER
	db 17, POISONPOWDER
	db 19, STUN_SPORE
	db 24, ACID
	db 33, SWEET_SCENT
	db 42, RAZOR_LEAF
	db 54, SLAM
endc
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, VINE_WHIP
	db 1, SLEEP_POWDER
	db 1, SWEET_SCENT
	db 1, RAZOR_LEAF
	db 1, SOLARBEAM
	db 10, GROWTH
	db 14, WRAP
	db 16, SLEEP_POWDER
	db 18, POISONPOWDER
	db 20, STUN_SPORE
	db 27, ACID
	db 32, FAINT_ATTACK
	db 35, SWEET_SCENT
	db 42, SLUDGE
	db 47, RAZOR_LEAF
	db 55, SLAM
else
	db 1, VINE_WHIP
	db 1, SLEEP_POWDER
	db 1, SWEET_SCENT
	db 1, RAZOR_LEAF
endc
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, POISON_STING
	db 4, SUPERSONIC
	db 7, CONSTRICT
	db 10, ACID
	db 13, SPIKES
	db 16, WATER_GUN
	db 19, WRAP
	db 22, ACID
	db 28, BARRIER
	db 31, SLUDGE_BOMB
	db 34, BUBBLEBEAM
	db 37, SCREECH
	db 40, NIGHT_SHADE
	db 46, HYDRO_PUMP
else
	db 1, POISON_STING
	db 6, SUPERSONIC
	db 12, CONSTRICT
	db 19, ACID
	db 25, BUBBLEBEAM
	db 30, WRAP
	db 36, BARRIER
	db 43, SCREECH
	db 49, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SUPERSONIC
	db 1, CONSTRICT
	db 1, ACID
	db 1, POISON_STING
	db 4, SUPERSONIC
	db 7, CONSTRICT
	db 10, ACID
	db 13, SPIKES
	db 16, WATER_GUN
	db 19, WRAP
	db 22, ACID
	db 28, BARRIER
	db 33, SLUDGE_BOMB
	db 37, BUBBLEBEAM
	db 40, SCREECH
	db 43, NIGHT_SHADE
	db 49, HYDRO_PUMP
else
	db 1, POISON_STING
	db 1, SUPERSONIC
	db 1, CONSTRICT
	db 6, SUPERSONIC
	db 12, CONSTRICT
	db 19, ACID
	db 25, BUBBLEBEAM
	db 30, WRAP
	db 38, BARRIER
	db 47, SCREECH
	db 55, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 10, ROLLOUT
	db 16, MAGNITUDE
	db 22, SELFDESTRUCT
	db 27, SPIKES
	db 31, ROCK_THROW
	db 36, EARTHQUAKE
	db 41, EXPLOSION
else
	db 1, TACKLE
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, SELFDESTRUCT
	db 26, HARDEN
	db 31, ROLLOUT
	db 36, EARTHQUAKE
	db 41, EXPLOSION
endc
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_ITEM, LINK_CABLE, GOLEM
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, ROCK_THROW
	db 10, ROLLOUT
	db 17, MAGNITUDE
	db 24, SELFDESTRUCT
	db 30, SPIKES
	db 35, ROCK_THROW
	db 40, EARTHQUAKE
	db 44, EXPLOSION
	db 50, DOUBLE_EDGE
else
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, ROCK_THROW
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, SELFDESTRUCT
	db 27, HARDEN
	db 34, ROLLOUT
	db 41, EARTHQUAKE
	db 48, EXPLOSION
endc
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, ROCK_THROW
	db 10, ROLLOUT
	db 17, MAGNITUDE
	db 24, SELFDESTRUCT
	db 30, SPIKES
	db 35, ROCK_THROW
	db 40, EARTHQUAKE
	db 44, EXPLOSION
	db 50, DOUBLE_EDGE
else
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, ROCK_THROW
	db 1, MAGNITUDE
	db 6, DEFENSE_CURL
	db 11, ROCK_THROW
	db 16, MAGNITUDE
	db 21, SELFDESTRUCT
	db 27, HARDEN
	db 34, ROLLOUT
	db 41, EARTHQUAKE
	db 48, EXPLOSION
endc
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, GROWL
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 9, EMBER
	db 13, FLAME_WHEEL
	db 18, STOMP
	db 24, FIRE_SPIN
	db 29, TAKE_DOWN
	db 33, FLAMETHROWER
	db 37, AGILITY
	db 41, FIRE_BLAST
	db 45, DRILL_PECK
	db 50, SUNNY_DAY
else
	db 1, TACKLE
	db 4, GROWL
	db 8, TAIL_WHIP
	db 13, EMBER
	db 19, STOMP
	db 26, FIRE_SPIN
	db 34, TAKE_DOWN
	db 43, AGILITY
	db 53, FIRE_BLAST
endc
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, FURY_ATTACK
	db 1, GROWL
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 9, EMBER
	db 13, FLAME_WHEEL
	db 18, STOMP
	db 24, FIRE_SPIN
	db 29, TAKE_DOWN
	db 33, FLAMETHROWER
	db 37, AGILITY
	db 44, FIRE_BLAST
	db 48, DRILL_PECK
	db 55, SUNNY_DAY
else
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, EMBER
	db 4, GROWL
	db 8, TAIL_WHIP
	db 13, EMBER
	db 19, STOMP
	db 26, FIRE_SPIN
	db 34, TAKE_DOWN
	db 40, FURY_ATTACK
	db 47, AGILITY
	db 61, FIRE_BLAST
endc
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 37, SLOWBRO
	db EVOLVE_TRADE, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, CURSE
	db 1, TACKLE
	db 5, GROWL
	db 9, WATER_GUN
	db 14, CONFUSION
	db 19, DISABLE
	db 23, HEADBUTT
	db 28, BUBBLEBEAM
	db 32, PSYBEAM
	db 39, AMNESIA
	db 46, RAIN_DANCE
	db 50, PSYCH_UP
else
	db 1, CURSE
	db 1, TACKLE
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 43, AMNESIA
	db 48, PSYCHIC_M
endc
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, WITHDRAW
	db 1, CURSE
	db 1, TACKLE
	db 1, GROWL
	db 5, GROWL
	db 9, WATER_GUN
	db 14, CONFUSION
	db 19, DISABLE
	db 23, HEADBUTT
	db 28, BUBBLEBEAM
	db 32, PSYBEAM
	db 43, AMNESIA
	db 50, RAIN_DANCE
	db 55, PSYCH_UP
	db 60, PSYCHIC_M
else
	db 1, CURSE
	db 1, TACKLE
	db 1, GROWL
	db 1, WATER_GUN
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 37, WITHDRAW
	db 46, AMNESIA
	db 54, PSYCHIC_M
endc
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SUPERSONIC
	db 1, TACKLE
	db 5, THUNDERSHOCK
	db 7, THUNDER_WAVE
	db 12, LIGHT_SCREEN
	db 16, SONICBOOM
	db 20, SPARK
	db 26, LOCK_ON
	db 33, SWIFT
	db 39, SCREECH
	db 45, ZAP_CANNON
else
	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 16, SONICBOOM
	db 21, THUNDER_WAVE
	db 27, LOCK_ON
	db 33, SWIFT
	db 39, SCREECH
	db 45, ZAP_CANNON
endc
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TRI_ATTACK
	db 1, ZAP_CANNON
	db 1, SUPERSONIC
	db 1, TACKLE
	db 1, THUNDERSHOCK
	db 5, THUNDERSHOCK
	db 7, THUNDER_WAVE
	db 12, LIGHT_SCREEN
	db 16, SONICBOOM
	db 20, SPARK
	db 26, LOCK_ON
	db 35, SWIFT
	db 41, SCREECH
	db 48, ZAP_CANNON
else
	db 1, TACKLE
	db 1, THUNDERSHOCK
	db 1, SUPERSONIC
	db 1, SONICBOOM
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 16, SONICBOOM
	db 21, THUNDER_WAVE
	db 27, LOCK_ON
	db 35, TRI_ATTACK
	db 43, SCREECH
	db 53, ZAP_CANNON
endc
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, AEROBLAST
	db 1, SLUDGE
	db 1, PECK
	db 1, SAND_ATTACK
	db 1, LEER
	db 1, FURY_CUTTER
	db 7, FURY_ATTACK
	db 9, GUST
	db 13, PURSUIT
	db 19, CUT
	db 21, WING_ATTACK
	db 25, SWORDS_DANCE
	db 31, AGILITY
	db 33, CRUNCH
	db 37, FLY
	db 43, FAINT_ATTACK
	db 45, FALSE_SWIPE
	db 50, AEROBLAST
else
	db 1, PECK
	db 7, SAND_ATTACK
	db 13, LEER
	db 19, FURY_ATTACK
	db 25, SWORDS_DANCE
	db 31, AGILITY
	db 37, SLASH
	db 44, FALSE_SWIPE
endc
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, PECK
	db 1, GROWL
	db 5, QUICK_ATTACK
	db 8, RAGE
	db 12, FURY_ATTACK
	db 15, PURSUIT
	db 19, GUST
	db 22, HEADBUTT
	db 27, AGILITY
	db 35, SWORDS_DANCE
	db 40, JUMP_KICK
	db 45, DRILL_PECK
	db 50, THRASH
else
	db 1, PECK
	db 1, GROWL
	db 9, PURSUIT
	db 13, FURY_ATTACK
	db 21, TRI_ATTACK
	db 25, RAGE
	db 33, DRILL_PECK
	db 37, AGILITY
endc
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TRI_ATTACK
	db 1, PECK
	db 1, GROWL
	db 1, QUICK_ATTACK
	db 1, RAGE
	db 5, QUICK_ATTACK
	db 8, RAGE
	db 12, FURY_ATTACK
	db 15, PURSUIT
	db 19, GUST
	db 22, HEADBUTT
	db 27, AGILITY
	db 38, SWORDS_DANCE
	db 43, JUMP_KICK
	db 48, DRILL_PECK
	db 55, THRASH
else
	db 1, PECK
	db 1, GROWL
	db 1, PURSUIT
	db 1, FURY_ATTACK
	db 9, PURSUIT
	db 13, FURY_ATTACK
	db 21, TRI_ATTACK
	db 25, RAGE
	db 38, DRILL_PECK
	db 47, AGILITY
endc
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, HEADBUTT
	db 3, GROWL
	db 10, ICY_WIND
	db 13, ENCORE
	db 17, POWDER_SNOW
	db 21, REST
	db 23, RECOVER
	db 27, AURORA_BEAM
	db 32, BUBBLEBEAM
	db 37, TAKE_DOWN
	db 42, WATERFALL
	db 47, ICE_BEAM
	db 51, SAFEGUARD
else
	db 1, HEADBUTT
	db 5, GROWL
	db 16, AURORA_BEAM
	db 21, REST
	db 32, TAKE_DOWN
	db 37, ICE_BEAM
	db 48, SAFEGUARD
endc
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, HEADBUTT
	db 3, GROWL
	db 10, ICY_WIND
	db 13, ENCORE
	db 17, POWDER_SNOW
	db 21, REST
	db 23, RECOVER
	db 27, AURORA_BEAM
	db 32, BUBBLEBEAM
	db 40, TAKE_DOWN
	db 45, WATERFALL
	db 49, ICE_BEAM
	db 55, SAFEGUARD
else
	db 1, HEADBUTT
	db 1, GROWL
	db 1, AURORA_BEAM
	db 5, GROWL
	db 16, AURORA_BEAM
	db 21, REST
	db 32, TAKE_DOWN
	db 43, ICE_BEAM
	db 60, SAFEGUARD
endc
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, POUND
	db 1, POISON_GAS
	db 4, HARDEN
	db 7, MUD_SLAP
	db 12, DISABLE
	db 15, SLUDGE
	db 18, MAGNITUDE
	db 21, MINIMIZE
	db 26, HEADBUTT
	db 29, SLUDGE_BOMB
	db 32, SMOG
	db 37, SCREECH
	db 42, ACID_ARMOR
	db 47, PURSUIT
else
	db 1, POISON_GAS
	db 1, POUND
	db 5, HARDEN
	db 10, DISABLE
	db 16, SLUDGE
	db 23, MINIMIZE
	db 31, SCREECH
	db 40, ACID_ARMOR
	db 50, SLUDGE_BOMB
endc
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	; moves are not sorted by level
if DEF(_CRYSTAL11_HACK)
	db 1, POUND
	db 1, POISON_GAS
	db 4, HARDEN
	db 7, MUD_SLAP
	db 12, DISABLE
	db 15, SLUDGE
	db 18, MAGNITUDE
	db 21, MINIMIZE
	db 26, HEADBUTT
	db 29, SLUDGE_BOMB
	db 32, SMOG
	db 37, SCREECH
	db 45, ACID_ARMOR
	db 50, PURSUIT
else
	db 1, POISON_GAS
	db 1, POUND
	db 1, HARDEN
	db 33, HARDEN
	db 37, DISABLE
	db 45, SLUDGE
	db 23, MINIMIZE
	db 31, SCREECH
	db 45, ACID_ARMOR
	db 60, SLUDGE_BOMB
endc
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, WATER_GUN
	db 4, WITHDRAW
	db 8, SUPERSONIC
	db 13, POWDER_SNOW
	db 17, PROTECT
	db 22, SCREECH
	db 27, ICY_WIND
	db 32, BUBBLEBEAM
	db 37, AURORA_BEAM
	db 40, WHIRLPOOL
	db 44, WATERFALL
	db 49, BARRIER
	db 52, ICE_BEAM
	db 58, HYDRO_PUMP
else
	db 1, TACKLE
	db 1, WITHDRAW
	db 9, SUPERSONIC
	db 17, AURORA_BEAM
	db 25, PROTECT
	db 33, LEER
	db 41, CLAMP
	db 49, ICE_BEAM
endc
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, HYDRO_PUMP
	db 1, SPIKES
	db 1, SUPERSONIC
	db 1, PROTECT
	db 1, AURORA_BEAM
	db 1, TACKLE
	db 1, WATER_GUN
	db 7, WITHDRAW
	db 11, SUPERSONIC
	db 16, POWDER_SNOW
	db 20, PROTECT
	db 25, SCREECH
	db 28, SPIKES
	db 30, ICY_WIND
	db 35, BUBBLEBEAM
	db 40, AURORA_BEAM
	db 43, WHIRLPOOL
	db 47, WATERFALL
	db 52, BARRIER
	db 55, ICE_BEAM
	db 61, HYDRO_PUMP
else
	db 1, WITHDRAW
	db 1, SUPERSONIC
	db 1, AURORA_BEAM
	db 1, PROTECT
	db 33, SPIKES
	db 41, SPIKE_CANNON
endc
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, HYPNOSIS
	db 1, LICK
	db 5, SPITE
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 22, BITE
	db 27, SHADOW_BALL
	db 33, DREAM_EATER
	db 38, CRUNCH
	db 40, DESTINY_BOND
	db 47, NIGHTMARE
else
	db 1, HYPNOSIS
	db 1, LICK
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 28, CONFUSE_RAY
	db 33, DREAM_EATER
	db 36, DESTINY_BOND
endc
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_ITEM, LINK_CABLE, GENGAR
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, HYPNOSIS
	db 1, LICK
	db 1, SPITE
	db 1, SPITE
	db 5, SPITE
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 22, BITE
	db 30, SHADOW_BALL
	db 39, DREAM_EATER
	db 45, CRUNCH
	db 50, DESTINY_BOND
else
	db 1, HYPNOSIS
	db 1, LICK
	db 1, SPITE
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 31, CONFUSE_RAY
	db 39, DREAM_EATER
	db 48, DESTINY_BOND
endc
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, HYPNOSIS
	db 1, LICK
	db 1, SPITE
	db 1, SPITE
	db 5, SPITE
	db 8, MEAN_LOOK
	db 12, CURSE
	db 15, NIGHT_SHADE
	db 19, CONFUSE_RAY
	db 22, BITE
	db 30, SHADOW_BALL
	db 39, DREAM_EATER
	db 45, CRUNCH
	db 50, DESTINY_BOND
else
	db 1, HYPNOSIS
	db 1, LICK
	db 1, SPITE
	db 8, SPITE
	db 13, MEAN_LOOK
	db 16, CURSE
	db 21, NIGHT_SHADE
	db 31, CONFUSE_RAY
	db 39, DREAM_EATER
	db 48, DESTINY_BOND
endc
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_TRADE, METAL_COAT, STEELIX
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, MUD_SLAP
	db 1, TACKLE
	db 1, HARDEN
	db 1, BIND
	db 4, CURSE
	db 9, ROCK_THROW
	db 13, RAGE
	db 17, SPIKES
	db 22, DRAGONBREATH
	db 28, SLAM
	db 31, SCREECH
	db 34, ROCK_SLIDE
	db 40, IRON_TAIL
	db 43, DIG
	db 49, DOUBLE_EDGE
	db 52, SANDSTORM
else
	db 1, TACKLE
	db 1, SCREECH
	db 10, BIND
	db 14, ROCK_THROW
	db 23, HARDEN
	db 27, RAGE
	db 36, SANDSTORM
	db 40, SLAM
endc
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, POUND
	db 1, HYPNOSIS
	db 5, DISABLE
	db 9, CONFUSION
	db 13, HEADBUTT
	db 17, POISON_GAS
	db 21, MEDITATE
	db 25, PSYBEAM
	db 29, MACH_PUNCH
	db 33, PSYCH_UP
	db 39, SWAGGER
	db 45, PSYCHIC_M
	db 52, FUTURE_SIGHT
else
	db 1, POUND
	db 1, HYPNOSIS
	db 10, DISABLE
	db 18, CONFUSION
	db 25, HEADBUTT
	db 31, POISON_GAS
	db 36, MEDITATE
	db 40, PSYCHIC_M
	db 43, PSYCH_UP
	db 45, FUTURE_SIGHT
endc
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, FUTURE_SIGHT
	db 1, GROWTH
	db 1, NIGHTMARE
	db 1, POUND
	db 1, HYPNOSIS
	db 1, DISABLE
	db 1, CONFUSION
	db 5, DISABLE
	db 9, CONFUSION
	db 13, HEADBUTT
	db 17, POISON_GAS
	db 21, MEDITATE
	db 25, PSYBEAM
	db 29, MACH_PUNCH
	db 33, PSYCH_UP
	db 40, SWAGGER
	db 47, PSYCHIC_M
	db 55, FUTURE_SIGHT
else
	db 1, POUND
	db 1, HYPNOSIS
	db 1, DISABLE
	db 1, CONFUSION
	db 10, DISABLE
	db 18, CONFUSION
	db 25, HEADBUTT
	db 33, POISON_GAS
	db 40, MEDITATE
	db 49, PSYCHIC_M
	db 55, PSYCH_UP
	db 60, FUTURE_SIGHT
endc
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, BUBBLE
	db 5, VICEGRIP
	db 9, LEER
	db 11, HARDEN
	db 15, BUBBLEBEAM
	db 19, MUD_SLAP
	db 21, METAL_CLAW
	db 25, STOMP
	db 29, PROTECT
	db 31, GUILLOTINE
	db 35, SLAM
	db 39, WATERFALL
	db 41, CRABHAMMER
	db 45, FLAIL
else
	db 1, BUBBLE
	db 5, LEER
	db 12, VICEGRIP
	db 16, HARDEN
	db 23, STOMP
	db 27, GUILLOTINE
	db 34, PROTECT
	db 41, CRABHAMMER
endc
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, BUBBLE
	db 1, VICEGRIP
	db 1, LEER
	db 1, MUD_SLAP
	db 5, VICEGRIP
	db 9, LEER
	db 11, HARDEN
	db 15, BUBBLEBEAM
	db 19, MUD_SLAP
	db 21, METAL_CLAW
	db 25, STOMP
	db 32, PROTECT
	db 34, GUILLOTINE
	db 38, SLAM
	db 42, WATERFALL
	db 46, CRABHAMMER
	db 52, FLAIL
else
	db 1, BUBBLE
	db 1, LEER
	db 1, VICEGRIP
	db 5, LEER
	db 12, VICEGRIP
	db 16, HARDEN
	db 23, STOMP
	db 27, GUILLOTINE
	db 38, PROTECT
	db 49, CRABHAMMER
endc
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 4, SONICBOOM
	db 9, SPARK
	db 11, ROLLOUT
	db 13, SCREECH
	db 16, THUNDERSHOCK
	db 20, SWIFT
	db 25, SELFDESTRUCT
	db 29, LIGHT_SCREEN
	db 34, BARRIER
	db 38, THUNDERBOLT
	db 42, EXPLOSION
	db 50, MIRROR_COAT
else
	db 1, TACKLE
	db 9, SCREECH
	db 17, SONICBOOM
	db 23, SELFDESTRUCT
	db 29, ROLLOUT
	db 33, LIGHT_SCREEN
	db 37, SWIFT
	db 39, EXPLOSION
	db 41, MIRROR_COAT
endc
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 4, SONICBOOM
	db 9, SPARK
	db 11, ROLLOUT
	db 13, SCREECH
	db 16, THUNDERSHOCK
	db 20, SWIFT
	db 25, SELFDESTRUCT
	db 29, LIGHT_SCREEN
	db 37, BARRIER
	db 42, THUNDERBOLT
	db 48, EXPLOSION
	db 56, MIRROR_COAT
else
	db 1, TACKLE
	db 1, SCREECH
	db 1, SONICBOOM
	db 1, SELFDESTRUCT
	db 9, SCREECH
	db 17, SONICBOOM
	db 23, SELFDESTRUCT
	db 29, ROLLOUT
	db 34, LIGHT_SCREEN
	db 40, SWIFT
	db 44, EXPLOSION
	db 48, MIRROR_COAT
endc
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, BARRAGE
	db 1, HYPNOSIS
	db 7, REFLECT
	db 11, LEECH_SEED
	db 17, RAZOR_LEAF
	db 19, STUN_SPORE
	db 21, POISONPOWDER
	db 23, SLEEP_POWDER
	db 27, CONFUSION
	db 33, RECOVER
	db 40, SOLARBEAM
	db 47, PSYCHIC_M
else
	db 1, BARRAGE
	db 1, HYPNOSIS
	db 7, REFLECT
	db 13, LEECH_SEED
	db 19, CONFUSION
	db 25, STUN_SPORE
	db 31, POISONPOWDER
	db 37, SLEEP_POWDER
	db 43, SOLARBEAM
endc
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, PSYCHIC_M
	db 1, STOMP
	db 1, BARRAGE
	db 1, HYPNOSIS
	db 10, REFLECT
	db 14, LEECH_SEED
	db 20, RAZOR_LEAF
	db 22, STUN_SPORE
	db 24, POISONPOWDER
	db 27, SLEEP_POWDER
	db 32, CONFUSION
	db 36, RECOVER
	db 44, SOLARBEAM
	db 55, PETAL_DANCE
else
	db 1, BARRAGE
	db 1, HYPNOSIS
	db 1, CONFUSION
	db 19, STOMP
	db 31, EGG_BOMB
endc
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, GROWL
	db 3, TAIL_WHIP
	db 7, BONE_CLUB
	db 11, HEADBUTT
	db 13, LEER
	db 17, FOCUS_ENERGY
	db 21, BONEMERANG
	db 23, RAGE
	db 27, FALSE_SWIPE
	db 31, THRASH
	db 34, BITE
	db 38, MAGNITUDE
	db 42, ENDURE
	db 44, DOUBLE_EDGE
	db 50, BONE_RUSH
else
	db 1, GROWL
	db 5, TAIL_WHIP
	db 9, BONE_CLUB
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 29, RAGE
	db 33, FALSE_SWIPE
	db 37, THRASH
	db 41, BONE_RUSH
endc
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, GROWL
	db 3, TAIL_WHIP
	db 7, BONE_CLUB
	db 11, HEADBUTT
	db 13, LEER
	db 17, FOCUS_ENERGY
	db 21, BONEMERANG
	db 23, RAGE
	db 27, FALSE_SWIPE
	db 34, THRASH
	db 37, BITE
	db 42, MAGNITUDE
	db 47, ENDURE
	db 50, DOUBLE_EDGE
	db 53, BONE_RUSH
else
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, BONE_CLUB
	db 1, HEADBUTT
	db 5, TAIL_WHIP
	db 9, BONE_CLUB
	db 13, HEADBUTT
	db 17, LEER
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 32, RAGE
	db 39, FALSE_SWIPE
	db 46, THRASH
	db 53, BONE_RUSH
endc
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, DOUBLE_KICK
	db 1, REVERSAL
	db 1, CROSS_CHOP
	db 1, MEGA_KICK
	db 1, MEDITATE
	db 1, ROLLING_KICK
	db 1, JUMP_KICK
	db 5, MEDITATE
	db 9, ROLLING_KICK
	db 13, JUMP_KICK
	db 17, ROCK_SMASH
	db 22, FOCUS_ENERGY
	db 27, HI_JUMP_KICK
	db 33, MIND_READER
	db 37, FORESIGHT
	db 43, FIRE_SPIN
	db 48, ENDURE
	db 53, MEGA_KICK
	db 57, CROSS_CHOP
	db 61, REVERSAL
else
	db 1, DOUBLE_KICK
	db 6, MEDITATE
	db 11, ROLLING_KICK
	db 16, JUMP_KICK
	db 21, FOCUS_ENERGY
	db 26, HI_JUMP_KICK
	db 31, MIND_READER
	db 36, FORESIGHT
	db 41, ENDURE
	db 46, MEGA_KICK
	db 51, REVERSAL
endc
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, COMET_PUNCH
	db 1, CROSS_CHOP
	db 1, COUNTER
	db 1, AGILITY
	db 1, PURSUIT
	db 1, MACH_PUNCH
	db 1, VITAL_THROW
	db 6, AGILITY
	db 11, PURSUIT
	db 16, MACH_PUNCH
	db 21, FOCUS_ENERGY
	db 26, VITAL_THROW
	db 31, BARRIER
	db 36, THUNDERPUNCH
	db 36, ICE_PUNCH
	db 36, FIRE_PUNCH
	db 41, SUBMISSION
	db 46, MEGA_PUNCH
	db 50, DETECT
	db 56, CROSS_CHOP
	db 61, COUNTER
else
	db 1, COMET_PUNCH
	db 7, AGILITY
	db 13, PURSUIT
	db 26, THUNDERPUNCH
	db 26, ICE_PUNCH
	db 26, FIRE_PUNCH
	db 32, MACH_PUNCH
	db 38, MEGA_PUNCH
	db 44, DETECT
	db 50, COUNTER
endc
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, LICK
	db 5, SUPERSONIC
	db 9, DEFENSE_CURL
	db 13, THIEF
	db 17, WRAP
	db 21, STOMP
	db 25, DISABLE
	db 29, SLAM
	db 33, ROLLOUT
	db 37, BODY_SLAM
	db 43, RECOVER
	db 49, SCREECH
	db 53, PETAL_DANCE
else
	db 1, LICK
	db 7, SUPERSONIC
	db 13, DEFENSE_CURL
	db 19, STOMP
	db 25, WRAP
	db 31, DISABLE
	db 37, SLAM
	db 43, SCREECH
endc
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, POISON_GAS
	db 1, TACKLE
	db 4, SMOG
	db 7, SMOKESCREEN
	db 12, FAINT_ATTACK
	db 17, SLUDGE
	db 23, SELFDESTRUCT
	db 26, HAZE
	;db 29, GYRO_BALL
	db 34, SLUDGE_BOMB
	db 37, EXPLOSION
	db 40, DESTINY_BOND
	db 45, PURSUIT
else
	db 1, POISON_GAS
	db 1, TACKLE
	db 9, SMOG
	db 17, SELFDESTRUCT
	db 21, SLUDGE
	db 25, SMOKESCREEN
	db 33, HAZE
	db 41, EXPLOSION
	db 45, DESTINY_BOND
endc
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, POISON_GAS
	db 1, TACKLE
	db 4, SMOG
	db 7, SMOKESCREEN
	db 12, FAINT_ATTACK
	db 17, SLUDGE
	db 23, SELFDESTRUCT
	db 26, HAZE
	;db 29, GYRO_BALL
	db 34, SLUDGE_BOMB
	db 40, EXPLOSION
	db 43, DESTINY_BOND
	db 48, PURSUIT
else
	db 1, POISON_GAS
	db 1, TACKLE
	db 1, SMOG
	db 1, SELFDESTRUCT
	db 9, SMOG
	db 17, SELFDESTRUCT
	db 21, SLUDGE
	db 25, SMOKESCREEN
	db 33, HAZE
	db 44, EXPLOSION
	db 51, DESTINY_BOND
endc
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 1, FURY_ATTACK
	db 1, SCARY_FACE
	db 5, FURY_ATTACK
	db 9, SCARY_FACE
	db 13, ROCK_THROW
	db 17, STOMP
	db 21, MAGNITUDE
	db 25, SLAM
	db 29, ANCIENTPOWER
	db 33, DRILL_PECK
	db 37, TAKE_DOWN
	db 41, ROCK_SLIDE
	db 45, EARTHQUAKE
	db 49, LEECH_LIFE
	db 53, HORN_DRILL
else
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 13, STOMP
	db 19, FURY_ATTACK
	db 31, SCARY_FACE
	db 37, HORN_DRILL
	db 49, TAKE_DOWN
	db 55, EARTHQUAKE
endc
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 1, FURY_ATTACK
	db 1, SCARY_FACE
	db 5, FURY_ATTACK
	db 9, SCARY_FACE
	db 13, ROCK_THROW
	db 17, STOMP
	db 21, MAGNITUDE
	db 25, SLAM
	db 29, ANCIENTPOWER
	db 33, DRILL_PECK
	db 37, TAKE_DOWN
	db 46, ROCK_SLIDE
	db 50, EARTHQUAKE
	db 55, LEECH_LIFE
	db 62, HORN_DRILL
else
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 1, STOMP
	db 1, FURY_ATTACK
	db 13, STOMP
	db 19, FURY_ATTACK
	db 31, SCARY_FACE
	db 37, HORN_DRILL
	db 54, TAKE_DOWN
	db 65, EARTHQUAKE
endc
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, DEFENSE_CURL
	db 1, DOUBLE_EDGE
	db 1, GROWL
	db 1, POUND
	db 5, TAIL_WHIP
	db 9, SAFEGUARD
	db 12, DOUBLESLAP
	db 16, SOFTBOILED
	db 21, MINIMIZE
	db 26, TAKE_DOWN
	db 31, SING
	db 35, PURSUIT
	db 39, RECOVER
	db 44, EGG_BOMB
	db 50, LIGHT_SCREEN
	db 55, DOUBLE_EDGE
else
	db 1, POUND
	db 5, GROWL
	db 9, TAIL_WHIP
	db 13, SOFTBOILED
	db 17, DOUBLESLAP
	db 23, MINIMIZE
	db 29, SING
	db 35, EGG_BOMB
	db 41, DEFENSE_CURL
	db 49, LIGHT_SCREEN
	db 57, DOUBLE_EDGE
endc
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, LEECH_SEED
	db 1, CONSTRICT
	db 4, SLEEP_POWDER
	db 7, VINE_WHIP
	db 10, ABSORB
	db 14, POISONPOWDER
	db 17, BIND
	db 20, GROWTH
	db 23, MEGA_DRAIN
	db 27, THIEF
	db 30, STUN_SPORE
	db 33, SYNTHESIS
	db 36, GIGA_DRAIN
	db 38, ANCIENTPOWER
	db 41, SLAM
	db 44, CHARM
	db 48, SUNNY_DAY
	db 54, PETAL_DANCE
else
	db 1, CONSTRICT
	db 4, SLEEP_POWDER
	db 10, ABSORB
	db 13, POISONPOWDER
	db 19, VINE_WHIP
	db 25, BIND
	db 31, MEGA_DRAIN
	db 34, STUN_SPORE
	db 40, SLAM
	db 46, GROWTH
endc
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, COMET_PUNCH
	db 1, LEER
	db 8, TAIL_WHIP
	db 13, BITE
	db 19, DOUBLESLAP
	db 22, RAGE
	db 25, MEGA_PUNCH
	db 31, DIZZY_PUNCH
	db 37, PURSUIT
	db 43, ENDURE
	db 46, DRAGON_RAGE
	db 49, CRUNCH
	db 53, REVERSAL
else
	db 1, COMET_PUNCH
	db 7, LEER
	db 13, BITE
	db 19, TAIL_WHIP
	db 25, MEGA_PUNCH
	db 31, RAGE
	db 37, ENDURE
	db 43, DIZZY_PUNCH
	db 49, REVERSAL
endc
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, BUBBLE
	db 5, SMOKESCREEN
	db 9, LEER
	db 13, WATER_GUN
	db 17, TWISTER
	db 21, BUBBLEBEAM
	db 26, FOCUS_ENERGY
	db 31, WATERFALL
	db 36, AGILITY
	db 42, DRAGONBREATH
	db 50, HYDRO_PUMP
else
	db 1, BUBBLE
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 36, AGILITY
	db 43, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_TRADE, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, HYDRO_PUMP
	db 1, BUBBLE
	db 1, SMOKESCREEN
	db 1, LEER
	db 5, SMOKESCREEN
	db 9, LEER
	db 13, WATER_GUN
	db 17, TWISTER
	db 21, BUBBLEBEAM
	db 26, FOCUS_ENERGY
	db 31, WATERFALL
	db 38, AGILITY
	db 46, DRAGONBREATH
	db 55, HYDRO_PUMP
else
	db 1, BUBBLE
	db 1, SMOKESCREEN
	db 1, LEER
	db 1, WATER_GUN
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 40, AGILITY
	db 51, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, PECK
	db 1, TAIL_WHIP
	db 5, SUPERSONIC
	db 8, HORN_ATTACK
	db 13, FLAIL
	db 18, BUBBLEBEAM
	db 22, FURY_ATTACK
	db 27, AGILITY
	db 32, WATERFALL
	db 37, HORN_DRILL
	db 42, LEECH_LIFE
	db 50, RAIN_DANCE
	db 55, HYDRO_PUMP
else
	db 1, PECK
	db 1, TAIL_WHIP
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 24, FLAIL
	db 29, FURY_ATTACK
	db 38, WATERFALL
	db 43, HORN_DRILL
	db 52, AGILITY
endc
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, MEGAHORN
	db 1, SLUDGE_BOMB
	db 1, PECK
	db 1, TAIL_WHIP
	db 1, SUPERSONIC
	db 5, SUPERSONIC
	db 8, HORN_ATTACK
	db 13, FLAIL
	db 18, BUBBLEBEAM
	db 22, FURY_ATTACK
	db 27, AGILITY
	db 32, WATERFALL
	db 40, HORN_DRILL
	db 45, LEECH_LIFE
	db 54, RAIN_DANCE
	db 58, HYDRO_PUMP
	db 62, MEGAHORN
else
	db 1, PECK
	db 1, TAIL_WHIP
	db 1, TAIL_WHIP
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 24, FLAIL
	db 29, FURY_ATTACK
	db 41, WATERFALL
	db 49, HORN_DRILL
	db 61, AGILITY
endc
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, HARDEN
	db 4, WATER_GUN
	db 7, RAPID_SPIN
	db 10, RECOVER
	db 13, PSYWAVE
	db 16, SWIFT
	db 18, BUBBLEBEAM
	db 23, REFLECT
	db 28, WATERFALL
	db 31, MINIMIZE
	db 35, BARRIER
	db 38, ANCIENTPOWER
	db 40, CONFUSE_RAY
	db 42, PSYCHIC_M
	db 46, LIGHT_SCREEN
	db 52, HYDRO_PUMP
else
	db 1, TACKLE
	db 1, HARDEN
	db 7, WATER_GUN
	db 13, RAPID_SPIN
	db 19, RECOVER
	db 25, SWIFT
	db 31, BUBBLEBEAM
	db 37, MINIMIZE
	db 43, LIGHT_SCREEN
	db 50, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, HYDRO_PUMP
	db 1, RAPID_SPIN
	db 1, RECOVER
	db 1, SWIFT
	db 1, TACKLE
	db 1, HARDEN
	db 4, WATER_GUN
	db 7, RAPID_SPIN
	db 10, RECOVER
	db 13, PSYWAVE
	db 16, SWIFT
	db 21, BUBBLEBEAM
	db 26, REFLECT
	db 31, WATERFALL
	db 34, MINIMIZE
	db 38, BARRIER
	db 41, ANCIENTPOWER
	db 44, CONFUSE_RAY
	db 47, PSYCHIC_M
	db 52, LIGHT_SCREEN
	db 57, HYDRO_PUMP
else
	db 1, TACKLE
	db 1, RAPID_SPIN
	db 1, RECOVER
	db 1, BUBBLEBEAM
	db 37, CONFUSE_RAY
endc
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, RAZOR_LEAF
	db 1, BARRIER
	db 1, POUND
	db 1, CONFUSION
	db 8, MEDITATE
	db 11, DOUBLESLAP
	db 15, MIMIC
	db 15, PSYWAVE
	db 18, ENCORE
	db 22, LIGHT_SCREEN
	db 22, REFLECT
	db 25, PSYBEAM
	db 29, SUBSTITUTE
	db 36, PSYCHIC_M
	db 44, BATON_PASS
	db 50, SAFEGUARD
else
	db 1, BARRIER
	db 6, CONFUSION
	db 11, SUBSTITUTE
	db 16, MEDITATE
	db 21, DOUBLESLAP
	db 26, LIGHT_SCREEN
	db 26, REFLECT
	db 31, ENCORE
	db 36, PSYBEAM
	db 41, BATON_PASS
	db 46, SAFEGUARD
endc
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_TRADE, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, QUICK_ATTACK
	db 1, LEER
	db 1, WING_ATTACK
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, FALSE_SWIPE
	db 17, AGILITY
	db 21, WING_ATTACK
	db 25, FURY_CUTTER
	db 29, SLASH
	db 33, RAZOR_WIND
	db 37, BARRIER
	db 41, LEECH_LIFE
	db 45, CRUNCH
	db 49, DOUBLE_KICK
	db 55, SWORDS_DANCE
else
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 24, AGILITY
	db 30, WING_ATTACK
	db 36, SLASH
	db 42, SWORDS_DANCE
	db 48, DOUBLE_TEAM
endc
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, GIGA_DRAIN
	db 1, PERISH_SONG
	db 1, POUND
	db 1, LICK
	db 1, LOVELY_KISS
	db 5, LICK
	db 8, LOVELY_KISS
	db 11, POWDER_SNOW
	db 15, DOUBLESLAP
	db 18, ICY_WIND
	db 21, PSYBEAM
	db 25, MEAN_LOOK
	db 28, SCREECH
	db 33, VITAL_THROW
	db 39, ICE_PUNCH
	db 44, BODY_SLAM
	db 52, PERISH_SONG
	db 60, BLIZZARD
else
	db 1, POUND
	db 1, LICK
	db 1, LOVELY_KISS
	db 1, POWDER_SNOW
	db 9, LOVELY_KISS
	db 13, POWDER_SNOW
	db 21, DOUBLESLAP
	db 25, ICE_PUNCH
	db 35, MEAN_LOOK
	db 41, BODY_SLAM
	db 51, PERISH_SONG
	db 57, BLIZZARD
endc
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, QUICK_ATTACK
	db 1, LEER
	db 1, THUNDERSHOCK
	db 5, THUNDERSHOCK
	db 8, LOW_KICK
	db 12, SWIFT
	db 15, SPARK
	db 20, THUNDER_WAVE
	db 25, LIGHT_SCREEN
	db 29, THUNDERPUNCH
	db 42, SCREECH
	db 50, THUNDERBOLT
	db 55, THUNDER
else
	db 1, QUICK_ATTACK
	db 1, LEER
	db 1, THUNDERPUNCH
	db 9, THUNDERPUNCH
	db 17, LIGHT_SCREEN
	db 25, SWIFT
	db 36, SCREECH
	db 47, THUNDERBOLT
	db 58, THUNDER
endc
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SMOG
	db 1, LEER
	db 1, EMBER
	db 5, EMBER
	db 8, SMOKESCREEN
	db 12, FAINT_ATTACK
	db 15, FIRE_SPIN
	db 19, HAZE
	db 24, CONFUSE_RAY
	db 29, FIRE_PUNCH
	db 42, SUNNY_DAY
	db 50, FLAMETHROWER
	db 55, FIRE_BLAST
else
	db 1, EMBER
	db 1, LEER
	db 1, SMOG
	db 1, FIRE_PUNCH
	db 7, LEER
	db 13, SMOG
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 33, SUNNY_DAY
	db 41, FLAMETHROWER
	db 49, CONFUSE_RAY
	db 57, FIRE_BLAST
endc
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, VICEGRIP
	db 1, FOCUS_ENERGY
	db 4, BIND
	db 8, SEISMIC_TOSS
	db 11, HARDEN
	db 16, VITAL_THROW
	db 23, DOUBLE_KICK
	db 27, LEECH_LIFE
	db 32, SUBMISSION
	db 40, SWORDS_DANCE
	db 43, THRASH
	db 50, GUILLOTINE
else
	db 1, VICEGRIP
	db 7, FOCUS_ENERGY
	db 13, BIND
	db 19, SEISMIC_TOSS
	db 25, HARDEN
	db 31, GUILLOTINE
	db 37, SUBMISSION
	db 43, SWORDS_DANCE
endc
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 3, TAIL_WHIP
	db 5, RAGE
	db 8, HORN_ATTACK
	db 11, SCARY_FACE
	db 15, PURSUIT
	db 19, REST
	db 24, BITE
	db 29, FOCUS_ENERGY
	db 35, TAKE_DOWN
	db 41, PSYBEAM
	db 48, SWAGGER
	db 55, THRASH
	db 63, DOUBLE_EDGE
else
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 8, RAGE
	db 13, HORN_ATTACK
	db 19, SCARY_FACE
	db 26, PURSUIT
	db 34, REST
	db 43, THRASH
	db 53, TAKE_DOWN
endc
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 15, TACKLE
	db 30, FLAIL
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, BITE
	db 1, THRASH
	db 21, LEER
	db 24, TWISTER
	db 27, ICY_WIND
	db 30, WATERFALL
	db 33, SCARY_FACE
	db 36, DRAGON_RAGE
	db 39, CRUNCH
	db 42, HYDRO_PUMP
	db 45, BARRIER
	db 48, SKY_ATTACK
	db 51, RAIN_DANCE
	db 54, HYPER_BEAM
else
	db 1, THRASH
	db 20, BITE
	db 25, DRAGON_RAGE
	db 30, LEER
	db 35, TWISTER
	db 40, HYDRO_PUMP
	db 45, RAIN_DANCE
	db 50, HYPER_BEAM
endc
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SING
	db 1, GROWL
	db 1, WATER_GUN
	db 4, MIST
	db 7, CONFUSE_RAY
	db 10, ICY_WIND
	db 14, BUBBLEBEAM
	db 18, BODY_SLAM
	db 22, RAIN_DANCE
	db 27, PERISH_SONG
	db 32, ICE_BEAM
	db 37, WATERFALL
	db 43, SAFEGUARD
	db 48, HYDRO_PUMP
else
	db 1, WATER_GUN
	db 1, GROWL
	db 1, SING
	db 8, MIST
	db 15, BODY_SLAM
	db 22, CONFUSE_RAY
	db 29, PERISH_SONG
	db 36, ICE_BEAM
	db 43, RAIN_DANCE
	db 50, SAFEGUARD
	db 57, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, GROWL
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 9, CHARM
	db 13, QUICK_ATTACK
	db 17, BITE
	db 17, SWIFT
	db 20, RECOVER
	db 25, TAKE_DOWN
	db 30, BATON_PASS
	db 37, DOUBLE_EDGE
else
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, GROWL
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, BATON_PASS
	db 42, TAKE_DOWN
endc
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, WATER_GUN
	db 1, SWIFT
	db 1, BATON_PASS
	db 1, TAKE_DOWN
	db 1, DOUBLE_EDGE
	db 1, CHARM
	db 1, GROWL
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 15, CHARM
	db 20, HAZE
	db 25, BUBBLEBEAM
	db 30, AURORA_BEAM
	db 35, RAIN_DANCE
	db 40, SURF
	db 45, ACID_ARMOR
	db 50, HYDRO_PUMP
else
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, WATER_GUN
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, AURORA_BEAM
	db 42, HAZE
	db 47, ACID_ARMOR
	db 52, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, THUNDERSHOCK
	db 1, SWIFT
	db 1, BATON_PASS
	db 1, TAKE_DOWN
	db 1, DOUBLE_EDGE
	db 1, CHARM
	db 1, GROWL
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 15, CHARM
	db 20, THUNDER_WAVE
	db 25, DOUBLE_KICK
	db 30, THUNDERPUNCH
	db 35, PIN_MISSILE
	db 40, THUNDERBOLT
	db 45, AGILITY
	db 50, THUNDER
else
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, THUNDERSHOCK
	db 23, QUICK_ATTACK
	db 30, DOUBLE_KICK
	db 36, PIN_MISSILE
	db 42, THUNDER_WAVE
	db 47, AGILITY
	db 52, THUNDER
endc
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, EMBER
	db 1, SWIFT
	db 1, BATON_PASS
	db 1, TAKE_DOWN
	db 1, DOUBLE_EDGE
	db 1, CHARM
	db 1, GROWL
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 15, CHARM
	db 20, SMOG
	db 25, BITE
	db 30, FIRE_PUNCH
	db 35, FIRE_SPIN
	db 40, FLAMETHROWER
	db 45, SCARY_FACE
	db 50, FIRE_BLAST
else
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, EMBER
	db 23, QUICK_ATTACK
	db 30, BITE
	db 36, FIRE_SPIN
	db 42, SMOG
	db 47, LEER
	db 52, FLAMETHROWER
endc
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_TRADE, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, ZAP_CANNON
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 1, DEFENSE_CURL
	db 7, PSYBEAM
	db 12, AGILITY
	db 18, RECOVER
	db 23, SPARK
	db 29, LEECH_LIFE
	db 35, SCREECH
	db 40, THUNDERBOLT
	db 45, LOCK_ON
	db 50, TRI_ATTACK
	db 60, ZAP_CANNON
	db 66, HYPER_BEAM
else
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 20, RECOVER
	db 24, SHARPEN
	db 32, LOCK_ON
	db 36, TRI_ATTACK
	db 44, ZAP_CANNON
endc
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 7, BITE
	db 10, WATER_GUN
	db 16, ROLLOUT
	db 19, LEER
	db 25, MUD_SLAP
	db 28, WATERFALL
	db 34, PROTECT
	db 38, ANCIENTPOWER
	db 44, ROCK_SLIDE
	db 52, HYDRO_PUMP
else
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 13, BITE
	db 19, WATER_GUN
	db 31, LEER
	db 37, PROTECT
	db 49, ANCIENTPOWER
	db 55, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SPIKE_CANNON
	db 1, HYDRO_PUMP
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 7, BITE
	db 10, WATER_GUN
	db 16, ROLLOUT
	db 19, LEER
	db 25, MUD_SLAP
	db 28, WATERFALL
	db 34, PROTECT
	db 38, ANCIENTPOWER
	db 56, ROCK_SLIDE
	db 62, HYDRO_PUMP
else
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 1, BITE
	db 13, BITE
	db 19, WATER_GUN
	db 31, LEER
	db 37, PROTECT
	db 40, SPIKE_CANNON
	db 54, ANCIENTPOWER
	db 65, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCRATCH
	db 1, HARDEN
	db 6, ABSORB
	db 11, LEER
	db 16, MUD_SLAP
	db 21, SAND_ATTACK
	db 26, ENDURE
	db 31, WATERFALL
	db 36, MEGA_DRAIN
	db 41, SCREECH
	db 46, ANCIENTPOWER
	db 50, BODY_SLAM
else
	db 1, SCRATCH
	db 1, HARDEN
	db 10, ABSORB
	db 19, LEER
	db 28, SAND_ATTACK
	db 37, ENDURE
	db 46, MEGA_DRAIN
	db 55, ANCIENTPOWER
endc
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SLASH
	db 1, CRUNCH
	db 1, SCRATCH
	db 1, HARDEN
	db 6, ABSORB
	db 11, LEER
	db 16, MUD_SLAP
	db 21, SAND_ATTACK
	db 26, ENDURE
	db 31, WATERFALL
	db 36, MEGA_DRAIN
	db 45, SCREECH
	db 52, ANCIENTPOWER
	db 60, BODY_SLAM
	db 67, CRUNCH
else
	db 1, SCRATCH
	db 1, HARDEN
	db 1, ABSORB
	db 10, ABSORB
	db 19, LEER
	db 28, SAND_ATTACK
	db 37, ENDURE
	db 40, SLASH
	db 51, MEGA_DRAIN
	db 65, ANCIENTPOWER
endc
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, METAL_CLAW
	db 1, AURORA_BEAM
	db 1, FLAME_WHEEL
	db 1, SPARK
	db 1, WING_ATTACK
	db 1, SUPERSONIC
	db 1, BITE
	db 1, SCARY_FACE
	db 9, ROAR
	db 17, AGILITY
	db 25, ANCIENTPOWER
	db 33, CRUNCH
	db 41, TAKE_DOWN
	db 49, AEROBLAST
	db 56, METAL_CLAW
	db 65, HYPER_BEAM
	db 73, ROCK_SLIDE
else
	db 1, WING_ATTACK
	db 8, AGILITY
	db 15, BITE
	db 22, SUPERSONIC
	db 29, ANCIENTPOWER
	db 36, SCARY_FACE
	db 43, TAKE_DOWN
	db 50, HYPER_BEAM
endc
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 4, DEFENSE_CURL
	db 9, AMNESIA
	db 12, LICK
	db 17, SLAM
	db 20, HYPNOSIS
	db 25, BODY_SLAM
	db 28, REST
	db 28, SNORE
	db 33, SLEEP_TALK
	db 36, TAKE_DOWN
	db 37, ROLLOUT
	db 44, SWORDS_DANCE
	db 49, CRUNCH
	db 55, EARTHQUAKE
else
	db 1, TACKLE
	db 8, AMNESIA
	db 15, DEFENSE_CURL
	db 22, BELLY_DRUM
	db 29, HEADBUTT
	db 36, SNORE
	db 36, REST
	db 43, BODY_SLAM
	db 50, ROLLOUT
	db 57, HYPER_BEAM
endc
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, GUST
	db 1, POWDER_SNOW
	db 8, MIST
	db 15, ICY_WIND
	db 22, MIND_READER
	db 29, ANCIENTPOWER
	db 36, AGILITY
	db 43, AURORA_BEAM
	db 50, REFLECT
	db 60, ICE_BEAM
	db 70, BLIZZARD
	db 75, SKY_ATTACK
else
	db 1, GUST
	db 1, POWDER_SNOW
	db 13, MIST
	db 25, AGILITY
	db 37, MIND_READER
	db 49, ICE_BEAM
	db 61, REFLECT
	db 73, BLIZZARD
endc
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, PECK
	db 1, THUNDERSHOCK
	db 8, THUNDER_WAVE
	db 15, DETECT
	db 22, WING_ATTACK
	db 29, ANCIENTPOWER
	db 36, SPARK
	db 43, AGILITY
	db 50, THUNDERBOLT
	db 54, RAIN_DANCE
	db 62, LIGHT_SCREEN
	db 68, DRILL_PECK
	db 70, THUNDER
	db 76, ZAP_CANNON
else
	db 1, PECK
	db 1, THUNDERSHOCK
	db 13, THUNDER_WAVE
	db 25, AGILITY
	db 37, DETECT
	db 49, DRILL_PECK
	db 61, LIGHT_SCREEN
	db 73, THUNDER
endc
	db 0 ; no more level-up moves

MoltresEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, WING_ATTACK
	db 1, EMBER
	db 8, FIRE_SPIN
	db 15, AGILITY
	db 22, ENDURE
	db 29, ANCIENTPOWER
	db 36, FLAMETHROWER
	db 43, SAFEGUARD
	db 52, AEROBLAST
	db 60, FIRE_BLAST
	db 70, SOLARBEAM
	db 75, SKY_ATTACK
else
	db 1, WING_ATTACK
	db 1, EMBER
	db 13, FIRE_SPIN
	db 25, AGILITY
	db 37, ENDURE
	db 49, FLAMETHROWER
	db 61, SAFEGUARD
	db 73, SKY_ATTACK
endc
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, WRAP
	db 1, LEER
	db 5, THUNDER_WAVE
	db 11, TWISTER
	db 15, DRAGON_RAGE
	db 21, SLAM
	db 25, AGILITY
	db 31, DRAGONBREATH
	db 36, WATERFALL
	db 42, SAFEGUARD
	db 52, OUTRAGE
	db 61, HYPER_BEAM
else
	db 1, WRAP
	db 1, LEER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 36, AGILITY
	db 43, SAFEGUARD
	db 50, OUTRAGE
	db 57, HYPER_BEAM
endc
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, WRAP
	db 1, TWISTER
	db 1, LEER
	db 5, THUNDER_WAVE
	db 11, TWISTER
	db 15, DRAGON_RAGE
	db 21, SLAM
	db 25, AGILITY
	db 34, DRAGONBREATH
	db 39, WATERFALL
	db 44, SAFEGUARD
	db 56, OUTRAGE
	db 67, HYPER_BEAM
else
	db 1, WRAP
	db 1, LEER
	db 1, THUNDER_WAVE
	db 1, TWISTER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 38, AGILITY
	db 47, SAFEGUARD
	db 56, OUTRAGE
	db 65, HYPER_BEAM
endc
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, WRAP
	db 1, WING_ATTACK
	db 1, SKY_ATTACK
	db 1, FIRE_PUNCH
	db 1, THUNDERPUNCH
	db 1, RECOVER
	db 1, TWISTER
	db 1, LEER
	db 5, THUNDER_WAVE
	db 11, TWISTER
	db 15, DRAGON_RAGE
	db 21, SLAM
	db 25, AGILITY
	db 34, DRAGONBREATH
	db 39, WATERFALL
	db 44, SAFEGUARD
	db 63, OUTRAGE
	db 75, HYPER_BEAM
	db 80, SKY_ATTACK
else
	db 1, WRAP
	db 1, LEER
	db 1, THUNDER_WAVE
	db 1, TWISTER
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 22, DRAGON_RAGE
	db 29, SLAM
	db 38, AGILITY
	db 47, SAFEGUARD
	db 55, WING_ATTACK
	db 61, OUTRAGE
	db 75, HYPER_BEAM
endc
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, PSYWAVE
	db 1, CONFUSION
	db 1, DISABLE
	db 1, SAFEGUARD
	db 8, SWIFT
	db 15, FUTURE_SIGHT
	db 22, FOCUS_ENERGY
	db 29, LOCK_ON
	db 36, PSYWAVE
	db 43, PSYCH_UP
	db 50, RECOVER
	db 57, PSYCHIC_M
	db 64, BARRIER
	db 70, CROSS_CHOP
	db 79, AMNESIA
	db 86, MIST
else
	db 1, CONFUSION
	db 1, DISABLE
	db 11, BARRIER
	db 22, SWIFT
	db 33, PSYCH_UP
	db 44, FUTURE_SIGHT
	db 55, MIST
	db 66, PSYCHIC_M
	db 77, AMNESIA
	db 88, RECOVER
	db 99, SAFEGUARD
endc
	db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, POUND
	db 1, TRANSFORM
	db 10, MEGA_PUNCH
	db 20, METRONOME
	db 30, PSYCHIC_M
	db 40, BARRIER
	db 50, ANCIENTPOWER
	db 60, AMNESIA
	db 70, BATON_PASS
	db 80, SCREECH
	db 90, CROSS_CHOP
else
	db 1, POUND
	db 10, TRANSFORM
	db 20, MEGA_PUNCH
	db 30, METRONOME
	db 40, PSYCHIC_M
	db 50, ANCIENTPOWER
endc
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, GROWL
	db 6, RAZOR_LEAF
	db 9, POISONPOWDER
	db 13, SYNTHESIS
	db 18, REFLECT
	db 22, GIGA_DRAIN
	db 27, LIGHT_SCREEN
	db 32, BODY_SLAM
	db 39, SAFEGUARD
	db 45, SOLARBEAM
else
	db 1, TACKLE
	db 1, GROWL
	db 8, RAZOR_LEAF
	db 12, REFLECT
	db 15, POISONPOWDER
	db 22, SYNTHESIS
	db 29, BODY_SLAM
	db 36, LIGHT_SCREEN
	db 43, SAFEGUARD
	db 50, SOLARBEAM
endc
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, GROWL
	db 1, RAZOR_LEAF
	db 1, POISONPOWDER
	db 6, RAZOR_LEAF
	db 12, SYNTHESIS
	db 18, REFLECT
	db 24, GIGA_DRAIN
	db 35, BODY_SLAM
	db 36, LIGHT_SCREEN
	db 45, SAFEGUARD
	db 54, SOLARBEAM
else
	db 1, TACKLE
	db 1, GROWL
	db 1, RAZOR_LEAF
	db 1, REFLECT
	db 8, RAZOR_LEAF
	db 12, REFLECT
	db 15, POISONPOWDER
	db 23, SYNTHESIS
	db 31, BODY_SLAM
	db 39, LIGHT_SCREEN
	db 47, SAFEGUARD
	db 55, SOLARBEAM
endc
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, GROWL
	db 1, RAZOR_LEAF
	db 1, REFLECT
	db 1, PETAL_DANCE
	db 8, RAZOR_LEAF
	db 9, POISONPOWDER
	db 18, REFLECT
	db 23, SYNTHESIS
	db 31, BODY_SLAM
	db 41, LIGHT_SCREEN
	db 51, SAFEGUARD
	db 61, SOLARBEAM
else
	db 1, TACKLE
	db 1, GROWL
	db 1, RAZOR_LEAF
	db 1, REFLECT
	db 8, RAZOR_LEAF
	db 12, REFLECT
	db 15, POISONPOWDER
	db 23, SYNTHESIS
	db 31, BODY_SLAM
	db 41, LIGHT_SCREEN
	db 51, SAFEGUARD
	db 61, SOLARBEAM
endc
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 9, EMBER
	db 13, QUICK_ATTACK
	db 19, FLAME_WHEEL
	db 23, DEFENSE_CURL
	db 31, SWIFT
	db 40, FLAMETHROWER
	db 49, ROLLOUT
	db 55, DOUBLE_EDGE
else
	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 12, EMBER
	db 19, QUICK_ATTACK
	db 27, FLAME_WHEEL
	db 36, SWIFT
	db 46, FLAMETHROWER
endc
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 36, TYPHLOSION
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, LEER
	db 1, SMOKESCREEN
	db 6, SMOKESCREEN
	db 10, EMBER
	db 13, QUICK_ATTACK
	db 20, FLAME_WHEEL
	db 24, DEFENSE_CURL
	db 31, SWIFT
	db 46, FLAMETHROWER 
	db 54, ROLLOUT
	db 60, DOUBLE_EDGE
else
	db 1, TACKLE
	db 1, LEER
	db 1, SMOKESCREEN
	db 6, SMOKESCREEN
	db 12, EMBER
	db 21, QUICK_ATTACK
	db 31, FLAME_WHEEL
	db 42, SWIFT
	db 54, FLAMETHROWER
endc
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, DOUBLE_EDGE
	db 1, LEER
	db 1, SMOKESCREEN
	db 1, EMBER
	db 6, SMOKESCREEN
	db 10, EMBER
	db 13, QUICK_ATTACK
	db 20, FLAME_WHEEL
	db 24, DEFENSE_CURL
	db 31, SWIFT
	db 45, FLAMETHROWER 
	db 61, ROLLOUT
	db 67, DOUBLE_EDGE
	db 74, FIRE_BLAST
else
	db 1, TACKLE
	db 1, LEER
	db 1, SMOKESCREEN
	db 1, EMBER
	db 6, SMOKESCREEN
	db 12, EMBER
	db 21, QUICK_ATTACK
	db 31, FLAME_WHEEL
	db 45, SWIFT
	db 60, FLAMETHROWER
endc
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCRATCH
	db 1, LEER
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 20, CRUNCH
	db 30, SLASH
	db 37, SCREECH
	db 42, THRASH
	db 52, HYDRO_PUMP
else
	db 1, SCRATCH
	db 1, LEER
	db 7, RAGE
	db 13, WATER_GUN
	db 20, BITE
	db 27, SCARY_FACE
	db 35, SLASH
	db 43, SCREECH
	db 52, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCRATCH
	db 1, LEER
	db 1, RAGE
	db 1, WATER_GUN
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 21, ICE_PUNCH
	db 24, FLAIL
	db 30, CRUNCH
	db 37, SLASH
	db 42, SCREECH
	db 48, THRASH
	db 55, HYDRO_PUMP
else
	db 1, SCRATCH
	db 1, LEER
	db 1, RAGE
	db 7, RAGE
	db 13, WATER_GUN
	db 21, BITE
	db 28, SCARY_FACE
	db 37, SLASH
	db 45, SCREECH
	db 55, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, AGILITY
	db 1, SCRATCH
	db 1, LEER
	db 1, WATER_GUN
	db 1, RAGE
	db 6, WATER_GUN
	db 8, RAGE
	db 13, BITE
	db 15, SCARY_FACE
	db 21, ICE_PUNCH
	db 24, FLAIL
	db 32, CRUNCH
	db 38, SLASH
	db 44, SCREECH
	db 53, THRASH
	db 58, HYDRO_PUMP
else
	db 1, SCRATCH
	db 1, LEER
	db 1, RAGE
	db 1, WATER_GUN
	db 7, RAGE
	db 13, WATER_GUN
	db 21, BITE
	db 28, SCARY_FACE
	db 38, SLASH
	db 47, SCREECH
	db 58, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCRATCH
	db 1, FORESIGHT
	db 4, DEFENSE_CURL
	db 8, QUICK_ATTACK
	db 15, FURY_SWIPES,
	db 23, SLAM
	db 28, REST
	db 31, FAINT_ATTACK
	db 41, AMNESIA
else
	db 1, TACKLE
	db 5, DEFENSE_CURL
	db 11, QUICK_ATTACK
	db 17, FURY_SWIPES
	db 25, SLAM
	db 33, REST
	db 41, AMNESIA
	db 52, DOUBLE_EDGE
endc
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCRATCH
	db 1, FORESIGHT
	db 1, AGILITY
	db 1, DEFENSE_CURL
	db 1, QUICK_ATTACK
	db 4, EFFECT_DEFENSE_CURL
	db 8, QUICK_ATTACK
	db 15, FURY_SWIPES,
	db 17, AGILITY
	db 25, SLAM
	db 30, REST
	db 36, FAINT_ATTACK
	db 42, AMNESIA
	db 52, DOUBLE_EDGE
else
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, QUICK_ATTACK
	db 5, DEFENSE_CURL
	db 11, QUICK_ATTACK
	db 18, FURY_SWIPES
	db 28, SLAM
	db 38, REST
	db 48, AMNESIA
endc
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 6, PECK
	db 12, HYPNOSIS
	db 18, CONFUSION
	db 23, WING_ATTACK
	db 28, REFLECT
	db 34, TAKE_DOWN
	db 48, DREAM_EATER
else
	db 1, TACKLE
	db 1, GROWL
	db 6, FORESIGHT
	db 11, PECK
	db 16, HYPNOSIS
	db 22, REFLECT
	db 28, TAKE_DOWN
	db 34, CONFUSION
	db 48, DREAM_EATER
endc
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 1, DREAM_EATER
	db 1, SKY_ATTACK
	db 1, HYPNOSIS
	db 7, PECK
	db 10, CONFUSION
	db 18, PSYBEAM
	db 27, TAKE_DOWN
	db 31, REFLECT
	db 36, WING_ATTACK
	db 43, RECOVER
else
	db 1, TACKLE
	db 1, GROWL
	db 1, FORESIGHT
	db 1, PECK
	db 6, FORESIGHT
	db 11, PECK
	db 16, HYPNOSIS
	db 25, REFLECT
	db 33, TAKE_DOWN
	db 41, CONFUSION
	db 57, DREAM_EATER
endc
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 5, SUPERSONIC
	db 8, SWIFT
	db 12, LIGHT_SCREEN
	db 12, REFLECT
	db 15, MACH_PUNCH
	db 19, LEECH_LIFE
	db 22, COMET_PUNCH
	db 26, SAFEGUARD
	db 29, BATON_PASS
	db 33, PIN_MISSILE
	db 36, AGILITY
	db 43, WING_ATTACK
	db 50, DOUBLE_EDGE
else
	db 1, TACKLE
	db 8, SUPERSONIC
	db 15, COMET_PUNCH
	db 22, LIGHT_SCREEN
	db 22, REFLECT
	db 22, SAFEGUARD
	db 29, BATON_PASS
	db 36, SWIFT
	db 43, AGILITY
	db 50, DOUBLE_EDGE
endc
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, SUPERSONIC
	db 1, SWIFT
	db 5, SUPERSONIC
	db 8, SWIFT
	db 12, LIGHT_SCREEN
	db 12, REFLECT
	db 15, MACH_PUNCH
	db 20, LEECH_LIFE
	db 24, COMET_PUNCH
	db 27, SAFEGUARD
	db 30, BATON_PASS
	db 35, PIN_MISSILE
	db 38, AGILITY
	db 44, WING_ATTACK
	db 50, DOUBLE_EDGE
else
	db 1, TACKLE
	db 1, SUPERSONIC
	db 8, SUPERSONIC
	db 15, COMET_PUNCH
	db 24, LIGHT_SCREEN
	db 24, REFLECT
	db 24, SAFEGUARD
	db 33, BATON_PASS
	db 42, SWIFT
	db 51, AGILITY
	db 60, DOUBLE_EDGE
endc
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 1, CONSTRICT
	db 5, ABSORB
	db 8, TWINEEDLE
	db 12, SCARY_FACE
	db 15, NIGHT_SHADE
	db 20, FURY_SWIPES
	db 27, SPIDER_WEB
	db 33, AGILITY
	db 36, PIN_MISSILE
	db 40, PSYCHIC_M
	db 45, SLUDGE
	db 52, TOXIC
else
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 6, SCARY_FACE
	db 11, CONSTRICT
	db 17, NIGHT_SHADE
	db 23, LEECH_LIFE
	db 30, FURY_SWIPES
	db 37, SPIDER_WEB
	db 45, AGILITY
	db 53, PSYCHIC_M
endc
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SWORDS_DANCE
	db 1, FOCUS_ENERGY
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 1, CONSTRICT
	db 1, ABSORB
	db 1, SCARY_FACE
	db 5, ABSORB
	db 12, SCARY_FACE
	db 15, NIGHT_SHADE
	db 23, SWORDS_DANCE
	db 28, BITE
	db 32, SPIDER_WEB
	db 37, AGILITY
	db 41, PIN_MISSILE
	db 46, PSYCHIC_M,
	db 52, TOXIC
else
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 1, SCARY_FACE
	db 1, CONSTRICT
	db 6, SCARY_FACE
	db 11, CONSTRICT
	db 17, NIGHT_SHADE
	db 25, LEECH_LIFE
	db 34, FURY_SWIPES
	db 43, SPIDER_WEB
	db 53, AGILITY
	db 63, PSYCHIC_M
endc
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCREECH
	db 1, ABSORB
	db 1, SUPERSONIC
	db 1, LICK
	db 1, BITE
	db 5, SUPERSONIC
	db 7, LICK
	db 11, BITE
	db 13, GUST
	db 17, CONFUSE_RAY
	db 19, WING_ATTACK
	db 24, SWIFT
	db 27, SLUDGE
	db 32, MEAN_LOOK
	db 35, LEECH_LIFE
	db 40, HAZE
	db 37, SLUDGE_BOMB
	db 48, FLY
	db 51, DETECT
else
	db 1, SCREECH
	db 1, LEECH_LIFE
	db 1, SUPERSONIC
	db 6, SUPERSONIC
	db 12, BITE
	db 19, CONFUSE_RAY
	db 30, WING_ATTACK
	db 42, MEAN_LOOK
	db 55, HAZE
endc
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, BUBBLE
	db 1, SUPERSONIC
	db 6, THUNDER_WAVE
	db 9, THUNDERSHOCK
	db 12, WATER_GUN
	db 17, CONFUSE_RAY
	db 20, BUBBLEBEAM
	db 23, SPARK
	db 28, LEECH_LIFE
	db 31, FLAIL
	db 34, THUNDERBOLT
	db 39, TAKE_DOWN
	db 45, HYDRO_PUMP
	db 50, THUNDER
else
	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 5, SUPERSONIC
	db 13, FLAIL
	db 17, WATER_GUN
	db 25, SPARK
	db 29, CONFUSE_RAY
	db 37, TAKE_DOWN
	db 41, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, BUBBLE
	db 1, SUPERSONIC
	db 6, THUNDER_WAVE
	db 9, THUNDERSHOCK
	db 12, WATER_GUN
	db 17, CONFUSE_RAY
	db 20, BUBBLEBEAM
	db 23, SPARK
	db 31, LEECH_LIFE
	db 34, FLAIL
	db 37, THUNDERBOLT
	db 42, TAKE_DOWN
	db 48, HYDRO_PUMP
	db 53, THUNDER
else
	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 1, SUPERSONIC
	db 5, SUPERSONIC
	db 13, FLAIL
	db 17, WATER_GUN
	db 25, SPARK
	db 33, CONFUSE_RAY
	db 45, TAKE_DOWN
	db 53, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 5, TAIL_WHIP
	db 10, SWEET_KISS
	db 13, BARRIER
	db 18, THUNDER_WAVE
else
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, SWEET_KISS
endc
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, POUND
	db 1, CHARM
	db 4, ENCORE
	db 7, SING
	db 10, SWEET_KISS
else
	db 1, POUND
	db 1, CHARM
	db 4, ENCORE
	db 8, SING
	db 13, SWEET_KISS
endc
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SING
	db 1, CHARM
	db 5, DEFENSE_CURL
	db 9, POUND
	db 13, SWEET_KISS
else
	db 1, SING
	db 1, CHARM
	db 4, DEFENSE_CURL
	db 9, POUND
	db 14, SWEET_KISS
endc
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, GROWL
	db 1, CHARM
	db 5, METRONOME
	db 9, SWEET_KISS
	db 13, HYPNOSIS
	db 17, ENCORE
	db 22, HEADBUTT
	db 27, RECOVER
	db 33, ANCIENTPOWER
	db 37, SAFEGUARD
	db 41, BATON_PASS
	db 45, DOUBLE_EDGE
else 
	db 1, GROWL
	db 1, CHARM
	db 7, METRONOME
	db 18, SWEET_KISS
	db 25, ENCORE
	db 31, SAFEGUARD
	db 38, DOUBLE_EDGE
endc
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, RAZOR_LEAF
	db 1, GROWL
	db 1, CHARM
	db 1, METRONOME
	db 1, SWEET_KISS
	db 5, METRONOME
	db 9, SWEET_KISS
	db 13, HYPNOSIS
	db 17, ENCORE
	db 22, HEADBUTT
	db 27, RECOVER
	db 33, ANCIENTPOWER
	db 37, SAFEGUARD
	db 41, BATON_PASS
	db 45, DOUBLE_EDGE
else 
	db 1, GROWL
	db 1, CHARM
	db 7, METRONOME
	db 18, SWEET_KISS
	db 25, ENCORE
	db 31, SAFEGUARD
	db 38, DOUBLE_EDGE
endc
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, PECK
	db 1, LEER
	db 6, NIGHT_SHADE
	db 9,  TELEPORT
	db 12, FOCUS_ENERGY
	db 17, HIDDEN_POWER
	db 20, SHADOW_BALL
	db 23, CONFUSE_RAY
	db 28, RECOVER
	db 33, PSYCHIC_M
	db 40, PSYCH_UP
	db 44, FUTURE_SIGHT
else
	db 1, PECK
	db 1, LEER
	db 10, NIGHT_SHADE
	db 20, TELEPORT
	db 30, FUTURE_SIGHT
	db 40, CONFUSE_RAY
	db 50, PSYCHIC_M
endc
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, FLY
	db 1, PECK
	db 1, LEER
	db 1, NIGHT_SHADE
	db 1, TELEPORT
	db 6, NIGHT_SHADE
	db 9,  TELEPORT
	db 12, FOCUS_ENERGY
	db 17, HIDDEN_POWER
	db 20, SHADOW_BALL
	db 23, CONFUSE_RAY
	db 29, RECOVER
	db 35, PSYCHIC_M
	db 43, PSYCH_UP
	db 49, FUTURE_SIGHT
else
	db 1, PECK
	db 1, LEER
	db 1, NIGHT_SHADE
	db 10, NIGHT_SHADE
	db 20, TELEPORT
	db 35, FUTURE_SIGHT
	db 50, CONFUSE_RAY
	db 65, PSYCHIC_M
endc
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, GROWL
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 12, COTTON_SPORE
	db 18, TAKE_DOWN
	db 25, CONFUSE_RAY
	db 30, ROCK_THROW
	db 37, LIGHT_SCREEN
	db 46, THUNDER
else
	db 1, TACKLE
	db 1, GROWL
	db 9, THUNDERSHOCK
	db 16, THUNDER_WAVE
	db 23, COTTON_SPORE
	db 30, LIGHT_SCREEN
	db 37, THUNDER
endc
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDER_WAVE
	db 1, THUNDERSHOCK
	db 1, THUNDERPUNCH
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 12, COTTON_SPORE
	db 18, TAKE_DOWN
	db 25, SPARK
	db 29, CONFUSE_RAY
	db 34, ROCK_THROW
	db 38, THUNDERBOLT
	db 45, LIGHT_SCREEN
	db 52, THUNDER
else
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 9, THUNDERSHOCK
	db 18, THUNDER_WAVE
	db 27, COTTON_SPORE
	db 36, LIGHT_SCREEN
	db 45, THUNDER
endc
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 1, THUNDER_WAVE
	db 1, FIRE_PUNCH
	db 4, THUNDER_WAVE
	db 8, THUNDERSHOCK
	db 12, COTTON_SPORE
	db 18, TAKE_DOWN
	db 25, SPARK
	db 29, CONFUSE_RAY
	db 31, THUNDERPUNCH
	db 36, ROCK_THROW
	db 42, THUNDERBOLT
	db 48, LIGHT_SCREEN
	db 58, THUNDER
else
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 1, THUNDER_WAVE
	db 9, THUNDERSHOCK
	db 18, THUNDER_WAVE
	db 27, COTTON_SPORE
	db 30, THUNDERPUNCH
	db 42, LIGHT_SCREEN
	db 57, THUNDER
endc
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, RAZOR_LEAF
	db 1, MEGA_DRAIN
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, SUNNY_DAY
	db 8, SWEET_SCENT
	db 12, ACID
	db 15, POISONPOWDER
	db 17, STUN_SPORE
	db 18, SLEEP_POWDER
	db 22, MEGA_DRAIN
	db 27, RAZOR_LEAF
	db 32, MOONLIGHT
	db 37, GIGA_DRAIN
	db 42, COTTON_SPORE
	db 47, PETAL_DANCE
	db 52, SOLARBEAM
else
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, PETAL_DANCE
	db 55, SOLARBEAM
endc
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, BUBBLE
	db 5, TAIL_WHIP
	db 7, WATER_GUN
	db 10, DEFENSE_CURL
	db 10, ROLLOUT
	db 13, BUBBLEBEAM
	db 16, FOCUS_ENERGY
	db 21, SURF
	db 26, DOUBLE_EDGE
	db 31, RECOVER
	db 34, RAIN_DANCE
	db 40, VITAL_THROW
	db 43, HYDRO_PUMP
else
	db 1, TACKLE
	db 3, DEFENSE_CURL
	db 6, TAIL_WHIP
	db 10, WATER_GUN
	db 15, ROLLOUT
	db 21, BUBBLEBEAM
	db 28, DOUBLE_EDGE
	db 36, RAIN_DANCE
endc
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, BUBBLE
	db 5, TAIL_WHIP
	db 7, WATER_GUN
	db 10, DEFENSE_CURL
	db 10, ROLLOUT
	db 13, BUBBLEBEAM
	db 16, FOCUS_ENERGY
	db 20, SURF
	db 23, DOUBLE_EDGE
	db 28, RECOVER
	db 31, RAIN_DANCE
	db 37, VITAL_THROW
	db 40, HYDRO_PUMP
else
	db 1, TACKLE
	db 1, DEFENSE_CURL
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 3, DEFENSE_CURL
	db 6, TAIL_WHIP
	db 10, WATER_GUN
	db 15, ROLLOUT
	db 25, BUBBLEBEAM
	db 36, DOUBLE_EDGE
	db 48, RAIN_DANCE
endc
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 5, FLAIL
	db 8, LOW_KICK
	db 12, ROCK_THROW
	db 15, MIMIC
	db 19, FAINT_ATTACK
	db 25, ROCK_SLIDE
	db 30, COUNTER
	db 35, SLAM
	db 40, PURSUIT
	db 45, DOUBLE_EDGE
else
	db 1, ROCK_THROW
	db 1, MIMIC
	db 10, FLAIL
	db 19, LOW_KICK
	db 28, ROCK_SLIDE
	db 37, FAINT_ATTACK
	db 46, SLAM
endc
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, AEROBLAST
	db 1, SWAGGER
	db 1, PERISH_SONG
	db 1, BUBBLEBEAM
	db 1, RAIN_DANCE
	db 1, MAGNITUDE
	db 1, HYDRO_PUMP
	db 1, BELLY_DRUM
	db 1, DOUBLE_EDGE
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, POUND
	db 1, MUD_SLAP
	db 9, POUND
	db 15, MUD_SLAP
	db 21, BUBBLEBEAM
	db 27, RAIN_DANCE
	db 35, BODY_SLAM
	db 43, MAGNITUDE
	db 51, HYDRO_PUMP
	db 59, BELLY_DRUM
	db 69, DOUBLE_EDGE
else
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, PERISH_SONG
	db 35, PERISH_SONG
	db 51, SWAGGER
endc
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, ABSORB
	db 1, SPLASH
	db 4, SYNTHESIS
	db 6, TAIL_WHIP
	db 8, TACKLE
	db 11, POISONPOWDER
	db 13, STUN_SPORE
	db 15, SLEEP_POWDER
	db 20, LEECH_SEED
	db 25, MEGA_DRAIN
	db 28, GUST
	db 34, COTTON_SPORE
	db 40, GIGA_DRAIN
else
	db 1, SPLASH
	db 5, SYNTHESIS
	db 5, TAIL_WHIP
	db 10, TACKLE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 20, LEECH_SEED
	db 25, COTTON_SPORE
	db 30, MEGA_DRAIN
endc
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, ABSORB
	db 1, SPLASH
	db 1, SYNTHESIS
	db 1, TAIL_WHIP
	db 4, SYNTHESIS
	db 6, TAIL_WHIP
	db 8, TACKLE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 22, LEECH_SEED
	db 28, MEGA_DRAIN
	db 32, GUST
	db 40, COTTON_SPORE
	db 50, GIGA_DRAIN
else
	db 1, SPLASH
	db 1, SYNTHESIS
	db 1, TAIL_WHIP
	db 1, TACKLE
	db 5, SYNTHESIS
	db 5, TAIL_WHIP
	db 10, TACKLE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 22, LEECH_SEED
	db 29, COTTON_SPORE
	db 36, MEGA_DRAIN
endc
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, ABSORB
	db 1, SPLASH
	db 1, SYNTHESIS
	db 1, TAIL_WHIP
	db 4, SYNTHESIS
	db 6, TAIL_WHIP
	db 8, TACKLE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 22, LEECH_SEED
	db 29, MEGA_DRAIN
	db 35, GUST
	db 42, COTTON_SPORE
	db 52, GIGA_DRAIN
else
	db 1, SPLASH
	db 1, SYNTHESIS
	db 1, TAIL_WHIP
	db 1, TACKLE
	db 5, SYNTHESIS
	db 5, TAIL_WHIP
	db 10, TACKLE
	db 13, POISONPOWDER
	db 15, STUN_SPORE
	db 17, SLEEP_POWDER
	db 22, LEECH_SEED
	db 33, COTTON_SPORE
	db 44, MEGA_DRAIN
endc
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 4, SAND_ATTACK
	db 8, LICK
	db 11, BATON_PASS
	db 15, CHARM
	db 18, DOUBLESLAP
	db 22, SWIFT
	db 29, AGILITY
	db 32, DOUBLE_KICK
	db 36, PURSUIT
	db 39, SWORDS_DANCE
	db 44, DOUBLE_EDGE
else
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 6, SAND_ATTACK
	db 12, BATON_PASS
	db 19, FURY_SWIPES
	db 27, SWIFT
	db 36, SCREECH
	db 46, AGILITY
endc
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, ABSORB
	db 1, GROWTH
	db 10, MEGA_DRAIN
	db 13, LEECH_SEED
	db 16, RAZOR_LEAF
	db 20, GIGA_DRAIN
	db 24, ENDURE
	db 28, SYNTHESIS
	db 33, SOLARBEAM
	db 37, DOUBLE_EDGE
	db 40, SUNNY_DAY
	db 43, PETAL_DANCE
else
	db 1, ABSORB
	db 4, GROWTH
	db 10, MEGA_DRAIN
	db 19, SUNNY_DAY
	db 31, SYNTHESIS
	db 46, GIGA_DRAIN
endc
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, ABSORB
	db 1, GROWTH
	db 13, MEGA_DRAIN
	db 16, LEECH_SEED
	db 19, RAZOR_LEAF
	db 23, GIGA_DRAIN
	db 27, ENDURE
	db 31, SYNTHESIS
	db 36, SOLARBEAM
	db 40, DOUBLE_EDGE
	db 43, SUNNY_DAY
	db 46, PETAL_DANCE
	db 49, SOLARBEAM
else
	db 1, ABSORB
	db 1, POUND
	db 4, GROWTH
	db 10, RAZOR_LEAF
	db 19, SUNNY_DAY
	db 31, PETAL_DANCE
	db 46, SOLARBEAM
endc
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, FORESIGHT
	db 6, QUICK_ATTACK
	db 11, DOUBLE_TEAM
	db 14, SONICBOOM
	db 17, DETECT
	db 22, SUPERSONIC
	db 27, SWIFT
	db 30, PURSUIT
	db 33, ANCIENTPOWER
	db 38, HYPNOSIS
	db 43, WING_ATTACK
	db 46, SCREECH
	db 55, AEROBLAST
else
	db 1, TACKLE
	db 1, FORESIGHT
	db 7, QUICK_ATTACK
	db 13, DOUBLE_TEAM
	db 19, SONICBOOM
	db 25, DETECT
	db 31, SUPERSONIC
	db 37, WING_ATTACK
	db 43, SCREECH
endc
	db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 7, MUD_SLAP
	db 15, SLAM
	db 20, AMNESIA
	db 24, DIG
	db 28, BUBBLEBEAM
	db 32, EARTHQUAKE
	db 37, RAIN_DANCE
	db 43, MIST
	db 43, HAZE
	db 47, SURF
else
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 11, SLAM
	db 21, AMNESIA
	db 31, EARTHQUAKE
	db 41, RAIN_DANCE
	db 51, MIST
	db 51, HAZE
endc
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 7, MUD_SLAP
	db 14, SLAM
	db 21, AMNESIA
	db 28, DIG
	db 33, BUBBLEBEAM
	db 37, EARTHQUAKE
	db 41, RAIN_DANCE
	db 48, MIST
	db 48, HAZE
	db 53, SURF
else
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 11, SLAM
	db 23, AMNESIA
	db 35, EARTHQUAKE
	db 47, RAIN_DANCE
	db 59, MIST
	db 59, HAZE
endc
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, CONFUSION
	db 1, BITE
	db 1, BATON_PASS
	db 1, TAKE_DOWN
	db 1, DOUBLE_EDGE
	db 1, CHARM
	db 1, GROWL
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 15, CHARM
	db 20, SWIFT
	db 25, PSYBEAM
	db 30, SYNTHESIS
	db 35, REFLECT
	db 40, PSYCHIC_M
	db 45, PSYCH_UP
	db 50, FUTURE_SIGHT
else
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, CONFUSION
	db 23, QUICK_ATTACK
	db 30, SWIFT
	db 36, PSYBEAM
	db 42, PSYCH_UP
	db 47, PSYCHIC_M
	db 52, MORNING_SUN
endc
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, PURSUIT
	db 1, SWIFT
	db 1, BITE
	db 1, BATON_PASS
	db 1, TAKE_DOWN
	db 1, DOUBLE_EDGE
	db 1, CHARM
	db 1, GROWL
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, SAND_ATTACK
	db 10, QUICK_ATTACK
	db 15, CHARM
	db 20, CONFUSE_RAY
	db 25, FAINT_ATTACK
	db 30, MOONLIGHT
	db 35, BARRIER
	db 40, CRUNCH
	db 45, SCREECH
	db 50, MEAN_LOOK
else
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, PURSUIT
	db 23, QUICK_ATTACK
	db 30, CONFUSE_RAY
	db 36, FAINT_ATTACK
	db 42, MEAN_LOOK
	db 47, SCREECH
	db 52, MOONLIGHT
endc
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, PECK
	db 1, LICK
	db 5, PURSUIT
	db 11, HAZE
	db 15, WING_ATTACK
	db 21, NIGHT_SHADE
	db 25, THIEF
	db 31, SHARPEN
	db 35, FAINT_ATTACK
	db 41, MEAN_LOOK
	db 50, SKY_ATTACK
else
	db 1, PECK
	db 11, PURSUIT
	db 16, HAZE
	db 26, NIGHT_SHADE
	db 31, FAINT_ATTACK
	db 41, MEAN_LOOK
endc
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, CURSE
	db 1, HIDDEN_POWER
	db 1, TACKLE
	db 1, GROWL
	db 5, GROWL
	db 9, WATER_GUN
	db 14, CONFUSION
	db 19, DISABLE
	db 23, HEADBUTT
	db 28, BUBBLEBEAM
	db 32, PSYBEAM
	db 37, SWAGGER
	db 43, AMNESIA
	db 50, RAIN_DANCE
	db 55, PSYCH_UP
	db 60, PSYCHIC_M
else
	db 1, CURSE
	db 1, TACKLE
	db 6, GROWL
	db 15, WATER_GUN
	db 20, CONFUSION
	db 29, DISABLE
	db 34, HEADBUTT
	db 43, SWAGGER
	db 48, PSYCHIC_M
endc
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, GROWL
	db 1, PSYWAVE
	db 5, SPITE
	db 10, LICK
	db 14, CONFUSE_RAY
	db 19, MEAN_LOOK
	db 25, PSYBEAM
	db 32, ENDURE
	db 37, BITE
	db 41, SHADOW_BALL
	db 46, PERISH_SONG
	db 50, CRUNCH
	db 55, ROCK_THROW
else
	db 1, GROWL
	db 1, PSYWAVE
	db 6, SPITE
	db 12, CONFUSE_RAY
	db 19, MEAN_LOOK
	db 27, PSYBEAM
	db 36, PAIN_SPLIT
	db 46, PERISH_SONG
endc
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, SAFEGUARD
	db 1, DESTINY_BOND
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, LICK
	db 1, TACKLE
	db 1, GROWL
	db 5, CONFUSION
	db 10, FAINT_ATTACK
	db 14, STOMP
	db 19, PSYBEAM
	db 23, AGILITY
	db 28, DOUBLE_KICK
	db 32, PSYWAVE
	db 37, CRUNCH
	db 41, BATON_PASS
	db 50, PSYCHIC_M
else
	db 1, TACKLE
	db 1, GROWL
	db 1, CONFUSION
	db 1, STOMP
	db 7, CONFUSION
	db 13, STOMP
	db 20, AGILITY
	db 30, BATON_PASS
	db 41, PSYBEAM
	db 54, CRUNCH
endc
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, PROTECT
	db 6, SELFDESTRUCT
	db 9, LEECH_LIFE
	db 12, TAKE_DOWN
	db 17, RAPID_SPIN
	db 20, BIDE
	db 23, RECOVER
	db 28, SPIKES
	db 31, FAINT_ATTACK
	db 34, EXPLOSION
	db 39, BARRIER
	db 45, DOUBLE_EDGE
else
	db 1, TACKLE
	db 1, PROTECT
	db 8, SELFDESTRUCT
	db 15, TAKE_DOWN
	db 22, RAPID_SPIN
	db 29, BIDE
	db 36, EXPLOSION
	db 43, SPIKES
	db 50, DOUBLE_EDGE
endc
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, MINIMIZE
	db 1, ZAP_CANNON
	db 1, SPIKES
	db 1, TACKLE
	db 1, PROTECT
	db 1, SELFDESTRUCT
	db 1, LEECH_LIFE
	db 6, SELFDESTRUCT
	db 9, LEECH_LIFE
	db 12, TAKE_DOWN
	db 17, RAPID_SPIN
	db 20, BIDE
	db 23, RECOVER
	db 28, SPIKES
	db 32, FAINT_ATTACK
	db 36, EXPLOSION
	db 42, BARRIER
	db 50, DOUBLE_EDGE
	db 60, ZAP_CANNON
else
	db 1, TACKLE
	db 1, PROTECT
	db 1, SELFDESTRUCT
	db 8, SELFDESTRUCT
	db 15, TAKE_DOWN
	db 22, RAPID_SPIN
	db 29, BIDE
	db 39, EXPLOSION
	db 49, SPIKES
	db 59, DOUBLE_EDGE
endc
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, RAGE
	db 1, DEFENSE_CURL
	db 3, ROLLOUT
	db 6, SPITE
	db 8, PURSUIT
	db 11, SCREECH
	db 14, MUD_SLAP
	db 18, ANCIENTPOWER
	db 21, BODY_SLAM
	db 23, MAGNITUDE
	db 26, RECOVER
	db 28, TAKE_DOWN
	db 31, CONSTRICT
	db 33, DIG
	db 36, GLARE
	db 38, DOUBLE_EDGE
	db 42, AEROBLAST
	db 46, DRAGONBREATH
	db 48, ENDURE
	db 51, FLAIL
else
	db 1, RAGE
	db 5, DEFENSE_CURL
	db 13, GLARE
	db 18, SPITE
	db 26, PURSUIT
	db 30, SCREECH
	db 38, TAKE_DOWN
endc
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, POISON_STING
	db 4, SAND_ATTACK
	db 7, HARDEN
	db 10, THIEF
	db 13, QUICK_ATTACK
	db 16, FURY_CUTTER
	db 19, FAINT_ATTACK
	db 22, WING_ATTACK
	db 27, SLASH
	db 30, LEECH_LIFE
	db 35, SCREECH
	db 40, MAGNITUDE
	db 45, VITAL_THROW
	db 50, SWORDS_DANCE
	db 55, GUILLOTINE
	db 60, EARTHQUAKE
else
	db 1, POISON_STING
	db 6, SAND_ATTACK
	db 13, HARDEN
	db 20, QUICK_ATTACK
	db 28, FAINT_ATTACK
	db 36, SLASH
	db 44, SCREECH
	db 52, GUILLOTINE
endc
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, MUD_SLAP
	db 1, TACKLE
	db 1, HARDEN
	db 1, BIND
	db 4, CURSE
	db 9, ROCK_THROW
	db 13, RAGE
	db 17, SPIKES
	db 22, DRAGONBREATH
	db 28, SLAM
	db 31, SCREECH
	db 34, ROCK_SLIDE
	db 37, CRUNCH
	db 40, IRON_TAIL
	db 43, DIG
	db 49, DOUBLE_EDGE
	db 52, SANDSTORM
else
	db 1, TACKLE
	db 1, SCREECH
	db 10, BIND
	db 14, ROCK_THROW
	db 23, HARDEN
	db 27, RAGE
	db 36, SANDSTORM
	db 40, SLAM
	db 49, CRUNCH
endc
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, SCARY_FACE
	db 1, TAIL_WHIP
	db 1, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 25, ROAR
	db 31, RAGE
	db 37, TAKE_DOWN
	db 43, CRUNCH
else
	db 1, TACKLE
	db 1, SCARY_FACE
	db 4, TAIL_WHIP
	db 8, CHARM
	db 13, BITE
	db 19, LICK
	db 26, ROAR
	db 34, RAGE
	db 43, TAKE_DOWN
endc
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, SCARY_FACE
	db 1, TAIL_WHIP
	db 1, CHARM
	db 7, BITE
	db 13, LICK
	db 19, HEADBUTT
	db 27, ROAR
	db 35, RAGE
	db 43, TAKE_DOWN
	db 50, CRUNCH
	db 60, OUTRAGE
else
	db 1, TACKLE
	db 1, SCARY_FACE
	db 4, TAIL_WHIP
	db 8, CHARM
	db 13, BITE
	db 19, LICK
	db 28, ROAR
	db 38, RAGE
	db 51, TAKE_DOWN
endc
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, HYDRO_PUMP
	db 1, DESTINY_BOND
	db 1, WATER_GUN
	db 1, SPIKES
	db 1, TACKLE
	db 1, POISON_STING
	db 9, HARDEN
	db 9, MINIMIZE
	db 13, BUBBLE
	db 18, ROLLOUT
	db 23, HEADBUTT
	db 27, SUBMISSION
	db 33, BUBBLEBEAM
	db 37, FURY_CUTTER
	db 41, TAKE_DOWN
	db 46, SURF
	db 50, SLUDGE_BOMB
	db 53, DESTINY_BOND
	db 57, HYDRO_PUMP
else
	db 1, SPIKES
	db 1, TACKLE
	db 1, POISON_STING
	db 10, HARDEN
	db 10, MINIMIZE
	db 19, WATER_GUN
	db 28, PIN_MISSILE
	db 37, TAKE_DOWN
	db 46, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, QUICK_ATTACK
	db 1, LEER
	db 1, METAL_CLAW
	db 5, FOCUS_ENERGY
	db 9, PURSUIT
	db 13, FALSE_SWIPE
	db 17, AGILITY
	db 21, METAL_CLAW
	db 25, FURY_CUTTER
	db 29, SLASH
	db 33, RAZOR_WIND
	db 37, BARRIER
	db 41, LEECH_LIFE
	db 45, CRUNCH
	db 49, DOUBLE_KICK
	db 55, SWORDS_DANCE
else
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 24, AGILITY
	db 30, METAL_CLAW
	db 36, SLASH
	db 42, SWORDS_DANCE
	db 48, DOUBLE_TEAM
endc
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SPIKES
	db 1, WITHDRAW
	db 1, CONSTRICT
	db 1, BIDE
	db 1, ROLLOUT
	db 5, ENCORE
	db 9, WRAP
	db 12, SPIDER_WEB
	db 16, SAFEGUARD
	db 20, REST
	db 23, ROCK_THROW
	db 27, ACID
	db 32, FOCUS_ENERGY
	db 38, ROCK_SLIDE
	db 42, LEECH_LIFE
	db 46, MAGNITUDE
else
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 9, WRAP
	db 14, ENCORE
	db 23, SAFEGUARD
	db 28, BIDE
	db 37, REST
endc
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, ROCK_SMASH
	db 1, RAZOR_LEAF
	db 1, CRUNCH
	db 1, TACKLE
	db 1, LEER
	db 1, HORN_ATTACK
	db 1, ENDURE
	db 7, FAINT_ATTACK
	db 10, WING_ATTACK
	db 13, LEECH_LIFE
	db 16, BODY_SLAM
	db 19, COUNTER
	db 25, FURY_ATTACK
	db 28, VITAL_THROW
	db 31, PIN_MISSILE
	db 34, TAKE_DOWN
	db 37, MEGAHORN
	db 43, CROSS_CHOP
	db 46, REVERSAL
else
	db 1, TACKLE
	db 1, LEER
	db 6, HORN_ATTACK
	db 12, ENDURE
	db 19, FURY_ATTACK
	db 27, COUNTER
	db 35, TAKE_DOWN
	db 44, REVERSAL
	db 54, MEGAHORN
endc
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCRATCH
	db 1, LEER
	db 8, QUICK_ATTACK
	db 10, FAINT_ATTACK
	db 14, ICY_WIND
	db 16, FURY_SWIPES
	db 20, AGILITY
	db 22, METAL_CLAW
	db 25, SWORDS_DANCE
	db 28, BEAT_UP
	db 32, SCREECH
	db 35, SLASH
	db 40, THIEF
	db 45, ICE_PUNCH
else
	db 1, SCRATCH
	db 1, LEER
	db 9, QUICK_ATTACK
	db 17, SCREECH
	db 25, FAINT_ATTACK
	db 33, FURY_SWIPES
	db 41, AGILITY
	db 49, SLASH
	db 57, BEAT_UP
	db 65, METAL_CLAW
endc
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCRATCH
	db 1, LICK
	db 1, LEER
	db 8, FURY_SWIPES
	db 15, FAINT_ATTACK
	db 22, SWEET_SCENT
	db 29, SLASH
	db 36, CHARM
	db 43, REST
	db 43, SNORE
	db 50, THRASH
else
	db 1, SCRATCH
	db 1, LEER
	db 8, LICK
	db 15, FURY_SWIPES
	db 22, FAINT_ATTACK
	db 29, REST
	db 36, SLASH
	db 43, SNORE
	db 50, THRASH
endc
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SCRATCH
	db 1, LICK
	db 1, LEER
	db 8, FURY_SWIPES
	db 15, FAINT_ATTACK
	db 22, SWEET_SCENT
	db 29, SLASH
	db 38, CHARM
	db 46, REST
	db 46, SNORE
	db 52, THRASH
else
	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
	db 1, FURY_SWIPES
	db 8, LICK
	db 15, FURY_SWIPES
	db 22, FAINT_ATTACK
	db 29, REST
	db 39, SLASH
	db 49, SNORE
	db 59, THRASH
endc
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SMOG
	db 6, EMBER
	db 8, ROCK_THROW
	db 13, HARDEN
	db 15, FLAME_WHEEL
	db 20, HAZE
	db 22, ANCIENTPOWER
	db 27, SUNNY_DAY
	db 29, ROCK_SLIDE
	db 34, FIRE_PUNCH
	db 36, AMNESIA
	db 41, BODY_SLAM
	db 43, RECOVER
	db 48, FLAMETHROWER
	db 50, EARTHQUAKE
else
	db 1, SMOG
	db 8, EMBER
	db 15, ROCK_THROW
	db 22, HARDEN
	db 29, AMNESIA
	db 36, FLAMETHROWER
	db 43, ROCK_SLIDE
	db 50, BODY_SLAM
endc
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SMOG
	db 6, EMBER
	db 8, ROCK_THROW
	db 13, HARDEN
	db 15, FLAME_WHEEL
	db 20, HAZE
	db 22, ANCIENTPOWER
	db 27, SUNNY_DAY
	db 29, ROCK_SLIDE
	db 34, FIRE_PUNCH
	db 36, AMNESIA
	db 44, BODY_SLAM
	db 47, RECOVER
	db 51, FLAMETHROWER
	db 53, EARTHQUAKE
else
	db 1, SMOG
	db 1, EMBER
	db 1, ROCK_THROW
	db 8, EMBER
	db 15, ROCK_THROW
	db 22, HARDEN
	db 29, AMNESIA
	db 36, FLAMETHROWER
	db 48, ROCK_SLIDE
	db 60, BODY_SLAM
endc
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 5, GROWL
	db 8, POWDER_SNOW
	db 11, MUD_SLAP
	db 14, ENDURE
	db 18, MAGNITUDE
	db 21, ICY_WIND
	db 24, AURORA_BEAM
	db 28, TAKE_DOWN
	db 35, MIST
	db 37, EARTHQUAKE
	db 40, FLAIL
	db 44, BLIZZARD
	db 48, AMNESIA
else
	db 1, TACKLE
	db 10, POWDER_SNOW
	db 19, ENDURE
	db 28, TAKE_DOWN
	db 37, MIST
	db 46, BLIZZARD
	db 55, AMNESIA
endc
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, FURY_ATTACK
	db 1, ANCIENTPOWER
	db 1, PECK
	db 1, TACKLE
	db 5, GROWL
	db 8, POWDER_SNOW
	db 11, MUD_SLAP
	db 14, ENDURE
	db 18, MAGNITUDE
	db 21, ICY_WIND
	db 24, AURORA_BEAM
	db 28, TAKE_DOWN
	db 38, MIST
	db 42, THRASH
	db 45, FLAIL
	db 47, EARTHQUAKE
	db 51, BLIZZARD
	db 55, AMNESIA
else
	db 1, HORN_ATTACK
	db 1, POWDER_SNOW
	db 1, ENDURE
	db 10, POWDER_SNOW
	db 19, ENDURE
	db 28, TAKE_DOWN
	db 33, FURY_ATTACK
	db 42, MIST
	db 56, BLIZZARD
	db 70, AMNESIA
	db 0 ; no more level-up moves
endc

CorsolaEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, HARDEN
	db 4, BUBBLE
	db 8, RECOVER
	db 10, BUBBLEBEAM
	db 15, ANCIENTPOWER
	db 20, SPIKE_CANNON
	db 23, FOCUS_ENERGY
	db 27, DEFENSE_CURL
	db 31, ROLLOUT
	db 35, ENDURE
	db 41, ROCK_SLIDE
	db 45, MIRROR_COAT
	db 47, MAGNITUDE
	db 50, FLAIL
else
	db 1, TACKLE
	db 7, HARDEN
	db 13, BUBBLE
	db 19, RECOVER
	db 25, BUBBLEBEAM
	db 31, SPIKE_CANNON
	db 37, MIRROR_COAT
	db 43, ANCIENTPOWER
endc
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, WATER_GUN
	db 6, LOCK_ON
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 18, BUBBLEBEAM
	db 22, FOCUS_ENERGY
	db 26, SURF
	db 30, LEECH_LIFE
	db 34, ICE_BEAM
	db 38, RAZOR_LEAF
	db 42, HYDRO_PUMP
	db 46, HYPER_BEAM
else
	db 1, WATER_GUN
	db 11, LOCK_ON
	db 22, PSYBEAM
	db 22, AURORA_BEAM
	db 22, BUBBLEBEAM
	db 33, FOCUS_ENERGY
	db 44, ICE_BEAM
	db 55, HYPER_BEAM
endc
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, OCTAZOOKA
	db 1, WATER_GUN
	db 6, LOCK_ON
	db 10, PSYBEAM
	db 14, AURORA_BEAM
	db 18, BUBBLEBEAM
	db 22, FOCUS_ENERGY
	db 29, SURF
	db 33, LEECH_LIFE
	db 37, ICE_BEAM
	db 41, RAZOR_LEAF
	db 45, HYDRO_PUMP
	db 49, HYPER_BEAM
else
	db 1, WATER_GUN
	db 11, CONSTRICT
	db 22, PSYBEAM
	db 22, AURORA_BEAM
	db 22, BUBBLEBEAM
	db 25, OCTAZOOKA
	db 38, FOCUS_ENERGY
	db 54, ICE_BEAM
	db 70, HYPER_BEAM
endc
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, PRESENT
	db 25, DRILL_PECK
else
	db 1, PRESENT
endc
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, PSYBEAM
	db 1, TWINEEDLE
	db 1, TACKLE
	db 1, BUBBLE,
	db 1, SUPERSONIC
	db 1, BUBBLEBEAM
	db 1, RECOVER
	db 3, SUPERSONIC
	db 7, BUBBLEBEAM
	db 11, CONFUSE_RAY
	db 14, WING_ATTACK
	db 16, HEADBUTT
	db 19, WATERFALL
	db 23, BARRIER
	db 27, TAKE_DOWN
	db 32, AGILITY
	db 36, WING_ATTACK
	db 39, RECOVER
	db 46, FLY
	db 49, HYDRO_PUMP
else
	db 1, TACKLE
	db 1, BUBBLE
	db 10, SUPERSONIC
	db 18, BUBBLEBEAM
	db 25, TAKE_DOWN
	db 32, AGILITY
	db 40, WING_ATTACK
	db 49, CONFUSE_RAY
endc
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, LEER
	db 1, PECK
	db 6, SAND_ATTACK
	db 9, METAL_CLAW
	db 12, WING_ATTACK
	db 17, FURY_ATTACK
	db 20, FAINT_ATTACK
	db 23, SWIFT
	db 28, SPIKES
	db 31, AGILITY
	db 34, STEEL_WING
	db 39, SLASH
	db 42, SCREECH
	db 45, MINIMIZE
	db 50, AEROBLAST
	db 53, CRUNCH
else
	db 1, LEER
	db 1, PECK
	db 13, SAND_ATTACK
	db 19, SWIFT
	db 25, AGILITY
	db 37, FURY_ATTACK
	db 49, STEEL_WING
endc
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, LEER
	db 1, EMBER
	db 4, FOCUS_ENERGY
	db 8, SMOG
	db 13, ROAR
	db 16, BITE
	db 20, HEADBUTT
	db 25, PURSUIT
	db 28, FIRE_SPIN
	db 32, FAINT_ATTACK
	db 37, THIEF
	db 42, FLAMETHROWER
	db 49, CRUNCH
	db 52, AMNESIA
	db 56, FIRE_BLAST
else
	db 1, LEER
	db 1, EMBER
	db 7, ROAR
	db 13, SMOG
	db 20, BITE
	db 27, FAINT_ATTACK
	db 35, FLAMETHROWER
	db 43, CRUNCH
endc
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, LEER
	db 1, EMBER
	db 4, FOCUS_ENERGY
	db 8, SMOG
	db 13, ROAR
	db 16, BITE
	db 20, HEADBUTT
	db 28, PURSUIT
	db 31, FIRE_SPIN
	db 35, FAINT_ATTACK
	db 40, THIEF
	db 45, FLAMETHROWER
	db 52, CRUNCH
	db 55, AMNESIA
	db 59, FIRE_BLAST
else
	db 1, LEER
	db 1, EMBER
	db 7, ROAR
	db 13, SMOG
	db 20, BITE
	db 30, FAINT_ATTACK
	db 41, FLAMETHROWER
	db 52, CRUNCH
endc
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, HYDRO_PUMP
	db 1, BUBBLE
	db 1, SMOKESCREEN
	db 1, LEER
	db 5, SMOKESCREEN
	db 9, LEER
	db 13, WATER_GUN
	db 17, TWISTER
	db 21, BUBBLEBEAM
	db 26, FOCUS_ENERGY
	db 31, WATERFALL
	db 38, AGILITY
	db 46, DRAGONBREATH
	db 55, HYDRO_PUMP
else
	db 1, BUBBLE
	db 1, SMOKESCREEN
	db 1, LEER
	db 1, WATER_GUN
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 40, AGILITY
	db 51, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 6, FLAIL
	db 10, ROLLOUT
	db 15, RECOVER
	db 19, ENDURE
	db 24, SLAM
	db 28, TAKE_DOWN
	db 33, CHARM
	db 37, DOUBLE_KICK
	db 42, DOUBLE_EDGE
else
	db 1, TACKLE
	db 1, GROWL
	db 9, DEFENSE_CURL
	db 17, FLAIL
	db 25, TAKE_DOWN
	db 33, ROLLOUT
	db 41, ENDURE
	db 49, DOUBLE_EDGE
endc
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, FURY_ATTACK
	db 1, HORN_ATTACK
	db 1, MAGNITUDE
	db 1, GROWL
	db 1, DEFENSE_CURL
	db 6, RAPID_SPIN
	db 10, ROLLOUT
	db 15, FAINT_ATTACK
	db 19, THIEF
	db 24, SLAM
	db 30, MAGNITUDE
	db 37, SCARY_FACE
	db 43, EARTHQUAKE
	db 50, DOUBLE_EDGE
else
	db 1, HORN_ATTACK
	db 1, GROWL
	db 9, DEFENSE_CURL
	db 17, FLAIL
	db 25, FURY_ATTACK
	db 33, ROLLOUT
	db 41, RAPID_SPIN
	db 49, EARTHQUAKE
endc
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, ZAP_CANNON
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 1, DEFENSE_CURL
	db 7, PSYBEAM
	db 12, AGILITY
	db 18, RECOVER
	db 23, SPARK
	db 29, LEECH_LIFE
	db 35, SCREECH
	db 40, THUNDERBOLT
	db 45, LOCK_ON
	db 50, TRI_ATTACK
	db 60, ZAP_CANNON
	db 66, HYPER_BEAM
else
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 20, RECOVER
	db 24, DEFENSE_CURL
	db 32, LOCK_ON
	db 36, TRI_ATTACK
	db 44, ZAP_CANNON
endc
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 3, LEER
	db 7, LICK
	db 10, HYPNOSIS
	db 13, STOMP
	db 16, SAND_ATTACK
	db 21, TAKE_DOWN
	db 23, CONFUSE_RAY
	db 27, GROWTH
	db 35, PSYBEAM
	db 42, JUMP_KICK
	db 51, CHARM
else
	db 1, TACKLE
	db 8, LEER
	db 15, HYPNOSIS
	db 23, STOMP
	db 31, SAND_ATTACK
	db 40, TAKE_DOWN
	db 49, CONFUSE_RAY
endc
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, ROLLING_KICK
	db 1, ENDURE
	db 1, CROSS_CHOP
	db 1, DETECT
	db 1, VITAL_THROW
	db 1, FOCUS_ENERGY
	db 1, PURSUIT
	db 1, QUICK_ATTACK
	db 6, FOCUS_ENERGY
	db 10, PURSUIT
	db 15, QUICK_ATTACK
	db 19, RAPID_SPIN
	db 24, FAINT_ATTACK
	db 28, COUNTER
	db 33, TRIPLE_KICK
	db 37, AGILITY
	db 45, DETECT
	db 55, CROSS_CHOP
	db 60, ENDURE
else
	db 1, ROLLING_KICK
	db 7, FOCUS_ENERGY
	db 13, PURSUIT
	db 19, QUICK_ATTACK
	db 25, RAPID_SPIN
	db 31, COUNTER
	db 37, AGILITY
	db 43, DETECT
	db 49, TRIPLE_KICK
endc
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, POUND
	db 1, LICK
	db 1, LOVELY_KISS
	db 5, LICK
	db 8, LOVELY_KISS
	db 11, POWDER_SNOW
	db 15, DOUBLESLAP
	db 18, SING
	db 21, PSYBEAM
	db 25, MEAN_LOOK
	db 28, SCREECH
	db 30, VITAL_THROW
	db 35, ICE_PUNCH
	db 41, BODY_SLAM
	db 45, PERISH_SONG
	db 48, BLIZZARD
else
	db 1, POUND
	db 1, LICK
	db 9, SWEET_KISS
	db 13, POWDER_SNOW
	db 21, CONFUSION
	db 25, SING
	db 33, MEAN_LOOK
	db 37, PSYCHIC_M
	db 45, PERISH_SONG
	db 49, BLIZZARD
endc
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, QUICK_ATTACK
	db 1, LEER
	db 5, THUNDERSHOCK
	db 8, LOW_KICK
	db 12, SWIFT
	db 15, SPARK
	db 20, THUNDER_WAVE
	db 25, LIGHT_SCREEN
	db 29, THUNDERPUNCH
	db 35, SCREECH
	db 40, THUNDERBOLT
	db 46, THUNDER
else
	db 1, QUICK_ATTACK
	db 1, LEER
	db 9, THUNDERPUNCH
	db 17, LIGHT_SCREEN
	db 25, SWIFT
	db 33, SCREECH
	db 41, THUNDERBOLT
	db 49, THUNDER
endc
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SMOG
	db 1, LEER
	db 5, EMBER
	db 8, SMOKESCREEN
	db 12, FAINT_ATTACK
	db 15, FIRE_SPIN
	db 19, HAZE
	db 24, CONFUSE_RAY
	db 29, FIRE_PUNCH
	db 35, SUNNY_DAY
	db 40, FLAMETHROWER
	db 46, FIRE_BLAST
else
	db 1, EMBER
	db 7, LEER
	db 13, SMOG
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 31, SUNNY_DAY
	db 37, FLAMETHROWER
	db 43, CONFUSE_RAY
	db 49, FIRE_BLAST
endc
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, TACKLE
	db 3, GROWL
	db 5, DEFENSE_CURL
	db 8, STOMP
	db 11, MILK_DRINK
	db 15, BIDE
	db 19, ROLLOUT
	db 24, BODY_SLAM
	db 29, PSYBEAM
	db 35, LOCK_ON
	db 41, IRON_TAIL
	db 48, RECOVER
	db 40, VITAL_THROW
else
	db 1, TACKLE
	db 4, GROWL
	db 8, DEFENSE_CURL
	db 13, STOMP
	db 19, MILK_DRINK
	db 26, BIDE
	db 34, ROLLOUT
	db 43, BODY_SLAM
	db 53, HEAL_BELL
endc
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, DEFENSE_CURL
	db 1, DOUBLE_EDGE
	db 1, GROWL
	db 1, POUND
	db 5, TAIL_WHIP
	db 9, SAFEGUARD
	db 12, DOUBLESLAP
	db 16, SOFTBOILED
	db 21, MINIMIZE
	db 26, TAKE_DOWN
	db 31, SING
	db 35, PURSUIT
	db 39, RECOVER
	db 44, EGG_BOMB
	db 50, LIGHT_SCREEN
	db 55, DOUBLE_EDGE
else
	db 1, POUND
	db 4, GROWL
	db 7, TAIL_WHIP
	db 10, SOFTBOILED
	db 13, DOUBLESLAP
	db 18, MINIMIZE
	db 23, SING
	db 28, EGG_BOMB
	db 33, DEFENSE_CURL
	db 40, LIGHT_SCREEN
	db 47, DOUBLE_EDGE
endc
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, PSYCHIC_M
	db 1, THUNDERBOLT
	db 1, BITE
	db 1, LEER
	db 8, THUNDERSHOCK
	db 15, ROAR
	db 22, QUICK_ATTACK
	db 29, SPARK
	db 36, REFLECT
	db 43, CRUNCH
	db 50, THUNDERPUNCH
	db 57, THUNDERBOLT
	db 64, PSYCHIC_M
	db 71, RAIN_DANCE
	db 78, THUNDER
else
	db 1, BITE
	db 1, LEER
	db 11, THUNDERSHOCK
	db 21, ROAR
	db 31, QUICK_ATTACK
	db 41, SPARK
	db 51, REFLECT
	db 61, CRUNCH
	db 71, THUNDER
endc
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SACRED_FIRE
	db 1, FIRE_BLAST
	db 1, PSYCHIC_M
	db 1, FLAMETHROWER
	db 1, BITE
	db 1, LEER
	db 8, EMBER
	db 15, ROAR
	db 22, FIRE_SPIN
	db 29, STOMP
	db 36, FLAMETHROWER
	db 43, SWAGGER
	db 50, FIRE_PUNCH
	db 60, PSYCHIC_M
	db 71, FIRE_BLAST
	db 78, SACRED_FIRE
else
	db 1, BITE
	db 1, LEER
	db 11, EMBER
	db 21, ROAR
	db 31, FIRE_SPIN
	db 41, STOMP
	db 51, FLAMETHROWER
	db 61, SWAGGER
	db 71, FIRE_BLAST
endc
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, BITE
	db 1, LEER
	db 1, BUBBLEBEAM
	db 1, RAIN_DANCE
	db 8, BUBBLEBEAM
	db 15, RAIN_DANCE
	db 22, GUST
	db 29, AURORA_BEAM
	db 36, MIST
	db 43, MIRROR_COAT
	db 50, ICE_BEAM
	db 57, AEROBLAST
	db 66, HYDRO_PUMP
	db 74, BLIZZARD
else
	db 1, BITE
	db 1, LEER
	db 11, BUBBLEBEAM
	db 21, RAIN_DANCE
	db 31, GUST
	db 41, AURORA_BEAM
	db 51, MIST
	db 61, MIRROR_COAT
	db 71, HYDRO_PUMP
endc
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 30, PUPITAR
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, BITE
	db 1, LEER
	db 5, SANDSTORM
	db 10, SCREECH
	db 15, SLAM
	db 19, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, THRASH
	db 35, THIEF
	db 41, CRUNCH
	db 46, EARTHQUAKE
	db 50, ROCK_THROW
	db 55, HYPER_BEAM	
else
	db 1, BITE
	db 1, LEER
	db 8, SANDSTORM
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 36, SCARY_FACE
	db 43, CRUNCH
	db 50, EARTHQUAKE
	db 57, HYPER_BEAM
endc
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 55, TYRANITAR
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, SANDSTORM
	db 1, BITE
	db 1, LEER
	db 5, SANDSTORM
	db 10, SCREECH
	db 15, SLAM
	db 19, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, THRASH
	db 38, THIEF
	db 46, CRUNCH
	db 52, EARTHQUAKE
	db 60, ROCK_THROW
	db 67, HYPER_BEAM
else
	db 1, BITE
	db 1, LEER
	db 1, SANDSTORM
	db 1, SCREECH
	db 8, SANDSTORM
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 38, SCARY_FACE
	db 47, CRUNCH
	db 56, EARTHQUAKE
	db 65, HYPER_BEAM
endc
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, THUNDERPUNCH
	db 1, ICE_PUNCH
	db 1, FIRE_PUNCH
	db 1, SANDSTORM
	db 1, BITE
	db 1, LEER
	db 5, SANDSTORM
	db 10, SCREECH
	db 15, SLAM
	db 19, ROCK_SLIDE
	db 23, SCARY_FACE
	db 28, THRASH
	db 38, THIEF
	db 46, CRUNCH
	db 54, EARTHQUAKE
	db 63, ROCK_THROW
	db 72, HYPER_BEAM
else
	db 1, BITE
	db 1, LEER
	db 1, SANDSTORM
	db 1, SCREECH
	db 8, SANDSTORM
	db 15, SCREECH
	db 22, ROCK_SLIDE
	db 29, THRASH
	db 38, SCARY_FACE
	db 47, CRUNCH
	db 61, EARTHQUAKE
	db 75, HYPER_BEAM
endc
	db 0 ; no more level-up moves

LugiaEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, WHIRLWIND
	db 9, GUST
	db 15, OUTRAGE
	db 23, PSYCHIC_M
	db 29, RAIN_DANCE
	db 37, HYDRO_PUMP
	db 43, AEROBLAST
	db 50, CRUNCH
	db 57, ANCIENTPOWER
	db 65, SAFEGUARD
	db 71, RECOVER
	db 79, FUTURE_SIGHT
	db 85, SKY_ATTACK
else
	db 1, AEROBLAST
	db 11, SAFEGUARD
	db 22, GUST
	db 33, RECOVER
	db 44, HYDRO_PUMP
	db 55, RAIN_DANCE
	db 66, SWIFT
	db 77, WHIRLWIND
	db 88, ANCIENTPOWER
	db 99, FUTURE_SIGHT
endc
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, WHIRLWIND
	db 9, GUST
	db 15, SKY_ATTACK
	db 23, PSYCHIC_M
	db 29, SUNNY_DAY
	db 37, FIRE_BLAST
	db 43, SACRED_FIRE
	db 50, CRUNCH
	db 57, ANCIENTPOWER
	db 65, SAFEGUARD
	db 71, RECOVER
	db 79, FUTURE_SIGHT
	db 85, SKY_ATTACK
else
	db 1, SACRED_FIRE
	db 11, SAFEGUARD
	db 22, GUST
	db 33, RECOVER
	db 44, FIRE_BLAST
	db 55, SUNNY_DAY
	db 66, SWIFT
	db 77, WHIRLWIND
	db 88, ANCIENTPOWER
	db 99, FUTURE_SIGHT
endc
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
if DEF(_CRYSTAL11_HACK)
	db 1, LEECH_SEED
	db 1, CONFUSION
	db 1, RECOVER
	db 1, HEAL_BELL
	db 10, SAFEGUARD
	db 19, RAZOR_LEAF
	db 28, ANCIENTPOWER
	db 37, BATON_PASS
	db 46, SYNTHESIS
	db 55, SUNNY_DAY
	db 64, FUTURE_SIGHT
	db 73, SOLARBEAM
	db 82, PERISH_SONG
else
	db 1, LEECH_SEED
	db 1, CONFUSION
	db 1, RECOVER
	db 1, HEAL_BELL
	db 10, SAFEGUARD
	db 20, ANCIENTPOWER
	db 30, FUTURE_SIGHT
	db 40, BATON_PASS
	db 50, PERISH_SONG
endc
	db 0 ; no more level-up moves
