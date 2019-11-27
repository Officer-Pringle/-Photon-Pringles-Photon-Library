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


local name = "12Charger Rear Tail Lights"
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
		W = 38,
		H = 22,
		Sprite = "sprites/emv/dod_12_rear_left",
		Scale = 1.5,
		WMult = 1.25,
		SourceOnly = true
	},
	rear_right = {
		AngleOffset = -90,
		W = 40,
		H = 22,
		Sprite = "sprites/emv/dod_12_rear_right",
		Scale = 1.5,
		WMult = 1.25,
		SourceOnly = true
	},
	tail_left = {
		AngleOffset = -90,
		W = 45,
		H = 22,
		Sprite = "sprites/emv/dod_12_rear_left_taillight",
		Scale = 1.5,
		WMult = 1.25,
		SourceOnly = true
	},
	tail_right = {
		AngleOffset = -90,
		W = 45,
		H = 22,
		Sprite = "sprites/emv/dod_12_rear_right_taillight",
		Scale = 1.5,
		WMult = 1.25,
		SourceOnly = true
	},
}

COMPONENT.Positions = {

	[1] = { 
		Vector( -14, -121.36, 47.8), 
		Angle( 1, 175, 5.5), 
		"rear_left" 
	},
	[2] = { 
		Vector( -34, -118.5, 46.5 ), 
		Angle( 0, 168, 0 ), 
		"tail_left"  
	},
	

	[3] = { 
		Vector( 12, -121.34, 49.6 ), 
		Angle( -1, 185, 5.5 ), 
		"rear_right" 
	},
	[4] = { 
		Vector( 32, -119, 46.6 ), 
		Angle( 1, 195, 0 ), 
		"tail_right"
	},

}

COMPONENT.Sections = {
	["auto_rear_taillights"] = {
		[1] = { { 1, "_1" }, { 2, "_1" } },
		[2] = { { 3, "_2" }, { 4, "_2"} },
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