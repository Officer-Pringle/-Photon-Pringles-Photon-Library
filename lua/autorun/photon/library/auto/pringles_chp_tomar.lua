AddCSLuaFile()

local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"

local name = "Pringles CHP Tomar"

local COMPONENT = {}

COMPONENT.Model = "models/tdmcars/emergency/equipment/tomar_200s.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.Category = "Auxiliary"

COMPONENT.Meta = {
	chp_tomar_src = {
		AngleOffset = 0,
		W = 8.1,
		H = 7,
		Sprite = "sprites/emv/emv_whelen_src",
		Scale = 1,
		WMult = 1.5,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90
	}
}

COMPONENT.Positions = {
	[1] = { Vector( 1.48, -3.56, 1.13 ), Angle( 0, 90, 0 ), "chp_tomar_src" },
	[2] = { Vector( 1.48, 3.56, 1.13 ), Angle( 0, 90, 0 ), "chp_tomar_src" },

	[3] = { Vector( 1.48, -10.64, 1.13 ), Angle( 0, 90, 0 ), "chp_tomar_src" },
	[4] = { Vector( 1.48, 10.64, 1.13 ), Angle( 0, 90, 0 ), "chp_tomar_src" },

	[5] = { Vector( 1.48, -17.72, 1.13 ), Angle( 0, 90, 0 ), "chp_tomar_src" },
	[6] = { Vector( 1.48, 17.72, 1.13 ), Angle( 0, 90, 0 ), "chp_tomar_src" },

	[7] = { Vector( 1.48, -24.8, 1.13 ), Angle( 0, 90, 0 ), "chp_tomar_src" },
	[8] = { Vector( 1.48, 24.8, 1.13 ), Angle( 0, 90, 0 ), "chp_tomar_src" },
}

COMPONENT.Sections = {
	["auto_chp_tomar_200s_rear"] = {
		[1] = { { 4, A }, { 6, A } },
		[2] = { { 5, B }, { 7, B }, { 6, R }, { 8, R } },
		[3] = { { 1, A }, { 2, A }, { 3, A }, { 4, A } },
		[4] = { {5, A }, { 3, A } },
	},
	["auto_chp_tomar_200s_traffic"] = {
		[1] = { { 4, A } },
		[2] = { { 4, A }, { 2, A } },
		[3] = { { 4, A }, { 2, A }, {1, A} },
		[4] = { { 4, A }, { 2, A }, {1, A}, {3, A} },

		[5] = { { 3, A }, { 1, A }, {2, A} },
		[6] = { { 3, A }, { 1, A } },
		[7] = { { 3, A } },

		[8] = { { 1, A }, { 2, A } },
		[9] = { { 1, A }, { 2, A }, { 3, A }, { 4, A } },
		[10] = { { 3, A },  { 4, A } },
	},
	["auto_chp_tomar_200s_traffic_blue"] = {
		[1] = { { 5, B } }
	},
	["C1_auto_tomar"] = {
		[1] = { {7,B} }
	}
}

COMPONENT.Patterns = {
	["auto_chp_tomar_200s_traffic"] = {
		["left"] = { 0, 1, 2, 3, 4, 4, 4, 4, 4, 5, 6, 7, 0, 0, 0, 0, 0 },
		["right"] = { 0, 7, 6, 5, 4, 4, 4, 4, 4, 4, 3, 2, 1, 0, 0, 0, 0, 0 },
		["diverge"] = { 8, 8, 9, 9, 4, 4, 4, 4, 10, 10, 0, 0, 0, 0, 0, 0 },
	},
	["auto_chp_tomar_200s_traffic_blue"] = {
		["trf"] = { 1, 0 }
	},
	["auto_chp_tomar_200s_rear"] = {
		["code1"] = { 4, 4, 4, 4, 4, 1, 1, 1, 1, 1 },
		["code2"] = { 3, 3, 3, 3, 3, 2, 2, 2, 2, 2 },
	},
	["C1_auto_tomar"] = {
		["code1"] = { 1 }
	}
}

COMPONENT.TrafficDisconnect = {
	["auto_chp_tomar_200s_traffic_blue"] = {
		5,
	},
	["auto_chp_tomar_200s_traffic"] = {
		1, 2, 3, 4
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = {
			["auto_chp_tomar_200s_rear"] = "code1",
			["C1_auto_tomar"] = "code1"
		},
		M2 = {
			["auto_chp_tomar_200s_rear"] = "code2",
		},
		M3 = {
			["auto_chp_tomar_200s_rear"] = "code2",
		}
	},
	Auxiliary = {
		L = {
			["auto_chp_tomar_200s_traffic_blue"] = "trf",
			["auto_chp_tomar_200s_traffic"] = "left"
		},
		R = {
			["auto_chp_tomar_200s_traffic_blue"] = "trf",
			["auto_chp_tomar_200s_traffic"] = "right"
		},
		D = {
			["auto_chp_tomar_200s_traffic_blue"] = "trf",
			["auto_chp_tomar_200s_traffic"] = "diverge"
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )