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

local name = "Pringles Whelen Liberty SX"

local COMPONENT = {}

COMPONENT.Model = "models/schmal/whelen_liberty/liberty_lightbar.mdl"
COMPONENT.Lightbar = true
COMPONENT.Skin = 0
COMPONENT.Category = "Lightbar"
COMPONENT.Bodygroups = {}
COMPONENT.DefaultColors = {
	[1] = "AMBER",
	[2] = "AMBER"
}

COMPONENT.Meta = {
	liberty_f_main = {
		AngleOffset = -90,
		W = 8.2,
		H = 7.5,
		Sprite = "sprites/emv/emv_whelen_src",
		WMult = 1.4,
		Scale = 1,
		EmitArray = {
			Vector( 1.6, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.6, 0, 0 )
		}
	},
	liberty_takedown = {
		AngleOffset = -90,
		W = 4.2,
		H = 4.2,
		Sprite = "sprites/emv/emv_whelen_tri",
		WMult = 1,
		Scale = 1,
		EmitArray = {
			Vector( -.6, -.45, 0 ),
			Vector( 0, .6, 0 ),
			Vector( .6, -.45, 0 )
		}
	},
	liberty_alley = {
		AngleOffset = -90,
		W = 4.2,
		H = 4.2,
		Sprite = "sprites/emv/emv_whelen_tri",
		WMult = 1,
		Scale = 1.2
	},
	liberty_f_ang = {
		AngleOffset = -90,
		W = 16,
		H = 15,
		Sprite = "sprites/emv/emv_whelen_corner",
		WMult = 1.4,
		Scale = 1,
		EmitArray = {
			Vector( 3.2, 0, 0 ),
			Vector( 1.6, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.6, 0, 0 ),
			Vector( -3.2, 0, 0 )
		}
	},
	liberty_r_ang = {
		AngleOffset = 90,
		W = 16,
		H = 15,
		Sprite = "sprites/emv/emv_whelen_corner",
		WMult = 1.4,
		Scale = 1,
		EmitArray = {
			Vector( 3.2, 0, 0 ),
			Vector( 1.6, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.6, 0, 0 ),
			Vector( -3.2, 0, 0 )
		}
	},
	liberty_r_main = {
		AngleOffset = 90,
		W = 8.2,
		H = 7.5,
		Sprite = "sprites/emv/emv_whelen_src",
		WMult = 1.4,
		Scale = 1,
		EmitArray = {
			Vector( 1.6, 0, 0 ),
			Vector( 0, 0, 0 ),
			Vector( -1.6, 0, 0 )
		}
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -3.74, 7.51, 1.47 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[2] = { Vector( 3.74, 7.51, 1.47 ), Angle( 0, 0, 0 ), "liberty_f_main" },

	[3] = { Vector( -10.61, 7.51, 1.47 ), Angle( 0, 0, 0 ), "liberty_f_main" },
	[4] = { Vector( 10.61, 7.51, 1.47 ), Angle( 0, 0, 0 ), "liberty_f_main" },

	[5] = { Vector( -27.26, 4.88, 1.48 ), Angle( 0, 32.6, 0 ), "liberty_f_ang", 1 },
	[6] = { Vector( 27.16, 4.88, 1.48 ), Angle( 0, -32.6, 0 ), "liberty_f_ang", 2 },

	[7] = { Vector( -27.16, -5.4, 1.48 ), Angle( 0, -32.6, 0 ), "liberty_r_ang", 3 },
	[8] = { Vector( 27.16, -5.4, 1.48 ), Angle( 0, 32.6, 0 ), "liberty_r_ang", 4 },

	[9] = { Vector( -17.41, -8.01, 1.47 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[10] = { Vector( 17.41, -8.01, 1.47 ), Angle( 0, 0, 0 ), "liberty_r_main" },

	[11] = { Vector( -10.61, -8.01, 1.47 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[12] = { Vector( 10.61, -8.01, 1.47 ), Angle( 0, 0, 0 ), "liberty_r_main" },

	[13] = { Vector( -3.74, -8.01, 1.47 ), Angle( 0, 0, 0 ), "liberty_r_main" },
	[14] = { Vector( 3.74, -8.01, 1.47 ), Angle( 0, 0, 0 ), "liberty_r_main" },

	[15] = { Vector( -17.6, 7.98, 1.41 ), Angle( 0, 0, 0 ), "liberty_takedown" },
	[16] = { Vector( 17.6, 7.98, 1.41 ), Angle( 0, 0, 0 ), "liberty_takedown" },

	[17] = { Vector( -32.38, -0.23, 1.41 ), Angle( 0, 90, 0 ), "liberty_alley" },
	[18] = { Vector( 32.38, -0.23, 1.41 ), Angle( 0, -90, 0 ), "liberty_alley" },


}

COMPONENT.Sections = {
	["auto_whelen_liberty_sx"] = {
		{
			{ 1, "_1" }, { 2, "_2" },
			{ 3, "_1" }, { 4, "_2" },
			{ 5, "_1" }, { 6, "_2" },
			{ 7, "_1" }, { 8, "_2" },
			{ 9, "_1" }, { 10, "_2" },
			{ 11, A }, { 12, A },
			{ 13, A }, { 14, A },
			{ 15, W }, { 16, W },
			{ 17, W }, { 18, W },
		},
		[2] = {
			{ 1, "_1" }, { 4, "_1" }, { 10, "_2" }, 
		},
		[3] = {
			{ 2, "_2" }, { 3, "_2" }, { 9, "_1" }, 
		},
		[4] = {
			{ 3, "_2" }, { 4, "_1" },
		},
		[5] = {
			{ 1, "_1" }, { 2, "_2" }, { 9, "_1" }, { 10, "_2" }
		}
	},
	["auto_whelen_liberty_sx_corner"] = {
		[1] = {
			{ 5, "_1" }, { 7, "_1" }
		},
		[2] = {
			{ 6, "_2" }, { 8, "_2" }
		},
		[3] = { { 5, "_1", .55 }, { 7, "_1", .55 }, { 6, "_2", .55 }, { 8, "_2", .55 } },
		[4] = { { 5, "_1", .66 }, { 7, "_1", .66 }, { 6, "_2", .66 }, { 8, "_2", .66 } },
	},
	["auto_whelen_liberty_sx_traffic"] = {
		[1] = {
			{ 11, A }, { 13, A }
		},
		[2] = {
			{ 12, A }, { 14, A }
		},
		[3] = {
			{ 11, A }, { 12, A }
		},
		[4] = {
			{ 13, A }, { 14, A }
		},
		[5] = { { 9, "_1" }, { 11, A }, { 13, A }, { 14, A }, { 12, A }, { 10, "_2" } },
		[6] = { { 9, "_1" } },
		[7] = { { 9, "_1" }, { 11, A } },
		[8] = { { 9, "_1" }, { 11, A }, { 13, A } },
		[9] = { { 9, "_1" }, { 11, A }, { 13, A }, { 14, A } },
		[10] = { { 9, "_1" }, { 11, A }, { 13, A }, { 14, A }, { 12, A } },
		[11] = { { 10, "_2" } },
		[12] = { { 12, A }, { 10, "_2" } },
		[13] = { { 14, A }, { 12, A }, { 10, "_2" } },
		[14] = { { 13, A }, { 14, A }, { 12, A }, { 10, "_2" } },
		[15] = { { 11, A }, { 13, A }, { 14, A }, { 12, A }, { 10, "_2" } },
		[16] = { { 13, A }, { 14, A } },
		[17] = { { 11, A }, { 13, A }, { 14, A }, { 12, A } },
	},
	["auto_whelen_liberty_sx_corner_illum"] = {
		[1] = { { 15, W }, { 17, W } },
		[2] = { { 16, W }, { 18, W } },
	},
	----------------------Pringles Code-------------------------
	["liberty_full"] = {
		[1] = {
			{5 , R}, {3 , R}, {1 ,R},
			{7, R}, {9 , R}, {11 , R}, {13 , R}
		},
		[2] = {
			{2, B}, {4, B}, {6, B},
			{14 , B} , {12 , B}, {10, B}, {8, B}
		},
		[3] = {
			{5 , B}, {3 , B}, {1 ,B},
			{7, B}, {9 , B}, {11 , B}, {13 , B},
			{2, B}, {4, B}, {6, B},
			{14 , B} , {12 , B}, {10, B}, {8, B}
		},
		[4] = {
			{5 , R}, {3 , R}, {1 ,R},
			{7, R}, {9 , R}, {11 , R}, {13 , R},
			{2, R}, {4, R}, {6, R},
			{14 , R} , {12 , R}, {10, R}, {8, R}
		},

	},
	["liberty_rear_warn_corner"] = {
		[1] = { {7, R} },
		[2] = { {8, B} }
	},
	["liberty_rear_warn"] = {
		[1] = { {9, A}, {11, A} },
		[2] = { {11, A}, {13, A} },
		[3] = { {13, A}, {14, A} },
		[4] = { {14, A}, {12 , A} },
		[5] = { {12, A}, {10 , A} },
		--
		[6] = { {10, A}, {12, A} },
		[7] = { {12, A}, {14, A} },
		[8] = { {14 , A}, {13, A} },
		[9] = { {13, A}, {11, A} },
		[10] = { {11, A}, {9, A} }
	},
	["liberty_rear_C3"] = {
		[1] = {
			{7, R}, {11, R}, {14 , R}, {10, R}
		},
		[2] = {
			{9, B}, {13, B}, {12, B}, {8, B}
		}
	},
	["liberty_front_ill"] = {
		[1] = { {15,CW}, {16,CW} }
	},
	["liberty_front_corner_C3"] = {
		[1] = { {5 , R} },
		[2] = { {6 , B} }
	},
	["liberty_front_C3"] = {
		[1] = {
			{5,R} , {1, R} , {4, R}
		},
		[2] = {
			{3,B}, {2, B}, {6,B}
		}
	}

}

COMPONENT.Patterns = {
	["auto_whelen_liberty_sx"] = {
		["all"] = { 1 },
		["code1"] = { 2, 2, 2, 2, 0, 3, 3, 3, 3, 0 },
		["code2"] = { 2, 0, 2, 2, 2, 0, 3, 0, 3, 3, 3, 0, },
		["code3"] = { 
			4, 4, 5, 5, 4, 4, 5, 5, 4, 4, 5, 5, 4, 4, 5, 5, 
			2, 2, 3, 3, 2, 2, 3, 3, 2, 2, 3, 3, 2, 2, 3, 3,
			2, 2, 3, 3, 2, 2, 3, 3, 2, 2, 3, 3, 2, 2, 3, 3,
			2, 3, 2, 3,2, 3, 2, 3,2, 3, 2, 3,2, 3, 2, 3,2, 3, 2, 3,
		},
	},
	["auto_whelen_liberty_sx_traffic"] = {
		["off"]  = {},
		["code1"] = { 1, 1, 2, 2 },
		["code2"] = { 3, 3, 4, 4 },
		["code3"] = { 
			3, 3, 4, 4, 1, 1, 2, 2,
		},
		["left"] = {
			11, 11, 12, 12, 13, 13, 14, 14, 15, 15, 5, 5, 5, 5, 0, 0
		},
		["right"] = {
			6, 6, 7, 7, 8, 8, 9, 9, 10, 10, 5, 5, 5, 5, 0, 0
		},
		["diverge"] = {
			16, 16, 16, 17, 17, 17, 5, 5, 5, 5, 0, 0
		}
	}, 
	["auto_whelen_liberty_sx_corner"] = {
		["off"] = {},
		["code1"] = { 1, 1, 1, 0, 2, 2, 2, 0 },
		["code2"] = { 1, 1, 0, 2, 2, 0 },
		["code3"] = { 1, 2 },
		["cruise"] = { 3, 3, 4, 4 }
	},
	["auto_whelen_liberty_sx_corner_illum"] = {
		["code3"] = {
			1, 1, 2, 2,
		}
	},
	-----------------Pringles Code----------------
	["liberty_full"] = {
		["CODE1"] = {1,1,1,1,1,2,2,2,2,2,1,1,1,1,1,2,2,2,2,2,1,1,1,1,1,2,2,2,2,2,0,3,3,3,0,0,3,3,3,0,0,3,3,3,0,0,3,3,3,0,0,4,4,4,0,0,4,4,4,0,0,4,4,4,0},
		["CODE2"] = {1,1,2,2}
	},
	["liberty_rear_warn_corner"] ={
	 	["WARN"] = {1,1,0,1,1,0,1,1,0,2,2,0,2,2,0,2,2,0,1,1,0,1,1,0,1,1,0,1,1,0,2,2,0,2,2,0,2,2,0,2,2,}
	},
	["liberty_rear_warn"] = {
		["WARN"] = {1,1,1,2,2,2,3,3,3,4,4,4,5,5,5,6,6,6,7,7,7,8,8,8,9,9,9,10,10,10}
	},
	["liberty_rear_C3"] = {
		["CODE3"] = {1,1,2,2,0,0,1,0,0,2,0,1,2}
	},
	["liberty_front_ill"] = {
		["CODE3"] = {1}
	},
	["liberty_front_corner_C3"] = {
		["CODE3"] = {1,0,1,0,2,0,2}
	},
	["liberty_front_C3"] = {
		["CODE3"] = {1,1,2,2,0,0,1,0,0,2,0,1,2}
	}
}

COMPONENT.TrafficDisconnect = { 
	["auto_whelen_legacy_traffic"] = {
		9, 10, 11, 12, 13, 14
	},
	["liberty_full"] = {9,10,11,12,13,14},
	["liberty_rear_C3"] = {9,10,11,12,13,14}
}

COMPONENT.Modes = {
	Primary = {
			CAT = {
				["auto_whelen_liberty_sx_corner"] = "off",
				["auto_whelen_liberty_sx_traffic"] = "off",
				["liberty_rear_warn_corner"] = "WARN",
				["liberty_rear_warn"] = "WARN"
			},
			M1 = {
				["liberty_full"] = "CODE1"
			},
			M2 = {
				["liberty_full"] = "CODE2"
			},
			M3 = {
				["liberty_rear_C3"] = "CODE3",
				["liberty_front_corner_C3"] = "CODE3",
				["liberty_front_C3"] = "CODE3"
			}
		},
	Auxiliary = {
			C = {},
			L = {
				["auto_whelen_liberty_sx_traffic"] = "left"
			},
			R = {
				["auto_whelen_liberty_sx_traffic"] = "right"
			},
			D = {
				["auto_whelen_liberty_sx_traffic"] = "diverge"
			}
		},
	Illumination = {
		L = {
			{ 17, W }
		},
		R = {
			{ 18, W }
		},
		F = {
			{ 15, W }, { 16, W }
		},
		T = {
			{ 15, W }, { 16, W }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )