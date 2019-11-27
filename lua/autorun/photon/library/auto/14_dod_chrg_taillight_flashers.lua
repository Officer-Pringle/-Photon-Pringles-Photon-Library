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

local name = "2014 Dodge Charger Tailights"

local COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "RED",
}

COMPONENT.Meta = {
	dc_left_far_bot = {
		AngleOffset = -90,
		W = 11,
		H = 9,
		WMult = 2,
		Sprite = "sprites/emv/14_dc_left_far_bot",
		Scale = 5,
		SourceOnly = true
	},
	dc_left_far_top = {
		AngleOffset = -90,
		W = 10,
		H = 8,
		WMult = 2,
		Sprite = "sprites/emv/14_dc_left_far_top",
		Scale = 2.5,
		
	},
	--
	dc_right_far_bot = {
		AngleOffset = -90,
		W = 10.95,
		H = 9,
		WMult = 2,
		Sprite = "sprites/emv/14_dc_right_far_bot",
		Scale = 5,
		SourceOnly = true
	},
	dc_right_far_top = {
		AngleOffset = -90,
		W = 10.2,
		H = 8,
		WMult = 2,
		Sprite = "sprites/emv/14_dc_right_far_top",
		Scale = 2.5,
		
	},
	--
	--
	dc_mid_left_top = {
		AngleOffset = -90,
		W = 11.5,
		H = 9,
		WMult = 2,
		Sprite = "sprites/emv/14_dc_mid_left_top",
		Scale = 3,
		SourceOnly = true
		
	},
	dc_mid_left_bot = {
		AngleOffset = -90,
		W = 12,
		H = 10.5,
		WMult = 1,
		Sprite = "sprites/emv/14_dc_mid_left_bot",
		Scale = 1,
		SourceOnly = true
		
	},
	--
	dc_mid_mid_left_top = {
		AngleOffset = -90,
		W = 17,
		H = 9.5,
		WMult = 2,
		Sprite = "sprites/emv/14_dc_mid_mid_left_top",
		Scale = 4,
	},
	dc_mid_mid_left_bot = {
		AngleOffset = -90,
		W = 16,
		H = 10.5,
		WMult = 1,
		Sprite = "sprites/emv/14_dc_mid_mid_left_bot",
		Scale = 1,
		SourceOnly = true
		
	},
	--
	dc_mid_mid_right_top = {
		AngleOffset = -90,
		W = 16.5,
		H = 11,
		WMult = 2,
		Sprite = "sprites/emv/14_dc_mid_mid_right_top",
		Scale = 3,
	},
	dc_mid_mid_right_bot = {
		AngleOffset = -90,
		W = 16,
		H = 11,
		WMult = 1,
		Sprite = "sprites/emv/14_dc_mid_mid_right_bot",
		Scale = 1,
		SourceOnly = true
		
	},
	--
	dc_mid_right_top = {
		AngleOffset = -90,
		W = 12,
		H = 10,
		WMult = 1.5,
		Sprite = "sprites/emv/14_dc_mid_right_top",
		Scale = 3,
		SourceOnly = true
	},
	dc_mid_right_bot = {
		AngleOffset = -90,
		W = 11.6,
		H = 12,
		WMult = 1,
		Sprite = "sprites/emv/14_dc_mid_right_bot",
		Scale = 1,
		SourceOnly = true
		
	},
}

COMPONENT.Positions = {
	-- Left Far
	[1] = { Vector( -33, -112.5, 45.2 ),Angle( 1, 170, 0 ), "dc_left_far_top" },
	[2] = { Vector( -32.75, -112.8, 43.1),Angle( 1, 165, -2 ), "dc_left_far_bot" },
	--Right Far
	[3] = { Vector( 32.8, -112.5, 45.3 ),Angle( -.5, 190, -2 ), "dc_right_far_top" },
	[4] = { Vector( 32.72, -112.8, 43.01),Angle( -1, 195, -2 ), "dc_right_far_bot" },
	-- Left Mid
	[5] = { Vector( -21.9, -114.8, 46.9 ),Angle( 0, 170, 0 ), "dc_mid_left_top" },
	[6] = { Vector( -21, -115.2, 43.35 ),Angle( 1, 170, 0 ), "dc_mid_left_bot" },
	-- Left Mid Mid
	[7] = { Vector( -8.2, -116.2, 47.34 ),Angle( 0.6, 176, 0 ), "dc_mid_mid_left_top" },
	[8] = { Vector( -7.6, -116.65, 43.56 ),Angle( 1, 177, 0 ), "dc_mid_mid_left_bot" },
	-- Right Mid Mid
	[9] = { Vector( 7.55, -116.45, 47.30 ),Angle( -.5, 182.2, 0 ), "dc_mid_mid_right_top" },
	[10] = { Vector( 7.8, -116.8, 43.5 ),Angle( -1, 182, 0 ), "dc_mid_mid_right_bot" },
	-- Right Mid
	[11] = { Vector( 21.15, -115.4, 46.95 ),Angle( -.5, 188, 0 ), "dc_mid_right_top" },
	[12] = { Vector( 20.75, -115.8, 43.6 ),Angle( -1, 188.5, 0 ), "dc_mid_right_bot" },
}

COMPONENT.Sections = {
	["14_dc_tailights"] = {
		[1] = { {1,"_1"}, {2,"_1"},{3,"_1"}, {4,"_1"},},
		[2] = { {5,"_2"}, {6,"_2"},{7,"_2"}, {8,"_2"},{9,"_2"}, {10,"_2"},{11,"_2"}, {12,"_2"},},
		--
		[3] = { {1,"_1"}, {2,"_1"}, {5,"_1"}, {6,"_1"},{7,"_1"}, {8,"_1"} },
		[4] = { {3,"_1"}, {4,"_1"},{9,"_2"}, {10,"_2"},{11,"_2"}, {12,"_2"},}
		--

	},
}

COMPONENT.Patterns = {
	["14_dc_tailights"] = {
		["code1"] = { 1,1,1,0,1,1,1,0,2,2,2,2,0,2,2,2,2,0 },
		["code2"] = { 1,1,0,1,1,0,2,2,0,2,2,0 },
		["code3"] = { 1,1,1,0,1,1,1,0,2,2,2,2,0,2,2,2,2,0,1,0,2,0,1,0,2,0,1,0,2,0,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,},
		--
		["code1A"] = { 3,3,3,0,3,3,3,0,4,4,4,0,4,4,4,0},
		["code2A"] = { 4,4,0,4,4,0,3,3,0,3,3,0},
		["code3A"] = { 3,0,3,0,4,0,4,0,3,0,3,0,4,0,4,0,3,0,3,0,4,0,4,0,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,},
		--
		["code1B"] = { 1,1,1,0,1,1,1,0,2,2,2,2,0,2,2,2,2,0,3,3,3,0,3,3,3,0,4,4,4,0,4,4,4,0},
		["code2B"] = { 1,1,0,1,1,0,2,2,0,2,2,0,4,4,0,4,4,0,3,3,0,3,3,0},
		["code3B"] = { 1,1,1,0,1,1,1,0,2,2,2,2,0,2,2,2,2,0,1,0,2,0,1,0,2,0,1,0,2,0,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,1,2,3,0,3,0,4,0,4,0,3,0,3,0,4,0,4,0,3,0,3,0,4,0,4,0,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,3,4,} 
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["14_dc_tailights"] = "code1" },
		M2 = { ["14_dc_tailights"] = "code2" },
		M3 = { ["14_dc_tailights"] = "code3" }
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )