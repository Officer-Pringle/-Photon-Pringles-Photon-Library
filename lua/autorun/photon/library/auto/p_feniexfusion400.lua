--[[
	ALL CODE WAS DONE BY DATEDGORE ON STEAM, THIS IS JUST EDITED FOR BETTER CODE AND USE
]]


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

local name = "Feniex Fusion 400"

local COMPONENT = {}

COMPONENT.Model = "models/sentry/feniexfusion400.mdl"
COMPONENT.Required = "489864412"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.Category = "Exterior"
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.DefaultColors = {
    [1] = "RED",
    [2] = "BLUE",
}

COMPONENT.Meta = {
	auto_fusion = {
		AngleOffset = 0,
		W = 14.6,
		H = 14.2,
		Sprite = "sprites/emv/feniex400",
		Scale = 1,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -11.8, -1.6, .55 ), Angle( 0, 0, 0 ), "auto_fusion" },
	[2] = { Vector( -3.9, -1.6, .55 ), Angle( 0, 0, 0 ), "auto_fusion" },
	[3] = { Vector( 4, -1.6, .55 ), Angle( 0, 0, 0 ), "auto_fusion" },
	[4] = { Vector( 11.9, -1.6, .55 ), Angle( 0, 0, 0 ), "auto_fusion" },


}

COMPONENT.Sections = {
	["auto_feniex_400"] = {
		[1] = { { 1, "_1" }, { 2, "_1" }, { 3, "_2" }, { 4, "_2" }, },
		[2] = { { 1, "_1" }, { 2, "_1" }, },
		[3] = { { 3, "_2" }, { 4, "_2" }, },
		[4] = { { 1, "_1" }, { 3, "_2" }, },
		[5] = { { 2, "_1" }, { 4, "_2" }, },
		[6] = { { 1, "_1" }, { 4, "_2" }, },
		[7] = { { 1, "_1" }, { 4, "_2" },  { 2, "_1" }, { 3, "_2" }, },
		[8] = { { 1, "_1" }, { 4, "_2" }, },
		[9] = { { 2, "_1" }, { 3, "_2" }, },


	},
}

COMPONENT.Patterns = {
	["auto_feniex_400"] = {
		["code1"] = { 9, 9, 9, 8, 8, 8, 9, 9, 9, 9, 8, 8, 8, 9, 9, 9, 9, 8, 8, 8, 0, 8, 8, 0, 8, 0, 9, 9, 0, 9,
		8, 0, 8, 0, 9, 0, 9, 0, 0 },
		["code2"] = { 4, 4, 4, 5, 5, 5, 4, 4, 4, 5, 5, 5, 4, 4,
		5, 5, 4, 4, 5, 5, 4, 5, 4, 5, 1, 1, 1, 0, 1, 1, 0, 1, 0, 0, 
		2, 2, 2, 3, 3, 3, 2, 2, 0, 2, 0, 3, 3, 0, 3, 0, 0,},
		["code3"] = { 1, 0, 1, 1, 0, 3, 3, 0, 3, 3, 0, 2, 2, 0, 2, 2, 0,
			4, 4, 5, 5, 4, 0, 4, 0, 5, 0, 5, 0, 0, 0, 6, 6, 7, 7, 0, 6, 0, 7, 0, 7,
			0, 6, 0, 0, 
		},
		["code1A"] = {4,4,4,4,5,5,5,5},
		["code2A"] = {4,4,4,0,4,4,4,0,5,5,5,0,5,5,5},
		["code3A"] = {4,4,4,0,4,4,4,0,5,5,5,0,5,5,5
					  ,4,4,5,5,4,4,5,5,4,0,4,0,5,0,5,4,5,4,5,4,5},

	}
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_feniex_400"] = "code1",
			},
			M2 = {
				["auto_feniex_400"] = "code2",
			},
			M3 = {
				["auto_feniex_400"] = "code3",
			}
		},
	Auxiliary = {},
	Illumination = {

	}
}

EMVU:AddAutoComponent( COMPONENT, name )