return {
	[hash("menu_fight")] = {"FIGHT", "BOJOVAT"},
	[hash("menu_settings")] = {"Settings", "Nastavení"},
	[hash("menu_exit")] = {"EXIT", "KONEC"},
	[hash("menu_credits")] = {"Credits", "Titulky"},
	[hash("menu_close")] = {"close", "zpět"},
	[hash("credits_text")] = {"Game by Vojta Kynčl\n\nMusic by Kevin MacLeod:\n\nWelcome to the Show by Kevin MacLeod\nLink: https://incompetech.filmmusic.io/song/4614-welcome-to-the-show\nLicense: http://creativecommons.org/licenses/by/4.0/\n\nBeauty Flow by Kevin MacLeod\nLink: https://incompetech.filmmusic.io/song/5025-beauty-flow\nLicense: http://creativecommons.org/licenses/by/4.0/\n\nEDM Detection Mode by Kevin MacLeod\nLink: https://incompetech.filmmusic.io/song/3687-edm-detection-mode\nLicense: http://creativecommons.org/licenses/by/4.0/", 
	"Naprogramoval Vojta Kynčl\n\nHudba Kevin MacLeod:\n\nWelcome to the Show - Kevin MacLeod\nLink: https://incompetech.filmmusic.io/song/4614-welcome-to-the-show\nLicence: http://creativecommons.org/licenses/by/4.0/\n\nBeauty Flow - Kevin MacLeod\nLink: https://incompetech.filmmusic.io/song/5025-beauty-flow\nLicence: http://creativecommons.org/licenses/by/4.0/\n\nEDM Detection Mode - Kevin MacLeod\nLink: https://incompetech.filmmusic.io/song/3687-edm-detection-mode\nLicence: http://creativecommons.org/licenses/by/4.0/"},
	[hash("credits_font_1")] = {"Elementary Gothic Bookhand font by Bill Roach", "Font Elementary Gothic Bookhand: Bill Roach"},
	[hash("credits_font_2")] = {"Barbarian NS font by Anthony Robinson", "Font Barbarian NS: Anthony Robinson"},

	[hash("selection_player_1")] = {"Player 1", "Hráč 1"},
	[hash("selection_player_2")] = {"Player 2", "Hráč 2"},
	[hash("selection_choose_fighter")] = {"Choose your fighter", "Vyber si postavu"},
	[hash("selection_exit")] = {"Exit (esc)", "Zpět (esc)"},
	[hash("selection_versus")] = {"VERSUS", "VERSUS"},

	[hash("main_fight")] = {"FIGHT", "FIGHT"},
	[hash("main_round")] = {function(x) return "Round "..x end, function(x) return x..". kolo" end},
	[hash("main_winner")] = {function(name) return name.." wins" end, function(name) return name.." zvítězil" end},
	[hash("main_draw")] = {"Draw", "Nerozhodně"},
}