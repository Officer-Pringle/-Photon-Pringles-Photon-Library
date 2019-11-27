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


local name = "Front Flash Inner"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "RED",
}

COMPONENT.Meta = {
	left = {
		AngleOffset = -90,
		W = 14,
		H = 10,
		Sprite = "sprites/emv/circular_src",
		Scale = 1,
		WMult = 1
	},
	right = {
		AngleOffset = -90,
		W = 14,
		H = 10,
		Sprite = "sprites/emv/circular_src",
		Scale = 1,
		WMult = 1
	},
	
}

COMPONENT.Positions = {

	[1] = { 
		Vector( -29, 109, 37.4), 
		Angle( 0, -5, 0), 
		"left" 
	},
	[2] = { 
		Vector( 29, 109, 37.4), 
		Angle( 0, -5, 0),  
		"right"  
	},
	

}

COMPONENT.Sections = {
	["auto_front_lights"] = {
		[1] = { { 1, "_1" }, },
		[2] = { { 2, "_2" }},
	},
}

COMPONENT.Patterns = {
	["auto_front_lights"] = {
		["code1"] = { 1,1,1,1,1,1,0,2,2,2,2,2,2},
		["code2"] = { 1,1,1,0,1,1,1,0,2,2,2,0,2,2,2,0},
		["code3"] = { 1,0,1,0,2,0,2},
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_front_lights"] = "code1", },
		M2 = { ["auto_front_lights"] = "code2", },
		M3 = { ["auto_front_lights"] = "code3", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )