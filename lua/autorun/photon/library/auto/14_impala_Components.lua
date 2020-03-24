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


local name = "P 2014 Impala Taillights"
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
		H = 8.6,
		Sprite = "sprites/emv/impala_tail_right",
		Scale = 1,
		WMult = 2,
		
	},
	
}

COMPONENT.Positions = {

	[1] = { 
		Vector( -30.6, -114.85, 50.6), 
		Angle( 0, 168, 20), 
		"tail_left", 5, 10, "RED"
	},
	[2] = { 
		Vector( 30.6, -114.85, 50.6), 
		Angle( 1, 195, 20 ), 
		"tail_right", 10 , 10, "RED"  
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

local name = "14 Impala Headlight Flashers"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "WHITE",
	[2] = "WHITE",
}

COMPONENT.Meta = {
	front_left = {
		AngleOffset = -90,
		W = 5,
		H = 5,
		Sprite = "sprites/emv/light_circle",
		Scale = .5,
		WMult = 1,
	},
	front_right = {
		AngleOffset = -90,
		W = 5,
		H = 5,
		Sprite = "sprites/emv/light_circle",
		Scale = .5,
		WMult = 1,
		
	},
	
}

COMPONENT.Positions = {

	[1] = { 
		Vector( -34, 101., 37), 
		Angle( -7, 0, 0), 
		"front_left", 5
	},
	[2] = { 
		Vector( 34, 101., 37), 
		Angle( -7, 0, 0),
		"front_right", 5
	},

}

COMPONENT.Sections = {
	["auto_headlights"] = {
		[1] = { { 1, "_1" }, },
		[2] = { { 2, "_2" },  },
	},
}

COMPONENT.Patterns = {
	["auto_headlights"] = {
		["code1"] = { 2,2,2,2,2,2,0,1,1,1,1,1,1},
		["code2"] ={ 2,2,2,0,2,2,2,0,1,1,1,0,1,1,1,0},
		["code3"] = { 2,0,2,0,1,0,1 }
		
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_headlights"] = "code1", },
		M2 = { ["auto_headlights"] = "code2", },
		M3 = { ["auto_headlights"] = "code3", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )