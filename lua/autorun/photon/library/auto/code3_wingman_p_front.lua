--[[--------------------------------------------------------------------------------------

CODE 3 WINGMAN :: REAR INTERIOR LIGHTBAR :: DESIGNED FOR RB/RR/BB USE

CUSTOM COMPONENT CREATED BY THESENDEST FOR USE WITH THE PHOTON LIGHTING ENGINE

OFFICIAL RELEASE _//:

YOU ARE FREE TO EDIT THIS CODE. PLEASE ASK BEFORE UPLOADING.

THIS ITEM IS VIABLE TO BECOMING AN AUTOMATIC COMPONENT IN THE PHOTON LIGHTING ENGINE.
IF THIS HAPPENS, THIS SPECIFIC ITEM WILL BE REMOVED FROM THE ADDON.

RECOMMENDED RENDERMODE =| RenderMode = RENDERMODE_NORMAL

UPDATED: 1 • 7 • 17

--]]--------------------------------------------------------------------------------------

AddCSLuaFile()

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"
local RB = "BLUE/RED"

local name = "Code 3 Wingman Front"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/props/code_3_wingman.mdl"
COMPONENT.Required = "604511304"
COMPONENT.Skin = 0
COMPONENT.Category = "Interior"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ForwardTranslation = false
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
	[3] = "AMBER",
}

COMPONENT.Meta = {
	auto_wingman = {
		AngleOffset = 0,
		Sprite = "sprites/emv/code3_wingman",
		W = 8.5,
		H = 7,
		WMult = 2,
		Scale = 1,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90,
	},
}

COMPONENT.Positions = {
	[1] = { Vector( -2.5, 8.6, -0.06 ), Angle( 0, -93, 0 ), "auto_wingman" },
	[2] = { Vector( -2.5, -8.8, -0.06 ), Angle( 0, -87, 0 ), "auto_wingman" },
	[3] = { Vector( -1.3, 17.5, -0.06 ), Angle( 0, -100.5, 0 ), "auto_wingman" },
	[4] = { Vector( -1.3, -17.7, -0.06 ), Angle( 0, -78, 0 ), "auto_wingman" },
	[5] = { Vector( 1, 26.2, -0.06 ), Angle( 0, -106, 0 ), "auto_wingman" },
	[6] = { Vector( 1, -26.4, -0.06 ), Angle( 0, -73, 0 ), "auto_wingman" },
}

COMPONENT.Sections = {
	["auto_code3_wingman"] = {
		[1] = { { 1, G }, { 2, G }, { 3, G }, { 4, G }, { 5, G }, { 6, G } },
		--	CODE 1
		[2] = { { 3, "_2" } },
		[3] = { { 5, "_1" } },
		[4] = { { 3, "_3" } },
		[5] = { { 5, "_3" } },
		--	CODE 2
		[6] = { { 1, "_1" }, { 5, "_1" }, { 4, "_1" } },
		[7] = { { 2, "_2" }, { 6, "_2" }, { 3, "_2" } },
		[8] = { { 1, "_3" }, { 5, "_3" }, { 4, "_3" } },
		[9] = { { 2, "_3" }, { 6, "_3" }, { 3, "_3" } },
		--	CODE 3
		[10] = { { 1, "_1" }, { 3, "_1" } },
		[11] = { { 1, "_2" }, { 3, "_2" } },
		[12] = { { 2, "_1" }, { 4, "_1" } },
		[13] = { { 2, "_2" }, { 4, "_2" } },
		[14] = { { 5, "_1" }, { 3, "_1" } },
		[15] = { { 5, "_2" }, { 3, "_2" } },
		[16] = { { 6, "_1" }, { 4, "_1" } },
		[17] = { { 6, "_2" }, { 4, "_2" } },
	},
	["auto_code3_wingman_traffic"] = {
	--	LEFT / RIGHT
		[1] = { { 6, "_3" } },
		[2] = { { 6, "_3" }, { 4, "_3" } },
		[3] = { { 6, "_3" }, { 4, "_3" }, { 2, "_3" } },
		[4] = { { 6, "_3" }, { 4, "_3" }, { 2, "_3" }, { 1, "_3" } },
		[5] = { { 6, "_3" }, { 4, "_3" }, { 2, "_3" }, { 1, "_3" }, { 3, "_3" } },
		[6] = { { 6, "_3" }, { 4, "_3" }, { 2, "_3" }, { 1, "_3" }, { 3, "_3" }, { 5, "_3" } }, -- ALL = 6
		[7] = { { 4, "_3" }, { 2, "_3" }, { 1, "_3" }, { 3, "_3" }, { 5, "_3" } },
		[8] = { { 2, "_3" }, { 1, "_3" }, { 3, "_3" }, { 5, "_3" } },
		[9] = { { 1, "_3" }, { 3, "_3" }, { 5, "_3" } },
		[10] = { { 3, "_3" }, { 5, "_3" } },
		[11] = { { 5, "_3" } },
	-- DIVERGE
		[12] = { { 1, "_3" }, { 2, "_3" } },
		[13] = { { 1, "_3" }, { 2, "_3" }, { 3, "_3" }, { 4, "_3" } },
		[14] = { { 1, "_3" }, { 2, "_3" }, { 3, "_3" }, { 4, "_3" }, { 5, "_3" }, { 6, "_3" } },
		[15] = { { 3, "_3" }, { 4, "_3" }, { 5, "_3" }, { 6, "_3" } },
		[16] = { { 5, "_3" }, { 6, "_3" } },
	-- WARN
		[17] = { { 3, "_1" }, { 5, "_1" }, { 4, "_2" }, { 6, "_2" } },
	},
	["auto_code3_wingman2"] = {
		[1] = { { 4, "_2" } },
		[2] = { { 6, "_1" } },
	}
}

COMPONENT.TrafficDisconnect = {
	["auto_code3_wingman_traffic"] = {
		1, 2, 3, 4, 5, 6
	}
}

COMPONENT.Patterns = {
	["auto_code3_wingman2"] = { 
		["code1"] = { 2, 0, 2, 2, 2, 0, 1, 0, 1, 1, 1, 0 },
	},
	["auto_code3_wingman"] = {
		["code1"] = { 2, 0, 2, 2, 2, 0, 3, 0, 3, 3, 3, 0 },
		["code2"] = {
			6, 0, 6, 6, 6, 0,
			7, 0, 7, 7, 7, 0,
		},
		["code3"] = {
			10, 0, 11, 0,
			12, 0, 13, 0,
			14, 0, 15, 0,
			16, 0, 17, 0,
		},
		["warn"] = { 18, 18, 18, 18, 18, 18, 18, 19, 19, 19, 19, 19, 19, 19 }
	},
	["auto_code3_wingman_traffic"] = {
		["left"] = {
		1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11, 11, 0, 0, 0
		},
		["middle"] = {
		12, 12, 12, 13, 13, 13, 14, 14, 14, 15, 15, 15, 16, 16, 16, 0, 0, 0
		},
		["right"] = {
		11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 5, 5, 4, 4, 3, 3, 2, 2, 1, 1, 0, 0, 0
		},
		["warn"] = {
		17, 17, 17, 17, 17, 17, 17, 17
		},
		["off"] = { 0 }
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { 
			["auto_code3_wingman"] = "code1",
			["auto_code3_wingman2"] = "code1",
			["auto_code3_wingman_traffic"] = "off"
		},
		M2 = { 
			["auto_code3_wingman"] = "code2",
			["auto_code3_wingman_traffic"] = "off"
		},
		M3 = { 
			["auto_code3_wingman"] = "code3",
			["auto_code3_wingman_traffic"] = "off"
		},
	},
	Auxiliary = {
	C = { ["auto_code3_wingman_traffic"] = "warn" },
	},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )