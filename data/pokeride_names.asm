PokeRideMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 12, SCREEN_HEIGHT - 1
	dw .RideMons
	db 1 ; default option
	
.RideMons:
	db STATICMENU_CURSOR ; flags
	db 8 ; items
	db "FLASH@"
	db "CUT@"
	db "FLY@"
	db "STRENGTH@"
	db "SURF@"
	db "WHIRLPOOL@"
	db "WATERFALL@"
	db "CANCEL@"
