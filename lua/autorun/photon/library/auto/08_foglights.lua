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

local name = "08 Charger Fog-Lights"

local COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
}

COMPONENT.Meta = {
	charger08_fogflash = {
		AngleOffset = -90,
		W = 5,
		H = 5,
		WMult = .9,
		Sprite = "sprites/emv/light_circle",
		Scale = 2,
	},
}

COMPONENT.Positions = {

	[1] = { 
	Vector( -32.5, 108, 17.4 ),
	Angle( 0, 3, -5 ), 

	"charger08_fogflash" },
	
	[2] = 
		{ 
		Vector( 32.5, 108, 17.4 ), 
		Angle( 0, 3, -5 ), 
		"charger08_fogflash" 
		},

}

COMPONENT.Sections = {
	["auto_charger08_fogflash"] = {
		[1] = {{1,"_1"},},
		[2] = {{2,"_2"},},
		[3] = {{1,"_1"},{2,"_2"},},
	},
}

COMPONENT.Patterns = {
	["auto_charger08_fogflash"] = {
		["code1"] = { 3 },
		["code2"] = { 1,1,1,1,0,1,1,1,1,0,2,2,2,2,0,2,2,2,2 },
		["code3"] = { 1,1,0,1,1,0,2,2,0,2,2 },
		["off"] = { 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_charger08_fogflash"] = "code1" },
		M2 = { ["auto_charger08_fogflash"] = "code2" },
		M3 = { ["auto_charger08_fogflash"] = "code3" }
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )