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


local name = "13Tahoe Fog Flashers"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "S_WHITE",
	[2] = "S_WHITE",
}

COMPONENT.Meta = {
	front_left = {
		AngleOffset = -90,
		W = 6,
		H = 6,
		Sprite = "sprites/emv/effect_artifact2",
		Scale = 1,
		WMult = 1
	},
	front_right = {
		AngleOffset = -90,
		W = 6,
		H = 6,
		Sprite = "sprites/emv/effect_artifact2",
		Scale = 1,
		WMult = 1
	},
	
}

COMPONENT.Positions = {
	[1] = { 
		Vector( 36.5, 104.2, 22.5), 
		Angle( 0, 0, 0), 
		"front_right" 
	},
	[2] = { 
		Vector( -36.5, 104.2, 22.5), 
		Angle( 0, 0, 0),
		"front_left"  
	},

}

COMPONENT.Sections = {
	["auto_front_foglights"] = {
		[1] = { { 1, "_1" } },
		[2] = { { 2, "_2" }},
	},
}

COMPONENT.Patterns = {
	["auto_front_foglights"] = {
		["code1"] = { 1,1,1,1,1,1,0,2,2,2,2,2,2},
		["code2"] = { 1,1,1,0,1,1,1,0,2,2,2,0,2,2,2,0},
		["code3"] = { 1,0,1,0,2,0,2},
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_front_foglights"] = "code1", },
		M2 = { ["auto_front_foglights"] = "code2", },
		M3 = { ["auto_front_foglights"] = "code3", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )