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

local name = "P Whelen 400"

local COMPONENT = {}

COMPONENT.Model = "models/SuperMighty/whelen_400/whelen_400_grille.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.Category = "Auxiliary"
COMPONENT.DefaultColors = {
	[1] = "S_WHITE",
	[2] = "BLUE",
	[3] = "AMBER"
}

COMPONENT.Meta = {
	superled = {
		AngleOffset = -90,
		W = 8,
		H = 6.5,
		Sprite = "sprites/emv/emv_whelen_src",
		Scale = 1,
		WMult = 1
	}
}

COMPONENT.Positions = {
	[1] = { Vector( 0, 1.27, 0 ), Angle( 0, 0, 0 ), "superled" },
	[2] = { Vector( 0, 1.27, 1.85 ), Angle( 0, 0, 0 ), "superled" },
}

COMPONENT.Sections = {
	["auto_w400"] = {
		[1] = { { 1, "_1"} },
		[2] = { { 2, "_2"} },
		[3] = { { 1, "_2"}, { 2, "_2"} },
		[4] = { { 1, "_1"}, { 2, "_1"} },
	},
}

COMPONENT.Patterns = {
	["auto_w400"] = {
		["code1"] = { 1, 1, 1, 0, },
		["code1A"] = { 1, 1, 1, 0, 0, 0 },
		["code1B"] = { 0, 0, 0, 1, 1, 1 },
		["code2"] = { 1, 0, 1, 0, 2, 2, 2, 3, 3, 3, 0 },
		["code2A"] = { 1, 0, 1, 0, 3, 3, 3, 2, 2, 2, 3, 3, 3, 2, 2, 2, 3, 3, 3, 2, 2, 2, 0 },
		["code2B"] = { 0, 1, 0, 1, 2, 2, 2, 3, 3, 3, 2, 2, 2, 3, 3, 3, 2, 2, 2, 3, 3, 3, 0 },
		["code3"] = { 1, 0, 1, 0, 1, 0, 1, 1, 1, 0 },
		["code3A"] = { 2, 0, 3, 0, 2, 0, 3, 0, 2, 0, 3, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0 },
		["code3B"] = { 3, 0, 2, 0, 3, 0, 2, 0, 3, 0, 2, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1 },
		["TDWN"] = { 1 },

		["p_c1"] = { 3 },
		["p_c1A"] = {2,2,2,2,2,2,2,2,2,2,0,1,1,1,1,1,1,1,1,1,1,0},
		["p_c1B"] = {1,1,1,1,1,1,1,1,1,1,0,2,2,2,2,2,2,2,2,2,2,0},

		["p_c2"] = { 3,3,3,3,3,3,3,3,0,1,1,1,0,1,1,1,0,2,2,2,0,2,2,2,2,0},
		["p_c2A"] = { 2,2,2,2,0,2,2,2,2,0,1,1,1,1,0,1,1,1,1,0},
		["p_c2B"] = { 1,1,1,1,0,1,1,1,1,0,2,2,2,2,0,2,2,2,2,0},

		["p_c3"] = {1,2,0},
		["p_c3A"] = {2,2,0,2,2,0,1,1,0,1,1,0,2,2,0,2,2,0,1,1,0,1,1,0,2,2,0,2,2,0,1,1,0,1,1,0,
		2,0,2,0,1,0,1,0,2,0,2,0,1,0,1,0,2,0,2,0,1,0,1,0,2,0,2,0,1,0,1,0,2,0,2,0,1,0,1,0,2,0,2,0,1,0,1,0,},
		["p_c3B"] = {1,1,0,1,1,0,2,2,0,2,2,0,1,1,0,1,1,0,2,2,0,2,2,0,1,1,0,1,1,0,2,2,0,2,2,0,
		1,0,1,0,2,0,2,0,1,0,1,0,2,0,2,0,1,0,1,0,2,0,2,0,1,0,1,0,2,0,2,0,1,0,1,0,2,0,2,0,1,0,1,0,2,0,2,0,},
	}
}

COMPONENT.TrafficDisconnect = { }

COMPONENT.Modes = {
	Primary = {
		M1 = {
		["auto_w400"] = "p_c1",
		},
		M2 = {
        ["auto_w400"] = "p_c2",
		},
		M3 = {
        ["auto_w400"] = "p_c3",
		}
	},
	Auxiliary = {
		L = {
		},
		R = {
		},
		D = {
		}
	},
	Illumination = {
		R = {
		},
		L = {
		},
		F = {
			{ 1, W }, { 2, W },
		},
		T = {
			{ 1, W }, { 2, W },
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )