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

local name = "P Whelen Ion V Series"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/500series_v.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
	[3] = "WHITE",
	[4] = "WHITE",
}

COMPONENT.Meta = {
	ion_v_ang = {
		AngleOffset = -90,
		W = 1.75,
		H = 2.2,
		Sprite = "sprites/emv/emv_whelen_src",
		WMult = 1.5,
		Scale = 1.25,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
	ion_v_cir = {
		AngleOffset = -90,
		W = .7,
		H = .7,
		Sprite = "sprites/emv/circular_src",
		WMult = 1,
		Scale = .5,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -1.21, -1, .25 ), Angle( 0, 139, 0 ), "ion_v_ang" },
	[2] = { Vector( -1.21, 1, .25 ), Angle( 0, 41, 0 ), "ion_v_ang" },
	[3] = { Vector( -1.21, -1, 1.1 ), Angle( 0, 139, 0 ), "ion_v_ang" },
	[4] = { Vector( -1.21, 1, 1.1 ), Angle( 0, 41, 0 ), "ion_v_ang" },
	
	[5] = { Vector( -.65, -2.25, 0.22 ), Angle( 0, 90, 0 ), "ion_v_cir" },
	[6] = { Vector( -.65, -2.25, 1.15 ), Angle( 0, 90, 0 ), "ion_v_cir" },
	[7] = { Vector( -.65, -2.75, .65 ), Angle( 0, 90, 0 ), "ion_v_cir" },
	[8] = { Vector( -.65, 2.25, 0.22 ), Angle( 0, 90, 0 ), "ion_v_cir" },
	[9] = { Vector( -.65, 2.25, 1.15 ), Angle( 0, 90, 0 ), "ion_v_cir" },
	[10] = { Vector( -.65, 2.75, .65 ), Angle( 0, 90, 0 ), "ion_v_cir" },
	[11] = { Vector( -1.5, 0, .65 ), Angle( 90, 90, 0 ), "ion_v_ang" },

}

COMPONENT.Sections = {
	["auto_whelen_linz6"] = {
		[1] = { { 1, "_1" }, { 2, "_2" }, { 3, "_1" }, { 4, "_2" }, { 5, "_3" },
				{ 6, "_3" }, { 7, "_3" }, { 8, "_4" }, { 9, "_4" }, { 10, "_4" } },
		[2] = { { 1, "_1" }, { 3, "_1" }, { 5, "_3" }, { 6, "_3" }, { 7, "_3" } },
		[3] = { { 2, "_2" }, { 4, "_2" }, { 8, "_4" }, { 9, "_4" }, { 10, "_4" } },
	},
}

COMPONENT.Patterns = {
	["auto_whelen_linz6"] = {
		["mode1"] = { 1,0,1,0,1,0, },
		["mode1A"] = { 1,0,1,0,1,0,0,0,0,0, },
		["mode1B"] = { 0,0,0,0,0,1,0,1,0,1, },
		["mode1C"] = { 1,0,1,0,1,0,0,0,0,0,0,0,0,0,0 },
		["mode1Split"] = { 2,0,2,0,2,0,3,0,3,0,3,0, },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_whelen_linz6"] = "mode1", },
		M2 = { ["auto_whelen_linz6"] = "mode1", },
		M3 = { ["auto_whelen_linz6"] = "mode1", }
	},
	Auxiliary = {},
	Illumination = {
		T = { 
			{ 5, W }, { 6, W }, { 7, W }, { 8, W },
			{ 9, W }, { 10, W }, { 11, W },
		},
	}
}

EMVU:AddAutoComponent( COMPONENT, name )