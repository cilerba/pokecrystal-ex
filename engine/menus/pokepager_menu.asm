    const_def
    const POKEPAGER_FLASH
    const POKEPAGER_CUT
    const POKEPAGER_FLY
    const POKEPAGER_STRENGTH
    const POKEPAGER_SURF
    const POKEPAGER_WHIRLPOOL
    const POKEPAGER_WATERFALL

    
PokePager::
	ld hl, Script_ExitMenu
    call QueueScript
    ld a, $1
    ld [wFieldMoveSucceeded], a
    ret

Script_ExitMenu:
	reloadmappart
	special UpdateTimePals
    callasm _PokePager
	reloadmappart
	special UpdateTimePals
    end 

_PokePager:
    ld hl, .MenuHeader
	call LoadMenuHeader
	call .SetUpMenuItems
.loop
    xor a
    ldh [hBGMapMode], a
    ld [wWhichIndexSet], a
    call DoNthMenu
    jr c, .Exit
    ld a, [wMenuSelection]
    ld hl, .Items
    call MenuJumptable
    ld a, [wFieldMoveSucceeded]
    and a
    jr z, .loop

.Exit:
    
	ld [wUsingHMItem], a
    cp 1
    ret z
	call CloseWindow
	xor a
	ld [wFieldMoveSucceeded], a
	ret

.MenuHeader:
    db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 12, SCREEN_HEIGHT - 1
    dw .MenuData
    db 1 ; default option

.MenuData
    db STATICMENU_CURSOR | STATICMENU_WRAP ; flags
    dn 0, 0
    dw wPPMenuItems
    dw .PPString
    dw .Items

.Items:
    dw PokePager_Flash,         .FlashString
    dw PokePager_Cut,           .CutString
    dw PokePager_Fly,           .FlyString
    dw PokePager_Strength,      .StrengthString
    dw PokePager_Surf,          .SurfString
    dw PokePager_Whirlpool,     .WhirlpoolString
    dw PokePager_Waterfall,     .WaterfallString

.FlashString:       db "AMPHAROS@"
.CutString:         db "SCYTHER@"
.FlyString:         db "PIDGEOT@"
.StrengthString     db "PRIMEAPE@"
.SurfString         db "LAPRAS@"
.WhirlpoolString    db "FERALIGATR@"
.WaterfallString    db "GYARADOS@"

.PPString:
	push de
	ld a, [wMenuSelection]
	call .GetMenuAccountTextPointer
	inc hl
	inc hl
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	call PlaceString
	ret

.GetMenuAccountTextPointer:
	ld e, a
	ld d, 0
	ld hl, wMenuDataPointerTableAddr
	ld a, [hli]
	ld h, [hl]
	ld l, a
rept 4
	add hl, de
endr
	ret

.SetUpMenuItems:
    xor a
    ld [wWhichIndexSet], a
    call .FillMenuList

    ld a, [wUnlockedFLASH] ; Checks to see if we've unlocked the HM
	cp 1
	jr c, .noFlash
    ld a, POKEPAGER_FLASH
    call .AppendMenuList
.noFlash

    ld a, [wUnlockedCUT] ; Checks to see if we've unlocked the HM
	cp 1
	jr c, .noCut
    ld a, POKEPAGER_CUT
    call .AppendMenuList
.noCut

    ld a, [wUnlockedSURF] ; Checks to see if we've unlocked the HM
	cp 1
	jr c, .noSurf
    ld a, POKEPAGER_SURF
    call .AppendMenuList
.noSurf

    ld a, [wUnlockedSTRENGTH] ; Checks to see if we've unlocked the HM
	cp 1
	jr c, .noStrength
    ld a, POKEPAGER_STRENGTH
    call .AppendMenuList
.noStrength

    ld a, [wUnlockedFLY] ; Checks to see if we've unlocked the HM
	cp 1
	jr c, .noFly
    ld a, POKEPAGER_FLY
    call .AppendMenuList
.noFly

    ld a, [wUnlockedWHIRLPOOL] ; Checks to see if we've unlocked the HM
	cp 1
	jr c, .noWhirlpool
    ld a, POKEPAGER_WHIRLPOOL
    call .AppendMenuList
.noWhirlpool

    ld a, [wUnlockedWATERFALL] ; Checks to see if we've unlocked the HM
	cp 1
	jr c, .noWaterfall
    ld a, POKEPAGER_WATERFALL
    call .AppendMenuList
.noWaterfall

    ld a, c
    ld [wPPMenuItems], a
    ret

.FillMenuList:
    xor a ; Set a to 0
    ld hl, wPPMenuItems
    ld [hli], a
    ld a, -1
    ld bc, wPPMenuItemsEnd - (wPPMenuItems + 1)
    call ByteFill
    ld de, wPPMenuItems + 1
    ld c, 0
    ret

.AppendMenuList:
    ld [de], a
    inc de
    inc c ; c gets incremented as a counter for wPPMenuItems
    ret

PokePager_Flash:
	ld a, 1
	ld [wUsingHMItem], a
    farcall FlashFunction
	ret

PokePager_Cut:
	ld a, 1
	ld [wUsingHMItem], a
    farcall CutFunction
	ret

PokePager_Fly:
	ret

PokePager_Strength:
    ld a, 1
    ld [wUsingHMItem], a
    farcall StrengthFunction
	ret

PokePager_Surf:
	ld a, 1
	ld [wUsingHMItem], a

    farcall SurfFunction
	ret

PokePager_Whirlpool:
	ret

PokePager_Waterfall:
	ret
