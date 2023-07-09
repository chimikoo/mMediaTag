local E, L, V, P, G = unpack(ElvUI)

P.mMT = {
	version = 0,
	general = { greeting = true, keystochat = false },
	afk = {
		enable = false,
		garbage = true,
		title = { r = 1, g = 1, b = 1 },
		values = {enable = true, r = 1, g = 1, b = 1 },
		attributes = {enable = true, r = 1, g = 1, b = 1 },
		enhancements = {enable = true, r = 1, g = 1, b = 1 },
		progress = {enable = true, r = 1, g = 1, b = 1 },
		misc = {enable = true, r = 1, g = 1, b = 1 },
	},
	tooltip = { enable = false, iconsize = 32, iconzoom = true },
	combattime = { ooctexture = "CI2", ictexture = "CI12", hide = 30 },
	interruptoncd = {
		enable = false,
		gradient = false,
		outofrange = false,
		inactivetime = 0.8,
		readymarkercolor = { r = 0.22, g = 0.86, b = 0.22 },
		oncdcolor = { colora = { r = 0.81, g = 0.02, b = 1 }, colorb = { r = 0.52, g = 0.04, b = 0.72 } },
		intimecolor = { colora = { r = 0, g = 0.78, b = 1 }, colorb = { r = 0, g = 0.46, b = 0.65 } },
		outofrangecolor = { colora = { r = 1, g = 0.48, b = 0 }, colorb = { r = 0.74, g = 0.28, b = 0 } },
	},
	importantspells = {
		enable = false,
		gradient = false,
		np = true,
		uf = true,
		default = nil,
		spells = {},
	},
	custombackgrounds = {
		enable = false,
		health = { enable = false, texture = "mMediaTag A8" },
		power = { enable = false, texture = "mMediaTag A8" },
		castbar = { enable = false, texture = "mMediaTag A8" },
	},
	customclasscolors = {
		enable = false,
		emediaenable = false,
		colors = {
			HUNTER = { r = 0.67, g = 0.83, b = 0.45 },
			WARLOCK = { r = 0.53, g = 0.53, b = 0.93 },
			PRIEST = { r = 1.00, g = 1.00, b = 1.00 },
			PALADIN = { r = 0.96, g = 0.55, b = 0.73 },
			MAGE = { r = 0.20, g = 0.78, b = 0.92 },
			ROGUE = { r = 1.00, g = 0.96, b = 0.41 },
			DRUID = { r = 1.00, g = 0.49, b = 0.04 },
			SHAMAN = { r = 0.00, g = 0.44, b = 0.87 },
			WARRIOR = { r = 0.78, g = 0.61, b = 0.43 },
			DEATHKNIGHT = { r = 0.77, g = 0.12, b = 0.23 },
			MONK = { r = 0.00, g = 1.00, b = 0.60 },
			DEMONHUNTER = { r = 0.64, g = 0.19, b = 0.79 },
			EVOKER = { r = 0.20, g = 0.58, b = 0.50 },
		},
	},
	datatextcolors = {
		colorhc = {
			b = 0.86,
			g = 0.43,
			hex = "|cff0070dd",
			r = 0,
		},
		colormyth = {
			b = 0.93,
			g = 0.20,
			hex = "|cffa334ee",
			r = 0.63,
		},
		colormythplus = {
			b = 0.24,
			hex = "|cffff033e",
			g = 0.011,
			r = 1,
		},
		colornhc = {
			b = 0,
			g = 1,
			hex = "|cff1eff00",
			r = 0.11,
		},
		colorother = {
			b = 1,
			g = 1,
			hex = "|cffffffff",
			r = 1,
		},
		colortitel = {
			b = 0,
			g = 0.78,
			hex = "|cffffc800",
			r = 1,
		},
		colortip = {
			b = 0.58,
			g = 0.58,
			hex = "|cff969696",
			r = 0.58,
		},
	},
	roll = {
		enable = false,
		colormodenormal = "custom",
		colormodehover = "class",
		colornormal = { r = 1, g = 1, b = 1, a = 0.75 },
		colorhover = { r = 1, g = 1, b = 1, a = 0.75 },
		texture = "RI1",
		size = 16,
	},
	chat = {
		enable = false,
		colormodenormal = "custom",
		colormodehover = "class",
		colornormal = { r = 1, g = 1, b = 1, a = 0.75 },
		colorhover = { r = 1, g = 1, b = 1, a = 0.75 },
		texture = "CI1",
		size = 16,
	},
	mpscore = {
		highlight = true,
		groupkeys = true,
		sort = "AFFIX",
		upgrade = true,
		icon = "UI7",
		highlightcolor = {
			b = 0,
			g = 1,
			hex = "|cff1eff00",
			r = 0.11,
		},
	},
	teleports = { icon = false, customicon = "TP1" },
	profession = { icon = false, proficon = true },
	dungeon = { icon = false, texttoname = true, key = true, score = true, affix = true },
	instancedifficulty = {
		enable = false,
		mpe = { color = "|cffff8f00", r = 1, g = 0.56, b = 0 },
		mpf = { color = "|cffff0056", r = 1, g = 0, b = 0.33 },
		hc = { color = "|cff0595ff", b = 1, g = 0.58, r = 0.01 },
		guild = { color = "|cff94ff00", r = 0.58, g = 1, b = 0 },
		tw = { color = "|cff00bfff", r = 0, g = 0.75, b = 1 },
		mpc = { color = "|cff411aff", r = 0.25, g = 0.10, b = 1 },
		nhc = { color = "|cff52ff76", b = 0.46, g = 1, r = 0.32 },
		mpa = { color = "|cff97ffbd", r = 0.59, g = 1, b = 0.74 },
		mpd = { color = "|cffb600ff", r = 0.71, g = 0, b = 1 },
		m = { color = "|cffaf00ff", g = 0, r = 0.68, b = 1.00 },
		name = { color = "|cffffffff", r = 1, g = 1, b = 1 },
		mp = { color = "|cffff8f00", b = 0, g = 0.56, r = 1 },
		mpb = { color = "|cff00ff46", r = 0, g = 1, b = 0.27 },
		lfr = { color = "|cff00ffef", b = 0.93, g = 1, r = 0 },
		tg = { color = "|cff5dffb8", r = 0.36, g = 1, b = 0.72 },
		pvp = { color = "|cffeb0056", r = 0.92, g = 0, b = 0.33 },
	},
	roleicons = {
		enable = false,
		tank = "SHIELD2",
		heal = "HEAL13",
		dd = "BIGSW12",
		customtexture = false,
		customtank = nil,
		customheal = nil,
		customdd = nil,
	},
	nameplate = {
		healthmarker = {
			enable = false,
			indicator = { r = 1, g = 0, b = 0.61 },
			overlay = { r = 0.21, g = 0.33, b = 0.34, a = 0.85 },
			NPCs = {},
			overlaytexture = "mMediaTag P6",
			useDefaults = true,
			inInstance = false,
		},
		executemarker = {
			enable = false,
			indicator = { r = 1, g = 0.2, b = 0.2 },
			auto = true,
			range = 20,
		},
		bordercolor = { border = false, glow = false },
	},
	gamemenu = { icon = true, menuicons = true, color = true },
	tags = {
		icons = {
			dnd = "DND1",
			offline = "DC9",
			afk = "AFK1",
			death = "DEATH7",
			ghost = "GHOST3",
			rare = "STAR1",
			relite = "STAR10",
			elite = "STAR9",
			boss = "DEATH7",
		},
		colors = {
			rare = {
				b = 0.77,
				hex = "|cff8356c5",
				g = 0.33,
				r = 0.51,
			},
			relite = {
				b = 0.78,
				hex = "|cffab54c9",
				g = 0.32,
				r = 0.67,
			},
			elite = {
				b = 0.83,
				hex = "|cffff68d5",
				g = 0.40,
				r = 1,
			},
			boss = {
				b = 0.31,
				hex = "|cffe52b50",
				g = 0.16,
				r = 0.89,
			},
			afk = {
				b = 0.19,
				hex = "|cffff0b31",
				g = 0.04,
				r = 1,
			},
			dnd = {
				b = 0.01,
				hex = "|cffff6a04",
				g = 0.41,
				r = 1,
			},
			zzz = {
				b = 0.04,
				hex = "|cffffa30c",
				g = 0.82,
				r = 0.96,
			},
			tank = {
				b = 1,
				hex = "|cff009dff",
				g = 0.63,
				r = 1,
			},
			heal = {
				b = 0.64,
				hex = "|cff00ffa4",
				g = 1,
				r = 0,
			},
			level = {
				b = 0.24,
				hex = "|cffff033e",
				g = 0.01,
				r = 1,
			},
		},
	},
	objectivetracker = {
		enable = false,
		simple = false,
		font = "PT Sans Narrow",
		fontflag = "NONE",
		header = {
			fontsize = 14,
			fontcolorstyle = "custom",
			fontcolor = { r = 1, g = 0.78, b = 0, hex = "|cffffc700" },
			barstyle = "onebig",
			gradient = true,
			revers = false,
			barcolorstyle = "class",
			textshadow = true,
			barcolor = { r = 1, g = 0.78, b = 0, hex = "|cffffc700" },
			barshadow = true,
			questcount = "colorright",
			texture = "Solid",
		},
		title = {
			fontsize = 13,
			fontcolorstyle = "custom",
			textshadow = true,
			fontcolor = { r = 1, g = 0.78, b = 0, hex = "|cffffc700" },
		},
		text = {
			fontsize = 13,
			fontcolorstyle = "custom",
			textshadow = true,
			fontcolor = { r = 0.87, g = 0.87, b = 0.87, hex = "|cff00ffa4" },
			completecolor = { r = 0, g = 1, b = 0.27, hex = "|cff00ff45" },
			failedcolor = { r = 1, g = 0.16, b = 0, hex = "|cffff2800" },
			progresscolorgood = { r = 0.25, g = 1, b = 0.43, hex = "|cff40ff6e" },
			progresscolorbad = { r = 0.92, g = 0.46, b = 0.1, hex = "|cffeb751a" },
			progresscolortransit = { r = 1, g = 0.63, b = 0.05, hex = "|cffffa10d" },
			progrespercent = true,
			cleantext = true,
			progresscolor = true,
			backdrop = true,
		},
		dash = { style = "none", texture = "STAR11", customstring = ">" },
	},
	datatextcurrency = {
		icon = true,
		short = true,
		name = false,
		style = "auto",
		showmax = false,
		hide = false,
		bag = false,
		max = false,
	},
	dockdatatext = {
		autogrow = true,
		growsize = 8,
		customfontzise = false,
		font = "PT Sans Narrow",
		fontSize = 12,
		fontflag = "OUTLINE",
		customfontcolor = false,
		fontcolor = { r = 1, g = 1, b = 1, hex = "|cffffffff" },
		normal = { r = 1, g = 1, b = 1, a = 1, style = "custom" },
		hover = { r = 0.5, g = 0.5, b = 0.5, a = 0.75, style = "custom" },
		click = { r = 0.2, g = 0.2, b = 0.2, a = 1, style = "custom" },
		tip = { enable = true },
		achievement = {
			icon = "COLOR45",
			iconcolor = { r = 1, g = 1, b = 1, a = 0.75 },
			customcolor = false,
		},
		blizzardstore = {
			icon = "COLOR01",
			iconcolor = { r = 1, g = 1, b = 1, a = 0.75 },
			customcolor = false,
		},
		character = {
			color = true,
			option = "none",
			icon = "COLOR19",
			iconcolor = { r = 1, g = 1, b = 1, a = 0.75 },
			customcolor = false,
		},
		collection = {
			icon = "COLOR24",
			iconcolor = { r = 1, g = 1, b = 1, a = 0.75 },
			customcolor = false,
		},
		encounter = {
			icon = "COLOR49",
			iconcolor = { r = 1, g = 1, b = 1, a = 0.75 },
			customcolor = false,
		},
		guild = {
			icon = "COLOR38",
			iconcolor = { r = 1, g = 1, b = 1, a = 0.75 },
			customcolor = false,
		},
		lfd = {
			score = true,
			cta = true,
			icon = "COLOR27",
			greatvault = true,
			affix = true,
			keystone = true,
			difficulty = true,
			iconcolor = { r = 1, g = 1, b = 1, a = 0.75 },
			customcolor = false,
		},
		mainmenu = {
			icon = "COLOR11",
			iconcolor = { r = 1, g = 1, b = 1, a = 0.75 },
			customcolor = false,
		},
		quest = {
			icon = "COLOR26",
			iconcolor = { r = 1, g = 1, b = 1, a = 0.75 },
			customcolor = false,
		},
		spellbook = {
			icon = "COLOR46",
			iconcolor = { r = 1, g = 1, b = 1, a = 0.75 },
			customcolor = false,
		},
		talent = {
			showrole = true,
			icon = "COLOR40",
			iconcolor = { r = 1, g = 1, b = 1, a = 0.75 },
			customcolor = false,
		},
		friends = {
			icon = "COLOR58",
			iconcolor = { r = 1, g = 1, b = 1, a = 0.75 },
			customcolor = false,
		},
		fpsms = {
			text = "FPS",
			color = "default",
			option = "fps",
			icon = "COLOR31",
			iconcolor = { r = 1, g = 1, b = 1, a = 0.75 },
			customcolor = false,
		},
		durability = {
			onlytext = false,
			color = true,
			icon = "COLOR53",
			iconcolor = { r = 1, g = 1, b = 1, a = 0.75 },
			customcolor = false,
		},
		itemlevel = {
			onlytext = false,
			text = "Ilvl",
			color = true,
			icon = "COLOR50",
			iconcolor = { r = 1, g = 1, b = 1, a = 0.75 },
			customcolor = false,
		},
		notification = {
			icon = "FILLED27",
			r = 0,
			g = 1,
			b = 0,
			a = 0.75,
			style = "custom",
			size = 16,
			flash = true,
		},
		profession = {
			icon = "COLOR06",
			iconcolor = { r = 1, g = 1, b = 1, a = 0.75 },
			customcolor = false,
		},
		volume = {
			showtext = true,
			icon = "COLOR62",
			iconcolor = { r = 1, g = 1, b = 1, a = 0.75 },
			customcolor = false,
		},
		calendar = {
			option = "us",
			dateicon = "b",
			showyear = false,
			icon = "COLOR02",
			iconcolor = { r = 1, g = 1, b = 1, a = 0.75 },
			customcolor = false,
		},
		bag = {
			icon = "COLOR68",
			iconcolor = { r = 1, g = 1, b = 1, a = 0.75 },
			customcolor = false,
			text = 5,
		},
	},
	castbarshield = {
		enable = false,
		auto = true,
		custom = false,
		sizeX = 32,
		sizeY = 32,
		anchor = "CENTER",
		posX = 0,
		posY = 0,
		color = { r = 1, g = 1, b = 1, a = 1 },
		icon = "CAST16",
		np = true,
		uf = false,
	},
	unitframeicons = {
		phase = {
			enable = false,
			icon = "PHASE01",
			color = {
				enable = true,
				withe = true,
				chromie = { r = 1, g = 0.9, b = 0.5 },
				warmode = { r = 1, g = 0.3, b = 0.3 },
				sharding = { r = 0.5, g = 1, b = 0.3 },
				phasing = { r = 0.3, g = 0.5, b = 1 },
			},
		},
		summon = { enable = false, available = "SUM13", rejected = "SUM14", accepted = "SUM15" },
		resurrection = { enable = false, icon = "RES03" },
		readycheck = { enable = false, ready = "READY06", notready = "NOTREADY01", waiting = "COLOR26" },
	},
}
