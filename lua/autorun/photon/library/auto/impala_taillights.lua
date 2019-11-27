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


local name = "Impala Taillights"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "D_RED",
	[2] = "D_RED",
}

COMPONENT.Meta = {
	tail_left = {
		AngleOffset = -90,
		W = 9.8,
		H = 8.5,
		Sprite = "sprites/emv/impala_tail_left",
		Scale = 1,
		WMult = 1.25,
	},
	tail_right = {
		AngleOffset = -90,
		W = 9.8,
		H = 8.5,
		Sprite = "sprites/emv/impala_tail_right",
		Scale = 1,
		WMult = 2,
		
	},
	
}

COMPONENT.Positions = {

	[1] = { 
		Vector( -30, -112.5, 46.2), 
		Angle( 0, 168, 20), 
		"tail_left" 
	},
	[2] = { 
		Vector( 30, -113, 46.2 ), 
		Angle( 0, 168, 20 ), 
		"tail_right"  
	},

}

COMPONENT.Sections = {
	["auto_rear_taillights"] = {
		[1] = { { 1, "_1" },  },
		[2] = { { 2, "_2" },  },
	},
}

COMPONENT.Patterns = {
	["auto_rear_taillights"] = {
		["code1"] = { 2,2,2,2,2,2,0,1,1,1,1,1,1},
		["code2"] ={ 2,2,2,0,2,2,2,0,1,1,1,0,1,1,1,0},
		["code3"] = { 2,0,2,0,1,0,1}
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