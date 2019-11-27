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

local name = "Pringles Viper Dual"

local COMPONENT = {}

COMPONENT.Model = "models/tdmcars/emergency/equipment/fedsig_viper_dual.mdl"
COMPONENT.Required = "489864412"
COMPONENT.Skin = 0
COMPONENT.Category = "Interior"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ForwardTranslation = true
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
}

COMPONENT.Meta = {
	auto_viper = {
		AngleOffset = 0,
		W = 4.5,
		H = 4,
		WMult = 1,
		Sprite = "sprites/emv/tdm_viper",
		Scale = .9,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90,
		EmitArray = {
			Vector( 1.4, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.4, 0, 0 )
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 0.63, 2.1, 0.78 ), Angle( 0, 90, 0 ), "auto_viper" },
	[2] = { Vector( 0.63, -2.1, 0.78 ), Angle( 0, 90, 0 ), "auto_viper" },

}

COMPONENT.Sections = {
	["Fed_viper_dual"] = {
		[1] = { {1 , B} },
		[2] = { {2, R} }
	},
	["fed_sig_warn"] = {
		[1] = { {1, A} },
		[2] = { {2, W} }
	}
}

COMPONENT.Patterns = {
	["Fed_viper_dual"] = {
		["code1"] = {1,1,1,1,1,1,0,0,0,2,2,2,2,2,0,0,0,0},
		["code2"] = {1,1,1,0,1,1,1,0,2,2,2,0,2,2,2},
		["code3"] = {1,0,1,0,2,0,2}
	},
	["fed_sig_warn"] = {
		["warn"] = {1,1,1,1,1,0,1,1,1,1,1,0,2,2,2,2,2,2,0,2,2,2,2,2}
	}
}

COMPONENT.Modes = {
	Primary = {
		CAT = {
			["fed_sig_warn"] = "warn"
		},
		M1 = {  
			["Fed_viper_dual"] = "code1"
		},
		M2 = {
			["Fed_viper_dual"] = "code2"	
		},
		M3 = { 
			["Fed_viper_dual"] = "code3"
			
		},
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )