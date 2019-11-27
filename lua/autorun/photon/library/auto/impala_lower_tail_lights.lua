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


local name = "Impala Lower Taillights"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
}

COMPONENT.Meta = {
	reverse = {
		AngleOffset = 90,
		W = 12,
		H = 12,
		Sprite = "sprites/emv/impala_reverse",
		Scale = .6,
		WMult = 1.2
	},
}

COMPONENT.Positions = {

	[1] = { Vector(-32,-114,40), Angle(0,-20,-15), "reverse" }, 
	[2] = { Vector(32,-114,40), Angle(0,20,-15), "reverse" },
	

}

COMPONENT.Sections = {
	["auto_rear_taillights"] = {
		[1] = { { 1, "_1" }, },
		[2] = { { 2, "_2" } }
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