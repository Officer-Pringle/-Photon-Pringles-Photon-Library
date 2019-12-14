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
		[1] = { {1, B }, {3, B }, {5, B }, },
		[2] = { {2, R }, {4, R }, },
	},
}

COMPONENT.Patterns = {
	["auto_siderunners"] = {
		["code1"] = { 1,1,1,0,1,1,1,0,2,2,2,0,2,2,2,0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_siderunners"] = "code1" },
		M2 = { ["auto_siderunners"] = "code2" },
		M3 = { ["auto_siderunners"] = "code3" }
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )