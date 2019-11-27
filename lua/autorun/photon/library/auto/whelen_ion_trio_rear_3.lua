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
local c1 = "_1"
local c2 = "_2"

local name = "Whelen Ion Rear Right"

local COMPONENT = {}

COMPONENT.Required = "1701821427"
COMPONENT.Model = "models/supermighty/photon/rear_ions_right.mdl"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
}

COMPONENT.Meta = {
	wirr_ion = {
		AngleOffset = -90,
		W = 7.3,
		H = 6.2,
		WMult = 1,
		Sprite = "sprites/emv/whelen_ion",
		Scale = 2.5,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -.4, 6.15, 0.21), Angle( 0, 272.8, 0 ), "wirr_ion"},
	[2] = { Vector( 1.42, -.5, 0.21), Angle( 0, 272.8, 0 ), "wirr_ion"},
	[3] = { Vector( 1.74, -7.1, 0.21), Angle( 0, 272.8, 0 ), "wirr_ion"},

}

COMPONENT.Sections = {
	["wirr_auto"] = {
		[1] = { { 1 , c1 }, { 3 , c1 },},
		[2] = { { 2, c2 }},
		[3] = { { 1 , c1 }, { 3 , c1 }, { 2, c1 } },
		[4] = { { 1 , c2 }, { 3 , c2 }, { 2, c2 } }
	},
}

COMPONENT.Patterns = {
	["wirr_auto"] = {
		["code1"] = { 1,1,1,1,1,2,2,2,2,2 },
		["code2"] = { 3,3,3,3,3,3,4,4,4,4,4,4,4},
		["code3"] = { 1,1,0,1,1,0,2,2,0,2,2,0,1,2,1,2,1,2,1,2,1,2,1,2,3,3,0,3,3,0,4,4,0,4,4,0,3,4,3,4,3,4,2,1,2,3,4,1,2,3,4,1,2,3,4,0}
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["wirr_auto"] = "code1" },
		M2 = { ["wirr_auto"] = "code2" },
		M3 = { ["wirr_auto"] = "code3" }
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )

--[[-------------------------------------------------------------------------
                        END COMPONENT
---------------------------------------------------------------------------]]

--[[-------------------------------------------------------------------------
                       START COMPONENT
---------------------------------------------------------------------------]]
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

local name = "Whelen Ion Rear Left"

local COMPONENT = {}

COMPONENT.Required = "1701821427"
COMPONENT.Model = "models/supermighty/photon/rear_ions_left.mdl"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Interior"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
}

COMPONENT.Meta = {
	wirr_ion = {
		AngleOffset = -90,
		W = 7.3,
		H = 6.2,
		WMult = 1,
		Sprite = "sprites/emv/whelen_ion",
		Scale = 2.5,
	},
}

COMPONENT.Positions = {
 --[[
	[1] = { Vector( -.4, 6.15, 0.21), Angle( 0, 272.8, 0 ), "wirr_ion"},
	[2] = { Vector( 1.42, -.5, 0.21), Angle( 0, 272.8, 0 ), "wirr_ion"},
	[3] = { Vector( 1.74, -7.1, 0.21), Angle( 0, 272.8, 0 ), "wirr_ion"},]]
	[1] = { Vector( 1.74, 7, 0.21), Angle( 0, 267, 0 ), "wirr_ion"},
	[2] = { Vector( 1.42, .45, 0.21), Angle( 0, 267, 0 ), "wirr_ion"},
	[3] = { Vector( -.4, -6.02, .21), Angle( 0, 267, 0 ), "wirr_ion"},
}

COMPONENT.Sections = {
	["wirr_auto"] = {
		[1] = { { 1 , c1 }, { 3 , c1 },},
		[2] = { { 2, c2 }},
		[3] = { { 1 , c1 }, { 3 , c1 }, { 2, c1 } },
		[4] = { { 1 , c2 }, { 3 , c2 }, { 2, c2 } }
	},
}

COMPONENT.Patterns = {
	["wirr_auto"] = {
		["code1"] = { 1,1,1,1,1,2,2,2,2,2 },
		["code2"] = { 3,3,3,3,3,3,4,4,4,4,4,4,4},
		["code3"] = { 1,1,0,1,1,0,2,2,0,2,2,0,1,2,1,2,1,2,1,2,1,2,1,2,3,3,0,3,3,0,4,4,0,4,4,0,3,4,3,4,3,4,2,1,2,3,4,1,2,3,4,1,2,3,4,0}
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["wirr_auto"] = "code1" },
		M2 = { ["wirr_auto"] = "code2" },
		M3 = { ["wirr_auto"] = "code3" }
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )