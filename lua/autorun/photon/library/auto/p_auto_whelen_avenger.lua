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

local name = "P Whelen Avenger"

local COMPONENT = {}

COMPONENT.Model = "models/lonewolfie/whelenavenger_double.mdl"
COMPONENT.Skin = 0
COMPONENT.Required = "263574779"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.Category = "Interior"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
}

COMPONENT.Meta = {
	auto_whelen_avenger = {
		W = 5.2,
		H = 5.2,
		Sprite = "sprites/emv/emv_whelen_src",
		Scale = 2,
		WMult = 1.5,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
}

COMPONENT.Positions = {

	[1] = { 
		Vector( -.6, 2.6, -.85 ), 
		Angle( 0, -90, 0 ), 
		"auto_whelen_avenger" 
	},
	[2] = {
		Vector( -.6, -2.6, -.85 ), 
		Angle( 0, -90, 0 ),
		"auto_whelen_avenger"
	},
	
}

COMPONENT.Sections = {
	["auto_whelen_avenger"] = {
		[1] = { {1, "_1" }, },
		[2] = { {2, "_2"} },
		[3] = { { 1, "_1" }, { 2, "_2" }, },
		
	},
}

COMPONENT.Patterns = {
	["auto_whelen_avenger"] = {
		["code1"] = { 1,1,1,1,1,1,2,2,2,2,2,2},
		["code2"] = { 1,1,0,1,1,0,2,2,0,2,2,0,1,1,2,2,1,1,2,2,1,1,2,2,1,1,2,2,0,0},
		["code3"] = { 1,1,0,1,1,0,2,2,0,2,2,0,1,1,2,2,1,1,2,2,1,1,2,2,1,1,2,2,0,0,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,2,1,1,2,2,1,1,2,2,1,1,2,2},

		["code1A"] ={ 2,2,2,2,2,2,1,1,1,1,1,1},
		["code2A"] ={ 2,2,0,2,2,0,1,1,0,1,1,0,2,2,1,1,2,2,1,1,2,2,1,1,2,2,1,1,0,0},
		["code3A"] ={ 2,2,0,2,2,0,1,1,0,1,1,0,2,2,1,1,2,2,1,1,2,2,1,1,2,2,1,1,0,0,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,1,2,2,1,1,2,2,1,1,2,2,1,1}
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = {["auto_whelen_avenger"] = "code1", },
		M2 = {["auto_whelen_avenger"] = "code2",},
		M3 = {["auto_whelen_avenger"] = "code3",},
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )