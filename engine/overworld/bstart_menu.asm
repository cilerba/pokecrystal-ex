BStartMenu::
    ld a, POKEPAGER
    ld [wCurItem], a
    ld hl, wNumItems
    call CheckItem
    ret nc
    call RefreshScreen
	farcall PokePager
	ld a, HMENURETURN_SCRIPT
	ldh [hMenuReturn], a
	ret