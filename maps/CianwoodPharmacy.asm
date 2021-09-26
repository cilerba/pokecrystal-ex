	object_const_def
	const CIANWOODPHARMACY_PHARMACIST
	const CIANWOODPHARMACY_ROCKETA
	const CIANWOODPHARMACY_ROCKETB
	const CIANWOODPHARMACY_ROCKETC

CianwoodPharmacy_MapScripts:
	def_scene_scripts
	scene_script .RocketEvent
	scene_script .DummyScene

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .RocketCheckCallback

.RocketCheckCallback:
	checkevent EVENT_POST_CHUCK_ROCKET_DEFEATED
	iftrue .HideRockets
	sjump .PlaceRockets
	endcallback

.PlaceRockets:
	clearevent EVENT_POST_CHUCK_ROCKET
	endcallback

.HideRockets:
	setevent EVENT_POST_CHUCK_ROCKET
	endcallback

.RocketEvent:
	checkevent EVENT_BEAT_CHUCK
	iffalse .End
	checkevent EVENT_POST_CHUCK_ROCKET_DEFEATED
	iftrue .End

	playmusic MUSIC_ROCKET_ENCOUNTER

	wait 5

	opentext
	writetext SceneRocketStartText
	waitbutton
	closetext

	showemote EMOTE_SHOCK, CIANWOODPHARMACY_ROCKETB, 15

	applymovement CIANWOODPHARMACY_ROCKETB, CianwoodRocket_LookDown
	applymovement CIANWOODPHARMACY_ROCKETA, CianwoodRocket_LookDown
	applymovement CIANWOODPHARMACY_ROCKETC, CianwoodRocket_LookDown

	opentext
	writetext SceneRocketContinueText
	waitbutton
	closetext

	applymovement CIANWOODPHARMACY_ROCKETA, CianwoodRocket_MoveDown
	
	opentext
	writetext SceneRocketABattleText
	waitbutton
	closetext

	winlosstext SceneRocketABattleWinText, 0
	setlasttalked CIANWOODPHARMACY_ROCKETA
	loadtrainer GRUNTF, GRUNTF_6
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle

	applymovement CIANWOODPHARMACY_ROCKETA, CianwoodRocket_MoveUpLock

	opentext
	writetext SceneRocketCBattleText
	waitbutton
	closetext

	applymovement CIANWOODPHARMACY_ROCKETC, CianwoodRocket_MoveDown

	opentext
	writetext SceneRocketCBattleText2
	waitbutton
	closetext

	winlosstext SceneRocketCBattleWinText, 0
	setlasttalked CIANWOODPHARMACY_ROCKETC
	loadtrainer GRUNTM, GRUNTM_32
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	
	applymovement CIANWOODPHARMACY_ROCKETC, CianwoodRocket_MoveUpLock

	applymovement CIANWOODPHARMACY_ROCKETB, CianwoodRocket_MoveDown
	opentext
	writetext SceneRocketBBattleText
	waitbutton
	closetext

	winlosstext SceneRocketBBattleWinText, 0
	setlasttalked CIANWOODPHARMACY_ROCKETB
	loadtrainer EXECUTIVEM, EXECUTIVEM_5
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	
	applymovement CIANWOODPHARMACY_ROCKETB, CianwoodRocket_MoveUpLock

	opentext
	writetext SceneRocketEndText
	waitbutton
	closetext

	sjump SceneRocketEnd
.End
	end

.DummyScene:
	end

CianwoodRocket_MoveUp:
	step UP
	step_end

CianwoodRocket_MoveDown:
	step DOWN
	step_end

CianwoodRocket_MoveUpLock:
	fix_facing
	step UP
	step_end

CianwoodRocket_LookDown:
	turn_step DOWN
	step_end

SceneRocketEnd:
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear CIANWOODPHARMACY_ROCKETA
	disappear CIANWOODPHARMACY_ROCKETB
	disappear CIANWOODPHARMACY_ROCKETC
	setevent EVENT_POST_CHUCK_ROCKET_DEFEATED
	pause 10
	special FadeInQuickly
	special RestartMapMusic
	setscene SCENE_CIANWOODPHARMACY_ROCKET_NOTHING
	end

CianwoodPharmacist:
	faceplayer
	opentext
	checkevent EVENT_GOT_SECRETPOTION_FROM_PHARMACY
	iftrue .Mart
	checkevent EVENT_BEAT_CHUCK
	iffalse .Mart
	checkevent EVENT_POST_CHUCK_ROCKET
	iffalse .Mart
	writetext PharmacistGiveSecretpotionText
	promptbutton
	giveitem SECRETPOTION
	writetext ReceivedSecretpotionText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_SECRETPOTION_FROM_PHARMACY
	writetext PharmacistDescribeSecretpotionText
	waitbutton
	closetext
	end

.Mart:
	pokemart MARTTYPE_PHARMACY, MART_CIANWOOD
	closetext
	end

CianwoodRocketA:
	end

CianwoodRocketB:
	end

CianwoodRocketC:
	end

CianwoodPharmacyBookshelf:
	jumpstd DifficultBookshelfScript

PharmacistGiveSecretpotionText:
	text "You were incred-"
	line "ible!"
	
	para "I truly owe you."

	para "Oh, the SECRET-"
	line "POTION?"

	para "Don't worry, I"
	line "gave them a fake."

	para "I would really"
	line "like you to have"
	cont "the real one."

	para "I trust you with"
	line "delivering it to"
	cont "AMPHAROS."

	done

ReceivedSecretpotionText:
	text "<PLAYER> received"
	line "SECRETPOTION."
	done

PharmacistDescribeSecretpotionText:
	text "My SECRETPOTION is"
	line "a tad too strong."

	para "I only offer it in"
	line "an emergency."
	done

SceneRocketStartText:
	text "Ha! Now that we"
	line "have the SECRET-"
	cont "POTION, nobody"

	para "can heal the"
	line "sick AMPHAROS"
	cont "in OLIVINE CITY."

	para "This will be the"
	line "perfect distrac-"
	cont "tion!"

	done

SceneRocketContinueText:
	text "You?"

	para "What are you"
	line "doing here?"

	para "Nevermind. You"
	line "heard our plans."

	para "Now it's time for"
	line "us to defeat you"
	cont "in a battle."

	done

SceneRocketABattleText:
	text "You won't stand a"
	line "chance."
	done

SceneRocketCBattleText:
	text "Guess I'm up now."

	done

SceneRocketCBattleText2:
	text "Trust me, you"
	line "won't get lucky"
	cont "this time."
	done

SceneRocketBBattleText:
	text "Fine. If you two"
	line "can't do your"
	
	para "job, I'll have"
	line "to step in."
	
	done

SceneRocketABattleWinText:
	text "My partners will"
	line "take you down."
	done

SceneRocketCBattleWinText:
	text "Sorry, boss…"
	done

SceneRocketBBattleWinText:
	text "That's… impos-"
	line "sible."
	done

SceneRocketEndText:
	text "You got lucky,"
	line "kid."
	
	para "Regardless, we"
	line "still have the"
	cont "SECRETPOTION."

	para "We're on to big-"
	line "ger things now."

	para "This isn't the"
	line "last you'll be"
	cont "hearing from us."
	
	done

CianwoodPharmacy_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 4
	warp_event  3,  7, CIANWOOD_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, CianwoodPharmacyBookshelf
	bg_event  1,  1, BGEVENT_READ, CianwoodPharmacyBookshelf

	def_object_events
	object_event  2,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodPharmacist, -1
	object_event  1,  5, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodRocketA, EVENT_POST_CHUCK_ROCKET
	object_event  2,  5, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodRocketB, EVENT_POST_CHUCK_ROCKET
	object_event  3,  5, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodRocketC, EVENT_POST_CHUCK_ROCKET
