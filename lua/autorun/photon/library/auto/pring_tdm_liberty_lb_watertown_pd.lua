AddCSLuaFile()

local B = "BLUE"
local R = "RED"
local A = "AMBER"
local W = "WHITE"
local G = "GREEN"
local DR = "D_RED"
local CW = "C_WHITE"
local SW = "S_WHITE"
--------------------
local PA = "A"
local PB = "B"
local PCA = "CA"
local PTT = "TT"

local name = "WPD Liberty LB"

local COMPONENT = {}

COMPONENT.Model = "models/tdmcars/emergency/equipment/whelen_liberty.mdl"
COMPONENT.Required = "489864412"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {{2,1}}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.Category = "Lightbar"
--[[COMPONENT.SubMaterial = {
	[1] = "models/supermighty/photon/shared/glass",
	[3] = "models/supermighty/photon/shared/alt_black"
	}]]
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
	[3] = "AMBER"
}

COMPONENT.Meta = {
	auto_lib_lb = {
		W = 12.5,
		H = 9.5,
		Sprite = "sprites/emv/lightbar",
		Scale = 1,
		WMult = 1.5,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90
	},
	auto_lib_lb_blue= {
		W = 12.5,
		H = 9.5,
		Sprite = "sprites/emv/lightbar",
		Scale = 2,
		WMult = 1.5,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90
	},
	auto_lib_lb_corn = {
		W = 15,
		H = 15,
		Sprite = "sprites/emv/emv_whelen_corner",
		Scale = 1,
		WMult = 1.5,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90
	},
	auto_lib_lb_take = {
		W = 6.8,
		H = 6.5,
		Sprite = "sprites/emv/emv_6x2_src",
		Scale = 1,
		WMult = 1.5,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90
	},
	auto_lib_lb_take_corn = {
		W = 2.2,
		H = 2.2,
		Sprite = "sprites/emv/emv_whelen_tri",
		Scale = 1,
		WMult = 1.5,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = -90
	},
}

COMPONENT.Positions = {
	-- Front
	[1] = { Vector( -5.6, -3.5, 4.35 ), Angle( 0, -90, 0 ), "auto_lib_lb" },
	[2] = { Vector( -5.6, 3.5, 4.35 ), Angle( 0, -90, 0 ), "auto_lib_lb" },
	[3] = { Vector( -5.6, -17, 4.35 ), Angle( 0, -90, 0 ), "auto_lib_lb" },
	[4] = { Vector( -5.6, 17, 4.35 ), Angle( 0, -90, 0 ), "auto_lib_lb" },
	-- Rear
	[5] = { Vector( 5.6, 17, 4.35 ), Angle( 0, 90, 0 ), "auto_lib_lb_blue" },
	[6] = { Vector( 5.6, -17, 4.35 ), Angle( 0, 90, 0 ), "auto_lib_lb_blue" },
	[7] = { Vector( 5.6, 10.1, 4.35 ), Angle( 0, 90, 0 ), "auto_lib_lb" },
	[8] = { Vector( 5.6, -10.1, 4.35 ), Angle( 0, 90, 0 ), "auto_lib_lb" },
	[10] = { Vector( 5.6, -3.5, 4.35 ), Angle( 0, 90, 0 ), "auto_lib_lb" },
	[9] = { Vector( 5.6, 3.5, 4.35 ), Angle( 0, 90, 0 ), "auto_lib_lb" },
	-- Corner
	[11] = { Vector( 3.5, -25.2, 4.35 ), Angle( 0, 65, 0 ), "auto_lib_lb_corn" },
	[12] = { Vector( 3.5, 25.2, 4.35 ), Angle( 0, 114, 0 ), "auto_lib_lb_corn" },
	[13] = { Vector( -3.5, -25.2, 4.35 ), Angle( 0, -65, 0 ), "auto_lib_lb_corn" },
	[14] = { Vector( -3.5, 25.2, 4.35 ), Angle( 0, -114, 0 ), "auto_lib_lb_corn" },
	-- TakeDowns
	[15] = { Vector( -5.7, 10, 4.35 ), Angle( 0, -90, 0 ), "auto_lib_lb_take" },
	[16] = { Vector( -5.7, -10, 4.35 ), Angle( 0, -90, 0 ), "auto_lib_lb_take" },
	[17] = { Vector( 0, 30, 4.35 ), Angle( 0, 180, 0 ), "auto_lib_lb_take_corn" },
	[18] = { Vector( 0, -30, 4.35 ), Angle( 0, 0, 0 ), "auto_lib_lb_take_corn" },
	

}

COMPONENT.Sections = {
	["auto_prin_lib_lb_rear_red"] = {
		[1] = { {6 , B }, },
		[2] = { {5 , B }, }

	},
	["auto_prin_lib_lb_rear"] = {
		[1] = { {7, R}, {10, R} },
		[2] = { {9, R}, {8, R} },
		[3] = { {9, R}, {7, R} },
		[4] = { {8, R}, {10, R} },
	},
	["auto_prin_lib_lb_rear_corner"] = {
		[1] = { {11, R}},
		[2] = { {12, R}},
		[3] = { {11, B } },
		[4] = { {12, B} },
		[5] = { {11, B}, {12, B} }
	},
	["auto_prin_lib_lb_front"] = {
		[1] = { {1, R}, {4, R} },
		[2] = { {3, R}, {2, R} },
		[3] = { {1, R}, {3, R} },
		[4] = { {2, R}, {4, R} }
		
	},
	["auto_prin_lib_lb_front_corn"] = {
		[1] = { {13, R}, },
		[2] = { {14, R}, },
		
	},
	["auto_prin_lib_lb_allys"] = {
		[1] = { {17, CW}, },
		[2] = { {18, CW}, },
		
	},
	["auto_prin_lib_lb_caution_rear"] = {
		[1] = { {6, R}, {8,R} },
		[2] = { {8, R}, {10, R} },
		[3] = { {10, R}, {9, R } },
		[4] = { {9, R}, {7, R} },
		[5] = { {7, R}, {5, R} },
		[6] = { {11, B}}
	},
	["auto_pring_traffic"] = {
		[1] = { {6, R}, {8,R} },
		[2] = { {8, R}, {10, R} },
		[3] = { {10, R}, {9, R } },
		[4] = { {9, R}, {7, R} },
		[5] = { {7, R}, {5, R} },
		--
		[6] = { {10, R}, {9, R}, {8,R }, {7,R } },
		[7] = { {8,R }, {7,R }, {6,R }, {5,R } },
		[8] = { {6,R }, {5,R }}
	},
	
}

COMPONENT.Patterns = {
	["auto_prin_lib_lb_rear_red"] = {
		["code2"] = { 
			2,2,2,0,2,2,2,0,1,1,1,0,1,1,1,0
		},
		["code1"] = { 
			2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,
		},
		["code3"] = { 
			2,2,1,1
		},
		
	},
	["auto_prin_lib_lb_rear"] = {
		["code1"] = { 
			1,1,1,1,1,1,0,0,2,2,2,2,2,2,0,3,3,3,4,4,4,3,3,4,4,1,1,2,2
		},
		["code2"] = { 
			1,1,1,0,0,2,2,2,0,3,3,3,4,4,4,3,3,4,4,1,1,2,2
		},
		["code3"] = { 
			1,1,2,2,3,3,4,4,3,3,4,4,1,1,2,2
		},
		
	},
	["auto_prin_lib_lb_rear_corner"] = {
		["code1"] = {
			1,1,1,1,1,1,0,0,2,2,2,2,2,2,0
		},
		["code2"] = {
			1,1,1,0,0,2,2,2,0
		},
		["code3"] = {
			1,0,2,0
		},
		["Cruise"] = {
			3,3,3,0,0,3,3,3,0,0,4,4,4,0,0,4,4,4
		},
		["right"] = {4,4,4,4,0,4,4,0,4,4,0,4,4,4,4,4,0},
		["left"] = {4},
		["div"] = {5,5,5,0}
	},
	["auto_prin_lib_lb_front"] = {
		["code1"] = {
			4,4,4,3,3,3,2,2,2,1,1,1
		},
		["code2"] = {
			1,1,0,1,1,0,2,2,0,3,3,0,4,4,0
		},
		["code3"] = {
			1,2,3,4
		}
	},
	["auto_prin_lib_lb_front_corn"] = {
		["code1"] = {
			1,1,1,1,1,1,0,0,2,2,2,2,2,2,0
		},
		["code2"] = {
			1,1,1,0,0,2,2,2,0
		},
		["code3"] = {
			1,0,2,0
		},
	},
	["auto_prin_lib_lb_allys"] = {
		["code1"] = {
			1,1,1,0,1,1,1,0,2,2,2,0,2,2,2,0
		},
		["code2"] = {
			1,0,1,0,2,0,2,0
		},
		["code3"] = {
			1,0,1,0,2,0,2,0
		},
	},
	["auto_prin_lib_lb_caution_rear"] = {
		["Cruise"] = {
			1,1,2,2,3,3,4,4,5,5,4,4,3,3,2,2,1,1
		},
		["right"] = {6},
		["left"] = {6,6,6,6,0,6,6,0,6,6,0,6,6,6,6,6,0}
	},
	["auto_pring_traffic"] = {
		["right"] = {1,1,1,2,2,2,3,3,3,4,4,4,5,5,5},
		["left"] = {5,5,5,4,4,4,3,3,3,2,2,2,1,1,1},
		["div"] = {6,6,6,6,7,7,7,8,8}
	},
	

}

COMPONENT.TrafficDisconnect = { 
	["auto_prin_lib_lb_caution_rear"] = {
		5,6,7,8,9,10,11,12
	},
	["auto_pring_traffic"] = {
		5,6,7,8,9,10,11,12
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { 
			["auto_prin_lib_lb_rear_red"] = "code1", 
			["auto_prin_lib_lb_rear"] = "code1", 
			["auto_prin_lib_lb_rear_corner"] = "code1",
			["auto_prin_lib_lb_front_corn"] = "code1",
			["auto_prin_lib_lb_front"] = "code1",
			["auto_prin_lib_lb_allys"] = "code1",

		},
		M2 = { 
			["auto_prin_lib_lb_rear_red"] = "code2",
			["auto_prin_lib_lb_front"] = "code2",
			["auto_prin_lib_lb_rear"] = "code2", 
			["auto_prin_lib_lb_rear_corner"] = "code2",
			["auto_prin_lib_lb_front_corn"] = "code2",
			["auto_prin_lib_lb_allys"] = "code2",
			
			
		 },
		M3 = { 
			["auto_prin_lib_lb_rear_red"] = "code3",
			["auto_prin_lib_lb_front"] = "code3",
			["auto_prin_lib_lb_rear"] = "code3", 
			["auto_prin_lib_lb_rear_corner"] = "code3",
			["auto_prin_lib_lb_front_corn"] = "code3",
			["auto_prin_lib_lb_allys"] = "code3",
			
			
			
		},
	},
	Auxiliary = {
		C = { 
			["auto_prin_lib_lb_caution_rear"] = "Cruise",
			["auto_prin_lib_lb_rear_corner"] = "Cruise",

		},
		L = { 
			["auto_pring_traffic"] = "left",
			["auto_prin_lib_lb_rear_corner"] = "left",
			["auto_prin_lib_lb_caution_rear"] = "left"
		},
		R = { 
			["auto_pring_traffic"] = "right",
			["auto_prin_lib_lb_rear_corner"] = "right",
			["auto_prin_lib_lb_caution_rear"] = "right"
		},
		D = {
			["auto_pring_traffic"] = "div",
			["auto_prin_lib_lb_rear_corner"] = "div",


		},
	},
	Illumination = {
		L = {
			{ 18, W }
		},
		R = {
			{ 17, W }
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