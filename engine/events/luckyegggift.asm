LuckyEggGift:
    ld hl, LuckyEggGiftText
    call PrintText
    call YesNoBox
    jp c, .cancel
    
    ld hl, LuckyEggGiftWhichMonText
    call PrintText
    farcall SelectMonFromParty
    jr c, .cancel

    ld a, [wCurPartySpecies]
    cp EGG
    jr nz, .notEgg

    ld hl, LuckyEggGiftSuccessText
    call PrintText

    ld a, LUCKY_EGG
    ld [wCurItem], a
	ld a, $1
	ld [wItemQuantityChange], a
	ld hl, wNumItems
	call ReceiveItem
    jr nc, .bagFull

	xor a ; REMOVE_PARTY
	ld [wPokemonWithdrawDepositParameter], a
	farcall RemoveMonFromPartyOrBox

    ld de, SFX_ITEM
	call PlaySFX


    ld a, LUCKY_EGG
	ld [wNamedObjectIndex], a
	call GetItemName
    ld de, wStringBuffer1
	ld a, STRING_BUFFER_4
    ld hl, wStringBuffer3
	ld bc, STRING_BUFFER_LENGTH
	call AddNTimes
	call CopyName2

    ld hl, LuckyEggGiftReceivedItemText
    call PrintText

	call WaitSFX

    ld de, EVENT_GOT_LUCKY_EGG
	ld b, SET_FLAG
	call EventFlagAction
    ret

.notEgg
    ld hl, LuckyEggGiftNotEggText
    call PrintText
    ret

.cancel
    ld hl, LuckyEggGiftYourLossText
    call PrintText
    ret

.bagFull
    ld hl, LuckyEggGiftBagFullText
    call PrintText
    ret

LuckyEggGiftText:
    text_far _LuckyEggGiftText
    text_end

LuckyEggGiftWhichMonText:
    text_far _LuckyEggGiftWhichMonText
    text_end

LuckyEggGiftNotEggText:
    text_far _LuckyEggGiftNotEggText
    text_end

LuckyEggGiftYourLossText:
    text_far _LuckyEggGiftYourLossText
    text_end

LuckyEggGiftSuccessText:
    text_far _LuckyEggGiftSuccessText
    text_end

LuckyEggGiftBagFullText:
    text_far _LuckyEggGiftBagFullText
    text_end

LuckyEggGiftReceivedItemText:
    text_far _ReceivedItemText
    text_end
