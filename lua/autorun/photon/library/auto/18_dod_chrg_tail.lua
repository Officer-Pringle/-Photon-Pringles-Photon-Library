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


local name = "18 Charger Tail Lights"
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
	rear_left = {
		AngleOffset = -90,
		W = 30,
		H = 16,
		Sprite = "sprites/emv/15_awd_rear_left",
		Scale = 200,
		WMult = 1.25,
		SourceOnly = true
	},
	rear_right = {
		AngleOffset = -90,
		W = 28,
		H = 14.5,
		Sprite = "sprites/emv/15_awd_rear_right",
		Scale = 200,
		WMult = 1.25,
		SourceOnly = true
	},
	tail_left = {
		AngleOffset = -90,
		W = 14,
		H = 12,
		Sprite = "sprites/emv/15_awd_rear_tail_left",
		Scale = 200,
		WMult = 1.25,
		SourceOnly = true
	},
	tail_right = {
		AngleOffset = -90,
		W = 15,
		H = 12,
		Sprite = "sprites/emv/15_awd_rear_tail_right",
		Scale = 200,
		WMult = 1,
		SourceOnly = true
	},
}

COMPONENT.Positions = {

	[1] = {
		Vector( -14, -122.6, 46.8), 
		Angle( 0, 174.5, 2.5), 
		"rear_left" 
	},
	[2] = { 
		Vector( -34.5, -117.35, 45.4 ), 
		Angle( 6, 150, 0 ), 
		"tail_left"  
	},
	

	[3] = { 
		Vector( 14, -122.9, 46.8 ), 
		Angle( -1, 185, 5.5 ), 
		"rear_right" 
	},
	[4] = { 
		Vector( 34.5, -117.2, 45.5), 
		Angle( -5, 212, 1 ), 
		"tail_right"
	},

}

COMPONENT.Sections = {
	["auto_rear_taillights"] = {
		[1] = { { 1, "_1" }, { 2, "_1" } },
		[2] = { { 3, "_2" }, { 4, "_2" } },
		[3] = { { 1, "_1" }, { 3, "_2" } },
		[4] = { { 2, "_1" }, { 4, "_2" } },
	},
}

COMPONENT.Patterns = {
	["auto_rear_taillights"] = {
		["code1"] = { 1,1,1,1,1,1,0,2,2,2,2,2,2},
		["code2"] = { 1,1,1,0,1,1,1,0,2,2,2,0,2,2,2,0},
		["code3"] = { 1,0,1,0,2,0,2},
		["code1A"] = { 3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,
					   4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4, },
		["code2A"] = { 3,3,3,0,3,3,3,0,4,4,4,0,4,4,4,},
		["code3A"] = { 3,3,3,0,3,3,3,0,4,4,4,0,4,4,4,
		3,3,0,3,3,0,4,4,0,4,4,3,3,0,3,3,0,4,4,0,4,4,3,3,0,3,3,0,4,4,0,4,4,
		3,0,4,0,3,0,4,0,3,0,4,0,3,0,4,0,
		3,4,3,3,4,3,3,4,3,3,4,3,3,4,3,3,4,3,3,4,3,
		1,1,0,1,1,0,2,2,0,2,2,1,1,0,1,1,0,2,2,0,2,2,1,1,0,1,1,0,2,2,0,2,2,
		1,0,2,0,1,0,2,0,1,0,2,0,
		1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,}
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


local name = "18 Charger Tail Lights Out"
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
		W = 14,
		H = 12,
		Sprite = "sprites/emv/15_awd_rear_tail_left",
		Scale = 1,
		WMult = 1.25,
		SourceOnly = true
	},
	tail_right = {
		AngleOffset = -90,
		W = 15,
		H = 12,
		Sprite = "sprites/emv/15_awd_rear_tail_right",
		Scale = 1,
		WMult = 1,
		SourceOnly = true
	},
}

COMPONENT.Positions = {

	[1] = { 
		Vector( 34.5, -117.2, 45.5), 
		Angle( -5, 212, 2 ), 
		"tail_right"
	},
	[2] = { 
		Vector( -34.5, -117.35, 45.4 ), 
		Angle( 6, 150, 0 ), 
		"tail_left"  
	},
}

COMPONENT.Sections = {
	["auto_rear_taillights"] = {
		[1] = { { 1, "_1" }, },
		[2] = { { 2, "_1" }, },
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