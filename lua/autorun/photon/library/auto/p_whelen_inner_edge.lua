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

local name = "P Whelen Inner Edge"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/police_props/whelen_inner_edge.mdl"
COMPONENT.Required = "489864412"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.Category = "Interior"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
	[3] = "WHITE",
	[4] = "AMBER",
}

COMPONENT.Meta = {
	auto_whelen_edge = {
		W = 3.4,
		H = 3.4,
		Sprite = "sprites/emv/emv_whelen_src",
		Scale = 1,
		WMult = 1,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -1.43, -1.63, 0.05 ), Angle( 0, 90, 0 ), "auto_whelen_edge" }, Sprite = "sprites/emv/emv_whelen_src",
	[2] = { Vector( -1.43, 1.63, 0.05 ), Angle( 0, 90, 0 ), "auto_whelen_edge" },
	[3] = { Vector( -0.25, -4.63, 0.05 ), Angle( 0, 90, 0 ), "auto_whelen_edge" },
	[4] = { Vector( -0.25, 4.63, 0.05 ), Angle( 0, 90, 0 ), "auto_whelen_edge" },
	[5] = { Vector( -0.13, -7.3, 0.05 ), Angle( 0, 90, 0 ), "auto_whelen_edge" },
	[6] = { Vector( -0.13, 7.3, 0.05 ), Angle( 0, 90, 0 ), "auto_whelen_edge" },
	[7] = { Vector( 0.1, -10, 0.05 ), Angle( 0, 90, 0 ), "auto_whelen_edge" },
	[8] = { Vector( 0.1, 10, 0.05 ), Angle( 0, 90, 0 ), "auto_whelen_edge" },
}

COMPONENT.Sections = {
	["auto_whelen_edge_norm"] = {
		{ { 8, "_1" }, { 6, "_1" }, { 1, "_2" }, { 3, "_2" }, },
		{ { 5, "_2" }, { 7, "_2" }, { 2, "_1" }, { 4, "_1" }, },
		{ { 8, "_1" }, { 6, "_1" }, { 4, "_1" }, { 2, "_1" }, },
		{ { 1, "_2" }, { 3, "_2" }, { 5, "_2" }, { 7, "_2" }, },
		-- TRAFFIC
		{ { 8, A }, },
		{ { 8, A }, { 6, A } },
		{ { 6, A }, { 4, A } },
		{ { 4, A }, { 2, A } },
		{ { 2, A }, { 1, A } },
		{ { 1, A }, { 3, A } },
		{ { 3, A }, { 5, A } },
		{ { 5, A }, { 7, A } },
		-- DIVERGE --
		{ { 1, A }, { 2, A } },
		{ { 1, A }, { 2, A }, { 3, A }, { 4, A } },
		{ { 3, A }, { 4, A }, { 5, A }, { 6, A } },
		{ { 5, A }, { 6, A }, { 7, A }, { 8, A } },
		-- CODE 3 --
		{ { 8, "_1" }, { 1, "_1" } },
		{ { 6, "_1" }, { 3, "_1" } },
		{ { 1, "_1" }, { 2, "_1" }, { 3, "_1" }, { 4, "_2" },{ 5, "_2" }, { 6, "_2" }, { 7, "_2" }, { 8, "_1" }, },
		{ { 8, "_2" }, { 7, "_2" }, { 6, "_2" }, { 5, "_1" },{ 4, "_1" }, { 3, "_1" }, { 2, "_1" }, { 1, "_2" }, },

	},
	["auto_whelen_edge_trff"] = {
		{ { 8, A }, },
		{ { 8, A }, { 6, A } },
		{ { 6, A }, { 4, A } },
		{ { 4, A }, { 2, A } },
		{ { 2, A }, { 1, A } },
		{ { 1, A }, { 3, A } },
		{ { 3, A }, { 5, A } },
		{ { 5, A }, { 7, A } },
		{ { 7, A }, { 8, A } },

   },
   ["auto_illum"] = {
   	{ {1, "S_WHITE"}, {2, "S_WHITE"} }
   }
}

COMPONENT.Patterns = {
	["auto_whelen_edge_norm"] = {
		["default"] = {
			1, 1, 1, 2, 2, 2, 1, 1, 1, 2, 2, 2,	
		},
	   ["code3"] = { 1, 0, 1, 0, 3, 0, 3, 0, 2, 0, 2,},
       ["right"] = {
           6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 11,11,12,12, 0, 12, 12, 0, 12, 12, 0
       },
       ["left"] = {
          12, 12, 11, 11, 10, 10, 9, 9, 8, 8, 7, 7, 6, 6, 0, 6, 6, 0, 6,6
       },
       ["diverge"] = {
         13, 13, 14, 14, 15, 15, 16, 16, 0, 16, 16, 0, 16, 16 // 17 18
      },
      ["code2"] = {
        1, 2, 2, 1, 2, 2, 1
      },
    },
    ["auto_illum"] = {
    	["Full"] = { 1 }

    }
}

COMPONENT.Modes = {
	Primary = {
		M1 = {["auto_whelen_edge_norm"] = "default", },
		M2 = {["auto_whelen_edge_norm"] = "code2", },
		M3 = {["auto_whelen_edge_norm"] = "code3" },
		ALERT = {["auto_whelen_edge_norm"] = "code3"},
	},
	Auxiliary = {

	},
	Illumination = {
		S = {

		},
		F = { ["auto_illum"] = "Full" }
	}
}

EMVU:AddAutoComponent( COMPONENT, name )