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

local name = "CHP 500 Series"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/chp/500series_v.mdl"
COMPONENT.Skin = 0
COMPONENT.Category = "Interior"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ForwardTranslation = false
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
	[3] = "AMBER",
}

COMPONENT.Meta = {
	pushbar_main = {
		AngleOffset = -90,
		W = 2,
		H = 2,
		Sprite = "sprites/emv/lightbar",
		WMult = 1,
		Scale = 0.5
	},
	pushbar_tri = {
		AngleOffset = -90,
		W = 2.5,
		H = 2.5,
		Sprite = "sprites/emv/emv_whelen_tri",
		WMult = 1,
		Scale = 1
	},
}

COMPONENT.Positions = {
	[1] = { 
		Vector( -.6, -2.4, .6 ),
		Angle( -30, 90, 0 ), 
		"pushbar_tri" },
}

COMPONENT.Sections = {
	["auto_code3_wingman"] = {
		[1] = { { 1, G },},
		--	CODE 1
		
	},
	
}

COMPONENT.TrafficDisconnect = {
	["auto_code3_wingman_traffic"] = {
		1, 2, 3, 4, 5, 6
	}
}

COMPONENT.Patterns = {
	["auto_code3_wingman"] = {
		["code1"] = { 1 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { 
			["auto_code3_wingman"] = "code1",
		},
		M2 = { 
			["auto_code3_wingman"] = "code2",
			["auto_code3_wingman_traffic"] = "off"
		},
		M3 = { 
			["auto_code3_wingman"] = "code2",
			["auto_code3_wingman_traffic"] = "off"
		},
	},
	Auxiliary = {
	L = { ["auto_code3_wingman_traffic"] = "left" },
	D = { ["auto_code3_wingman_traffic"] = "middle" },
	R = { ["auto_code3_wingman_traffic"] = "right" },
	C = { ["auto_code3_wingman_traffic"] = "warn" },
	},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )