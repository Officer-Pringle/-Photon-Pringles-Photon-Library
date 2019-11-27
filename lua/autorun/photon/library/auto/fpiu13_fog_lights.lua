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
		M2 = { ["explorer13_chpflash"] = "code3" },
		M3 = { ["explorer13_chpflash"] = "code3" }
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )

---------------RED AND BLUE ---------------
local name = "Pringles FPIU13 Foglights R/B"

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
		[1] = {{1,R},},
		[2] = {{2,B},},
		[3] = {{1,R},{2,B},},
	},
}

COMPONENT.Patterns = {
	["explorer13_chpflash"] = {
		["code2"] = { 1,1,1,1,0,1,1,1,1,0,2,2,2,2,0,2,2,2,2,0},
		["code3"] = { 1,1,0,1,1,0,2,2,0,2,2,0},
		["off"] = { 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["explorer13_chpflash"] = "code2" },
		M2 = { ["explorer13_chpflash"] = "code2" },
		M3 = { ["explorer13_chpflash"] = "code3" }
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )

----------------------------------------------------------------------
----------------------------------------------------------------------

local name = "Pringles FPIU13 Foglights Red"

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
		[1] = {{1,R},},
		[2] = {{2,R},},
		[3] = {{1,R},{2,B},},
	},
}

COMPONENT.Patterns = {
	["explorer13_chpflash"] = {
		["code2"] = { 1,1,1,1,0,1,1,1,1,0,2,2,2,2,0,2,2,2,2,0},
		["code3"] = { 1,1,0,1,1,0,2,2,0,2,2,0},
		["off"] = { 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["explorer13_chpflash"] = "code2" },
		M2 = { ["explorer13_chpflash"] = "code2" },
		M3 = { ["explorer13_chpflash"] = "code3" }
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )

-----------------------------------------
-----------------------------------------
local name = "Pringles FPIU13 Foglights Blue"

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
		[1] = {{1,B},},
		[2] = {{2,B},},
		[3] = {{1,R},{2,B},},
	},
}

COMPONENT.Patterns = {
	["explorer13_chpflash"] = {
		["code2"] = { 1,1,1,1,0,1,1,1,1,0,2,2,2,2,0,2,2,2,2,0},
		["code3"] = { 1,1,0,1,1,0,2,2,0,2,2,0},
		["off"] = { 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["explorer13_chpflash"] = "code2" },
		M2 = { ["explorer13_chpflash"] = "code2" },
		M3 = { ["explorer13_chpflash"] = "code3" }
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )

-------------------------------------------------------
-------------------------------------------------------
local name = "Pringles FPIU13 Foglights Amber"

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
		[1] = {{1,R},},
		[2] = {{2,B},},
		[3] = {{1,R},{2,B},},
	},
}

COMPONENT.Patterns = {
	["explorer13_chpflash"] = {
		["code2"] = { 1,1,1,1,0,1,1,1,1,0,2,2,2,2,0,2,2,2,2,0},
		["code3"] = { 1,1,0,1,1,0,2,2,0,2,2,0},
		["off"] = { 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["explorer13_chpflash"] = "code2" },
		M2 = { ["explorer13_chpflash"] = "code2" },
		M3 = { ["explorer13_chpflash"] = "code3" }
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )