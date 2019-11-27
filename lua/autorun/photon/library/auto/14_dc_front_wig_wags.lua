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

local name = "14 Dodge Charger Wig Wags"

local COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
}

COMPONENT.Meta = {
	dc_14_wigs = {
		AngleOffset = -90,
		W = 8,
		H = 8,
		WMult = .9,
		Sprite = "sprites/emv/circular_src",
		Scale = 2,
	},
}

COMPONENT.Positions = {

	[1] = {Vector( 34, 110, 15.8 ),Angle( 0, 0, 0 ), "dc_14_wigs"},
	[2] = {Vector( -34, 110, 15.8 ),Angle( 0, 0, 0 ), "dc_14_wigs"},

}

COMPONENT.Sections = {
	["dc_14_wigs"] = {
		[1] = { { 1, "_1", { 5, .25, 0 } }, { 2, "_2", { -5, .25, 10 } } },
		[2] = { { 1, "_1", { 11, .25, 0 } }, { 2, "_2", { 11, .25, 10 } } },
		[3] = { { 1, "_1", { 20, .25, 0 } }, { 2, "_2", { 20, .25, 10 } } },
		--
		[4] = { { 1, "_1" } },
		[5] = { { 2, "_2"} },

	},
}

COMPONENT.Patterns = {
	["dc_14_wigs"] = {
		["code1"] = { 1 },
		["code2"] = { 2 },
		["code3"] = { 3 },
		-- 
		["code1A"] = { 4,4,4,0,4,4,4,0,5,5,5,0,5,5,5,0},
		["code2A"] = { 4,0,4,0,4,0,5,0,5,0,5,0},
		["code3A"] = { 4,0,4,0,4,0,5,0,5,0,5,0},
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["dc_14_wigs"] = "code1" },
		M2 = { ["dc_14_wigs"] = "code2" },
		M3 = { ["dc_14_wigs"] = "code3" }
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )