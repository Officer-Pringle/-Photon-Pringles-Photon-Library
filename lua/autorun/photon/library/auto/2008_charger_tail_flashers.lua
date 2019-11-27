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


local name = "08 Charger Tail-Lights"
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
		W = 10,
		H = 10,
		Sprite = "sprites/emv/08_taillights_left",
		Scale = 1.5,
		WMult = 1.25
	},
	rear_right = {
		AngleOffset = -90,
		W = 10,
		H = 10,
		Sprite = "sprites/emv/08_taillights_right",
		Scale = 1.5,
		WMult = 1.25
	},
}

COMPONENT.Positions = {

	[1] = { 
		Vector( -31.5, -110, 47.5), 
		Angle( 0, 175,0 ), 
		"rear_left" 
	},
	[2] = { 
		Vector( 31.5, -110, 47.5 ), 
		Angle( 0, 185, 0), 
		"rear_right"  
	},

}

COMPONENT.Sections = {
	["auto_rear_taillights"] = {
  		[1] = { { 1, "_1" } },
  		[2] = { { 2, "_1" } }
	},
}

COMPONENT.Patterns = {
	["auto_rear_taillights"] = {
		["code1"] = {1,1,1,0,1,1,1,0,2,2,2,0,2,2,2},
		["code2"] = { },
		["code3"] = { },
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