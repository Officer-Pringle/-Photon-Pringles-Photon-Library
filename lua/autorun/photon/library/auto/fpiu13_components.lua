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

local name = "Pringles FPIU13 CHPflash"

local COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"

COMPONENT.Meta = {
	explorer13_chpflash = {
		AngleOffset = -90,
		W = 5,
		H = 5,
		WMult = .9,
		Sprite = "sprites/emv/light_circlewhite",
		Scale = 2,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -34.35, 111.7, 18.4 ), Angle( 0, 0, 0 ), "explorer13_chpflash" },
	[2] = { Vector( 34.35, 111.7, 18.4 ), Angle( 0, 0, 0 ), "explorer13_chpflash" },

}

COMPONENT.Sections = {
	["explorer13_chpflash"] = {
		[1] = {{1,W},},
		[2] = {{2,W},},
		[3] = {{1,W},{2,W},},
	},
}

COMPONENT.Patterns = {
	["explorer13_chpflash"] = {
		["code3"] = { 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, },
		["off"] = { 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["explorer13_chpflash"] = "off" },
		M2 = { ["explorer13_chpflash"] = "off" },
		M3 = { ["explorer13_chpflash"] = "code3" }
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "Pringles FPIU13 FlashTails"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"

COMPONENT.Meta = {
	explorer13_flashtail = {
		AngleOffset = 90,
		W = 6.9,
		H = 6.9,
		Sprite = "sprites/emv/explorer_turn",
		WMult = .75,
		Scale = 3,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -36.45, -108.6, 47.3 ), Angle( -2, -35, 0 ), "explorer13_flashtail" },
	[2] = { Vector( 36.45, -108.6, 47.3 ), Angle( 182, 35, 180 ), "explorer13_flashtail" },

}

COMPONENT.Sections = {
	["explorer13_flashtail"] = {
		[1] = {{1,R},{2,R},},
		[2] = {{1,R},},
		[3] = {{2,R},},
	},
}

COMPONENT.Patterns = {
	["explorer13_flashtail"] = {
		["code1"] = {2,2,2,2,2,2,2,2,2,2,2,0,3,3,3,3,3,3,3,3,3,3,3},
		["code2"] = { 2,2,2,2,0,2,2,2,2,0,3,3,3,3,0,3,3,3,3},
		["code3"] = { 2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,
			          2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0, },
		["off"] = { 0 },
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["explorer13_flashtail"] = "code1" },
		M2 = { ["explorer13_flashtail"] = "code2" },
		M3 = { ["explorer13_flashtail"] = "code3" },
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "Pringles FPIU13 FrontFlash"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"

COMPONENT.Meta = {
	explorer13_flashf = {
		AngleOffset = -90,
		W = 13,
		H = 14,
		Sprite = "sprites/emv/impala_reverse",
		Scale = 2,
		WMult = 3,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -34.4, 104.9, 46.9 ), Angle( 3, 45, 20 ), "explorer13_flashf" },
	[2] = { Vector( 34.4, 104.9, 46.9 ), Angle( -3, -45, 20 ), "explorer13_flashf" },

}

COMPONENT.Sections = {
	["explorer13_flashf"] = {
		[1] = {{1,A},{2,A},},
		[2] = {{1,A},},
		[3] = {{2,A},},
	},
}

COMPONENT.Patterns = {
	["explorer13_flashf"] = {
		["code2"] = { 2,2,2,2,0,2,2,2,2,0,3,3,3,3,0,3,3,3,3},
		["code3"] = { 2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,
			          2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0, },
		["off"] = { 0 },
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["explorer13_flashf"] = "off" },
		M2 = { ["explorer13_flashf"] = "code2" },
		M3 = { ["explorer13_flashf"] = "code3" },
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )
