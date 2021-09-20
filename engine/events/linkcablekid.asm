LinkCableKid:
    ; Check if the LINKCABLEKID flag has been set
    ld de, EVENT_LINKCABLEKID_SET
    ld b, CHECK_FLAG
	call EventFlagAction
    ld a, c
	and a
	call z, .newType ; If the flag hasn't been set, generate a new Type

    ; Get the type's name
    ld a, [wLinkCableKidType]
    ld [wNamedObjectIndex], a
	farcall GetTypeName

    ; Prints the greeting text
    ld hl, LinkCableKidGreeting
    call PrintText
    call YesNoBox
    jp c, .cancel

    ; Select a Pokemon from the party
    ld b, 6
    farcall SelectMonFromParty
    jr c, .cancel

    ; Check if the selection is an egg
    ld a, [wCurPartySpecies]
    cp EGG
    jr z, .cancel

    ; Check if the selection is a Pokemon
    call IsAPokemon
    jr c, .cancel

    ; Get the base data for the Pokemon and check its type
    ld a, [wCurPartySpecies]
    ld [wCurSpecies], a
    call GetBaseData
    ld hl, wLinkCableKidType
    ld a, [wBaseType1] ; Check for the first type
    cp [hl]
    jr z, .success
    ld a, [wBaseType2] ; Check for the second type
    cp [hl]
    jr z, .success
    jr .wrongType

.cancel
    ld hl, LinkCableKidCancel
    call PrintText
    ret

.wrongType
    ld a, [wLinkCableKidType]
    ld [wNamedObjectIndex], a
	farcall GetTypeName

    ld hl, LinkCableKidWrongType
    call PrintText
    ret

.success
    ld de, EVENT_LINKCABLEKID_SET
    ld b, RESET_FLAG
	call EventFlagAction
    
    ld a, [wLinkCableKidType]
    ld [wNamedObjectIndex], a
	farcall GetTypeName

    ld hl, Script_ReceiveItem
    call CallScript
    scf
    ret

.newType
    ld a, 17
    call RandomRange

    ld e, a
    ld d, 0
    ld hl, LinkCableKidTypesTable
    add hl, de
    ld a, [hl]
    ; Check if certain types are selected, alter the results to avoid them
    ; Probably a better way to do this
    cp ICE
    call z, .decType
    cp DRAGON
    call z, .incType
    cp STEEL
    call z, .decType
    ld [wLinkCableKidType], a
    
    ld de, EVENT_LINKCABLEKID_SET
	ld b, SET_FLAG
	call EventFlagAction

    ret

.incType
    inc a
    ret

.decType
    dec a
    ret
    
Script_ReceiveItem:
    writetext LinkCableKidSuccess
    waitbutton
	verbosegiveitem LINK_CABLE
	iffalse .BagFull
    closetext
	end

.BagFull
    writetext LinkCableKidCancel
    waitbutton
    closetext
    end

LinkCableKidGreeting:
	text "I really want to"
	line "explore JOHTO"
	cont "and meet all"
	cont "kinds of #MON"

	para "but mom says I'm"
	line "too young."

	para "Will you show me"
	line "a @"
    text_ram wStringBuffer1
    text " type?"
	done

LinkCableKidCancel:
    text "Oh…"
    done

LinkCableKidWrongType:
    text "Hey…"
    
    para "That's not a"
    line "@"
    text_ram wStringBuffer1
    text " type!"
    done

LinkCableKidSuccess:
    text "Whoa…"

    para "A @"
	text_ram wStringBuffer1
    text " type!"

    para "Thank you!"

	para "Here, you can"
	line "have this."
    done

LinkCableKidBagFull:
    text "Hey your bag is"
    line "full!"
    done

LinkCableKidTypesTable:
    table_width 1, LinkCableKidTypesTable
	db NORMAL
	db FIRE
	db WATER
	db GRASS
	db ELECTRIC
	db ICE
	db FIGHTING
	db POISON
	db GROUND
	db FLYING
	db PSYCHIC_TYPE
	db BUG
	db ROCK
	db GHOST
	db DRAGON
	db DARK
	db STEEL
    assert_table_length NUM_TYPES