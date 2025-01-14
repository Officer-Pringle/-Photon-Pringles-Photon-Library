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

local name = "Mirror Light"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/chp/mirror_light.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE"
}

COMPONENT.Meta = {
	auto_ion_left = {
		AngleOffset = 0,
		W = 7.5,
		H = 11,
		WMult = 2,
		Sprite = "sprites/emv/whelen_ion_left",
		Scale = .66,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
	auto_ion_right = {
		AngleOffset = 0,
		W = 7.5,
		H = 11,
		WMult = 2,
		Sprite = "sprites/emv/whelen_ion_right",
		Scale = .66,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -2, 1.6, 0 ), Angle( 0, 90, 0 ), "auto_ion_left" },
	[2] = { Vector( -2, -1.5, 0 ), Angle( 0, 90, 0 ), "auto_ion_right" },

}

COMPONENT.Sections = {
	["auto_ion"] = {
		[1] = { { 1, "_1", .88 }, { 2, "_1", .88 },  },
		[2] = { { 1, "S_WHITE", .88 }, { 2, "S_WHITE", .88 },  }

	},
	["p_ion_mc"] = {
		[1] = {
			{1 , "_1"}, {2, "_1"}
		},
		[2] = { {1,"_2"}, {2, "_2"} }
	}
}

COMPONENT.Patterns = {
	["auto_ion"] = {
		["code1CA"] = { 1 },
		["code2CA"] = { 1 },
		["code3CA"] = { 1 },
		["code1"] = { 1, 1, 1, 0, },
		["code1A"] = { 1, 1, 1, 0, 0, 0, 0, 0, },
		["code1B"] = { 0, 0, 0, 0, 1, 1, 1, 0 },
		["code1CHPA"] = { 1 },
		["code1CHPB"] = { 1 },
		["code1NYPDA"] = { 1, 1, 1, 1, 0, 0, 0, 0 },
		["code2NYPDA"] = { 1, 1, 1, 1, 0, 0, 0, 0 },
		["code3NYPDA"] = { 1, 1, 1, 1, 0, 0, 0, 0 },
		["code1NYPDB"] = { 0, 0, 0, 0, 1, 1, 1, 1 },
		["code2NYPDB"] = { 0, 0, 0, 0, 1, 1, 1, 1 },
		["code3NYPDB"] = { 0, 0, 0, 0, 1, 1, 1, 1 },
		["code2"] = { 1, 0, 1, 1, 1, 0, 0, 0 },
		["code2A"] = { 1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code2B"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
		["code2CHPA"] = { 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code3CHPA"] = { 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
		["code2CHPB"] = { 0, 0, 0, 0, 0, 1, 1, 1, 1, 1 },
		["code3CHPB"] = { 0, 0, 0, 0, 0, 1, 1, 1, 1, 1 },
		["code3"] = { 1, 0 },
		["code3A"] = { 1, 0, 1, 0, 0, 0 },
		["code3B"] = { 0, 0, 0, 1, 0, 1 },
		["alert"] = { 1, 0 },
		["alertA"] = { 0, 1 },
		["alertB"] = { 1, 0 },
		["alertCHPA"] = { 0, 1 },
		["alertCHPB"] = { 1, 0 },
		["alertNYPDA"] = { 1, 0 },
		["alertNYPDB"] = { 0, 1 },
		["alertCA"] = { 1 },
		["all"] = { 1 },
		["allA"] = { 1 },
		["allB"] = { 1 },
		["Full"] = { 2 }

	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = { 
			["auto_ion"] = "code1", 
		},
		M2 = { ["auto_ion"] = "code2", },
		M3 = { ["auto_ion"] = "code3", },
		ALERT = { ["auto_ion"] = "alert", },
	},
	Auxiliary = {},
	Illumination = {
		F = {
			["auto_ion"] = "Full"
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )