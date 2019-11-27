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

local name = "Pringles Charger12 Wig-Wags"

local COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"

COMPONENT.Meta = {
	charger2012_headlight1 = {
		AngleOffset = -90,
		W = 8.2,
		H = 8.2,
		Sprite = "sprites/emv/circular_src",
		Scale = 4
	},
	charger2012_headlight2 = {
		AngleOffset = -90,
		W = 8.2,
		H = 8.2,
		Sprite = "sprites/emv/circular_src",
		Scale = 4
	},
	charger2012_headlight3 = {
		AngleOffset = -90,
		W = 8.2,
		H = 8.2,
		Sprite = "sprites/emv/circular_src",
		Scale = 4
	},
	charger2012_headlight4 = {
		AngleOffset = -90,
		W = 8.2,
		H = 8.2,
		Sprite = "sprites/emv/circular_src",
		Scale = 4
	},
}

COMPONENT.Positions = {

	[1] = { Vector(36.5, 104.89, 38.3), Angle(0,0,-4), "charger2012_headlight1" },
	[2] = { Vector(-36.5, 104.89, 38.3), Angle(0,0,-4), "charger2012_headlight2" },
	[3] = { Vector(36.5, 104.89, 38.3), Angle(0,0,-4), "charger2012_headlight1" },
	[4] = { Vector(-36.5, 104.89, 38.3), Angle(0,0,-4), "charger2012_headlight2" },

}

COMPONENT.Sections = {
	["charger2012_wigwags"] = {
		[1] = { { 1, SW, { 12, 0, 4 } }, { 2, SW, { 12, 0, 0 } }, },
		[2] = { {3,SW}, },
		[3] = { {4, SW}}
	},
}

COMPONENT.Patterns = {
	["charger2012_wigwags"] = {
		["code1"] = {3,3,3,3,0,3,3,3,3,0,2,2,2,2,0,2,2,2,2},
		["code2"] = {2,2,3,3,2,2,3,3},
		["code3"] = { 1 },
		["off"] = { 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["charger2012_wigwags"] = "code1" },
		M2 = { ["charger2012_wigwags"] = "code2" },
		M3 = { ["charger2012_wigwags"] = "code3" }
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "Pringles Charger12 Flashtails"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"

COMPONENT.Meta = {
	charger2012_flashtails = {
		AngleOffset = 90,
		W = 24,
		H = 19,
		Sprite = "sprites/emv/tdm_charger_tail",
		Scale = 2,
		WMult = .9,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 37.3, -116.57, 46.6 ), Angle( 2, 13.2, 0 ), "charger2012_flashtails" },
	[2] = { Vector( -37.3, -116.57, 46.6 ), Angle( 178, -13.2, 180 ), "charger2012_flashtails" },

}

COMPONENT.Sections = {
	["charger2012_flashtails"] = {
		[1] = { { 1, R }, { 2, R } },
		[2] = { { 1, R }, },
		[3] = { { 2, R }, },
	},
}
 
COMPONENT.Patterns = {
	["charger2012_flashtails"] = {
		["code2"] = { 2,2,2,2,3,3,3,3,2,2,2,2,3,3,3,3,2,2,2,2,3,3,3,3,
			2,2,2,2,3,3,3,3,2,2,2,2,3,3,3,3,2,2,2,2,3,3,3,3, },
		["code3"] = { 2,2,2,2,3,3,3,3,2,2,2,2,3,3,3,3,2,2,2,2,3,3,3,3,
			2,2,2,2,3,3,3,3,2,2,2,2,3,3,3,3,2,2,2,2,3,3,3,3, },
		["off"] = { 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["charger2012_flashtails"] = "off" },
		M2 = { ["charger2012_flashtails"] = "code2" },
		M3 = { ["charger2012_flashtails"] = "code3" }
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )
