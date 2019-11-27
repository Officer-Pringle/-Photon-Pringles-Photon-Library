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

local name = ""

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
	basic = {
		AngleOffset = -90,
		W = 5,
		H = 5,
		WMult = .9,
		Sprite = "sprites/emv/basic",
		Scale = 2,
	},
}

COMPONENT.Positions = {

	[1] = { 
		Vector( -32.5, 108, 17.4 ),
		Angle( 0, 3, -5 ), 
		"Basic" 
	},

}

COMPONENT.Sections = {
	["basic"] = {
		[1] = {{1,"_1"},},
	},
}

COMPONENT.Patterns = {
	["basic"] = {
		["code1"] = { 3 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["basic"] = "code1" },
		M2 = { ["basic"] = "code2" },
		M3 = { ["basic"] = "code3" }
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )