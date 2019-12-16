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

local name = "5 LED Siderunner"

local COMPONENT = {}

COMPONENT.Model = "models/pringle/props/siderunners/five_5.mdl"
COMPONENT.Required = "1917359476"
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
}

COMPONENT.Meta = {
	auto_ion = {
		AngleOffset = -90,
		W = 7.95,
		H = .5,
		WMult = 1,
		Sprite = "sprites/emv/center_gradient",
		Scale = 1,
		--SourceOnly = true
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 16.35, .65, 0 ),Angle( 0, 0, 0 ), "auto_ion" },
	[2] = { Vector( 8.15, .65, 0 ),Angle( 0, 0, 0 ), "auto_ion" },
	[3] = { Vector( 0, .65, 0 ),Angle( 0, 0, 0 ), "auto_ion" },
	[4] = { Vector( -8.15, .65, 0 ),Angle( 0, 0, 0 ), "auto_ion" },
	[5] = { Vector( -16.35, .65, 0 ),Angle( 0, 0, 0 ), "auto_ion" },


}

COMPONENT.Sections = {
	["auto_siderunners"] = {
		[1] = { {1, "_1" }, {3, "_1" }, {5, "_1" }, },
		[2] = { {2, "_2" }, {4, "_2" }, },
		--
		[3] = { {1, "_1"}, {2, "_1"}, {3, "_1"},},
		[4] = { {3, "_2"}, {4, "_2"}, {5, "_2"} },
		--
		[5] = { {1, "_1"}, {2, "_1"} },
		[6] = { {2, "_1"}, {3, "_1"} },
		[7] = { {3, "_1"}, {4, "_1"} },
		[8] = { {4, "_1"}, {5, "_1"} },
		--
		[12] = { {1, "_2"}, {2, "_2"} },
		[11] = { {2, "_2"}, {3, "_2"} },
		[10] = { {3, "_2"}, {4, "_2"} },
		[9] = { {4, "_2"}, {5, "_2"} },
		--
		[13] = { {1, "_1"}, {2, "_1"}, {3, "_1"}, {4, "_1"}, {5, "_1"}, },
		[14] = { {1, "_2"}, {2, "_2"}, {3, "_2"}, {4, "_2"}, {5, "_2"}, },

	},
}

COMPONENT.Patterns = {
	["auto_siderunners"] = {
		["code1"] = { 1,1,1,0,1,1,1,0,2,2,2,0,2,2,2,0 },
		["code1A"] ={ 3,3,3,3,3,4,4,4,4,4},
		["code1B"] = {5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12
		},

		["code2"] = { 1,1,0,2,2,0,1,1,0,2,2,2,0,1,1,0,2,2,0,1,1,0,2,2,2,0
		,1,1,0,1,1,0,2,2,0,2,2,0,1,1,0,1,1,0,2,2,0,2,2,0
		},
		["code2A"] = {3,3,0,3,3,0,3,3,0,4,4,0,4,4,0,4,4,0},
		["code2B"] = {5,5,0,6,6,0,7,7,0,8,8,0,9,9,0,10,10,0,11,11,0,12,12,0,5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12},

		["code3"] = {1,0,2,0},
		["code3A"] = {3,0,3,0,3,0,3,0,4,0,4,0,4,0,4,0},
		["code3B"] = {5,0,6,0,7,0,8,0,9,0,10,0,11,0,12,5,0,6,0,7,0,8,0,9,0,10,0,11,0,12,
		5,6,7,8,9,10,11,12,5,6,7,8,9,10,11,12,5,6,7,8,9,10,11,12,5,6,7,8,9,10,11,12,
		},


		["alert"] = {13,0,14},
		["alertA"] = {13,0,14},
		["alertB"] = {13,0,14},
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_siderunners"] = "code1" },
		M2 = { ["auto_siderunners"] = "code2" },
		M3 = { ["auto_siderunners"] = "code3" },
		ALERT = { ["auto_siderunners"] = "alert"}
	},
	Auxiliary = {
	},
}

EMVU:AddAutoComponent( COMPONENT, name )