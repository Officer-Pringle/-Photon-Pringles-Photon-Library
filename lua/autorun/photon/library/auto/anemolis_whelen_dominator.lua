--[[
	Photon File For this was made by DatedGore, and was a pull request through the Github.

	Phases A,B
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

local name = "Whelen Dominator 2"

local COMPONENT = {}

COMPONENT.Model = "models/pringle/props/whelen dominator/dominator02.mdl"
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
	auto_dominator = {
		AngleOffset = 0,
		W = 12.65,
		H = 14.4,
		Sprite = "sprites/emv/emv_whelen_src",
		Scale = 1,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 6.8, 3.8, 6.15 ), Angle( 0, 180, 0 ), "auto_dominator" },
	[2] = { Vector( -6.77, 3.8, 6.15 ), Angle( 0, 180, 0 ), "auto_dominator" },
}

COMPONENT.Sections = {
	["auto_dominator_2"] = {
		[1] = { { 1, "_1" }, { 2, "_1" }, },
		[2] = { { 1, "_2" }, { 2, "_2" }, },
		[3] = { { 1, "_1" }, { 2, "_2" }, },
		[4] = { { 1, "_2" }, { 2, "_1" }, },
		[5] = { { 1, "_1" }, { 2, "_1" }, },
		[6] = { { 1, "_2" }, { 2, "_2" }, },
		[7] = { { 1, "_1" }, },
		[8] = { { 2, "_2" }, },
		[9] = { { 2, "_1" }, },
		[10] = { { 1, "_2" }, },
		[11] = { { 1, "_1" }, },
		[12] = { { 2, "_2" }, },
	},
}

COMPONENT.Patterns = {
	["auto_dominator_2"] = {
		["code1"] = { 1, 1, 1, 2, 2, 2, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 3, 3, 3, 4, 4, 4, },
		["code2"] = { 1, 1, 2, 2, 0, 1, 1, 2, 2, 0, 3, 3, 4, 4, 0, 3, 3, 4, 4, 0 },
		["code3"] = { 1, 1, 2, 2, 0, 1, 0, 2, 0, 3, 3, 4, 4, 0, 3, 0, 4, 0 },
		["alert"] = { 1, 2, 3, 4, },
		---
		["code1A"] = { 11, 11, 11, 12, 12, 12, 11, 11, 12, 12, },
		["code2A"] = { 5, 5, 5, 0, 0, 0, 5, 5, 5, 0, 0, 0, 7, 7, 7, 9, 9, 9, 7, 7, 7, 9, 9, 9  },
		["code3A"] = { 11, 11, 12, 12, 0, 12, 0, 11, 0, 5, 5, 0, 4, 4, 0, 5, 0, 4, 0, },
		["alertA"] = { 7, 9 },
		---
		["code1B"] = { 11, 11, 11, 12, 12, 12, 11, 11, 11, 12, 12, },
		["code2B"] = { 0, 0, 0, 6, 6, 6, 0, 0, 0, 6, 6, 6, 8, 8, 8, 10, 10, 10, 8, 8, 8, 10, 10, 10 },
		["code3B"] = { 12, 12, 11, 11, 0, 11, 0, 12, 0, 4, 4, 0, 5, 5, 0, 4, 0, 5, 0,},
		["alertB"] = { 8, 10 },
	}
}

COMPONENT.Modes = {
	Primary = {
			M1 = {
				["auto_dominator_2"] = "code1",
			},
			M2 = {
				["auto_dominator_2"] = "code2",
			},
			M3 = {
				["auto_dominator_2"] = "code3",
			},
			ALERT = {
				["auto_dominator_2"] = "alert",
			}
		},
	Auxiliary = {},
	Illumination = {

	}
}

EMVU:AddAutoComponent( COMPONENT, name )