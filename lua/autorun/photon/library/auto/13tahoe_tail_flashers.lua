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


local name = "13Tahoe Tail Flashers"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "RED",
}

COMPONENT.Meta = {
	rear_left = {
		AngleOffset = -90,
		W = 20,
		H = 20,
		Sprite = "sprites/emv/explorer_turn",
		Scale = 1.5,
		WMult = 1.25
	},
	rear_right = {
		AngleOffset = -90,
		W = 25,
		H = 24,
		Sprite = "sprites/emv/explorer_turn",
		Scale = 1.5,
		WMult = 1.25
	},
	
}

COMPONENT.Positions = {
	[1] = { 
		Vector( 40, -108, 50), 
		Angle( 2, 220, 2), 
		"rear_right" 
	},
	[2] = { 
		Vector( 0, 0, 60), 
		Angle( 0, 90, 0), 
		"rear_left"  
	},

}

COMPONENT.Sections = {
	["auto_rear_taillights"] = {
		[1] = { { 1, "_1" } },
		[2] = { { 2, "_2" }},
	},
}

COMPONENT.Patterns = {
	["auto_rear_taillights"] = {
		["code1"] = { 1,1,1,1,1,1,0,2,2,2,2,2,2},
		["code2"] = { 1,1,1,0,1,1,1,0,2,2,2,0,2,2,2,0},
		["code3"] = { 1,0,1,0,2,0,2},
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_rear_taillights"] = "code1", },
		M2 = { ["auto_rear_taillights"] = "code2", },
		M3 = { ["auto_rear_taillights"] = "code3", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )