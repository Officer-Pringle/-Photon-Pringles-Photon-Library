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

local name = "FPIU14 Fogflash"

local COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "WHITE",
	[2] = "WHITE",
}

COMPONENT.Meta = {
	explorer14_fogflash = {
		AngleOffset = -90,
		W = 5,
		H = 5,
		WMult = .9,
		Sprite = "sprites/emv/light_circlewhite",
		Scale = 2,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -35, 111.7, 17.5 ), Angle( 0, 0, 0 ), "explorer14_fogflash" },
	[2] = { Vector( 35, 111.7, 17.5 ), Angle( 0, 0, 0 ), "explorer14_fogflash" },

}

COMPONENT.Sections = {
	["explorer14_fogflash"] = {
		[1] = {{1,"_1"},},
		[2] = {{2,"_2"},},
		[3] = {{1,"_1"},{2,"_2"},},
	},
}

COMPONENT.Patterns = {
	["explorer14_fogflash"] = {
		["code3"] = { 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, },
		["off"] = { 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["explorer14_fogflash"] = "off" },
		M2 = { ["explorer14_fogflash"] = "off" },
		M3 = { ["explorer14_fogflash"] = "code3" }
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "FPIU14 FlashTails"
COMPONENT = {}

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
	explorer14_flashtail = {
		AngleOffset = 90,
		W = 6.9,
		H = 6.9,
		Sprite = "sprites/emv/explorer_turn",
		WMult = .75,
		Scale = 5,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -38.0, -120.9, 48.3 ), Angle( -2, -35, 0 ), "explorer14_flashtail" },
	[2] = { Vector( 38.0, -120.9, 48.3 ), Angle( 182, 35, 180 ), "explorer14_flashtail" },

}

COMPONENT.Sections = {
	["explorer14_flashtail"] = {
		[1] = {{1,"_1"},{2,"_2"}, },
		[2] = {{1,"_1"}, },
		[3] = {{2,"_2"}, },
	},
}

COMPONENT.Patterns = {
	["explorer14_flashtail"] = {
		["code1"] = {2,2,2,2,2,2,2,2,2,2,2,0,3,3,3,3,3,3,3,3,3,3,3},
		["code2"] = { 2,2,2,2,0,2,2,2,2,0,3,3,3,3,0,3,3,3,3},
		["code3"] = { 2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,
			          2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0, },
		["off"] = { 0 },
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["explorer14_flashtail"] = "code1" },
		M2 = { ["explorer14_flashtail"] = "code2" },
		M3 = { ["explorer14_flashtail"] = "code3" },
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "FPIU14 FrontFlash"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "AMBER",
	[2] = "AMBER",
}

COMPONENT.Meta = {
	explorer14_flashf = {
		AngleOffset = -90,
		W = 13,
		H = 14,
		Sprite = "sprites/emv/impala_reverse",
		Scale = 2,
		WMult = 3,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -34.5, 102.9, 47.5 ), Angle( 3, 45, 20 ), "explorer14_flashf" },
	[2] = { Vector( 34.5, 102.9, 47.5 ), Angle( -3, -45, 20 ), "explorer14_flashf" },

}

COMPONENT.Sections = {
	["explorer14_flashf"] = {
		[1] = {{1,"_1"},{2,"_1"},},
		[2] = {{1,"_1"},},
		[3] = {{2,"_2"},},
	},
}

COMPONENT.Patterns = {
	["explorer14_flashf"] = {
		["code2"] = { 2,2,2,2,0,2,2,2,2,0,3,3,3,3,0,3,3,3,3},
		["code3"] = { 2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,
			          2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0, },
		["off"] = { 0 },
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["explorer14_flashf"] = "off" },
		M2 = { ["explorer14_flashf"] = "code2" },
		M3 = { ["explorer14_flashf"] = "code3" },
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )

--
name = "FPIU14 RearFlash"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "WHITE",
	[2] = "WHITE",
}

COMPONENT.Meta = {
	explorer14_flash_rear = {
		AngleOffset = -90,
		W = 10,
		H = 8,
		Sprite = "sprites/emv/impala_reverse",
		Scale = 2,
		WMult = 3,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -39, -119.4, 54.3 ), Angle( 1, 140, 0 ), "explorer14_flash_rear" },
	[2] = { Vector( 39, -119.4, 54.3 ), Angle( 1, -140, 0 ), "explorer14_flash_rear" },

}

COMPONENT.Sections = {
	["explorer14_flash_rear"] = {
		[1] = {{1,"_1"},{2,"_1"},},
		[2] = {{1,"_1"},},
		[3] = {{2,"_2"},},
	},
}

COMPONENT.Patterns = {
	["explorer14_flash_rear"] = {
		["code2"] = { 3,3,3,3,0,3,3,3,3,0,2,2,2,2,0,2,2,2,2},
		["code3"] = { 3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,3,3,0,
					  3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0 },
		["off"] = { 0 },
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["explorer14_flash_rear"] = "off" },
		M2 = { ["explorer14_flash_rear"] = "code2" },
		M3 = { ["explorer14_flash_rear"] = "code3" },
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )

-------------- END ---------------------------

---------------- START -------------------------
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


local name = "14 Explorer Wig-Wags"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "S_WHITE",
	[2] = "S_WHITE",
}

COMPONENT.Meta = {
	left = {
		AngleOffset = -90,
		W = 4,
		H = 8,
		Sprite = "sprites/emv/tdm_halogen2",
		Scale = 2.5,
		WMult = 1
	},
	right = {
		AngleOffset = -90,
		W = 4,
		H = 8,
		Sprite = "sprites/emv/tdm_halogen2",
		Scale = 2.5,
		WMult = 1
	},
	
}

COMPONENT.Positions = {

	[1] = { 
		Vector(-33.9, 103.5, 42.3), 
		Angle( 0, 10, 0), 
		"left" 
	},
	[2] = { 
		Vector(33.9, 103.5, 42.3), 
		Angle( 0, 10, 0), 
		"right"  
	},
}

COMPONENT.Sections = {
	["auto_wig_wags"] = {
		[1] = { { 1, "_1" } },
		[2] = { { 2, "_2" } },
	},
}

COMPONENT.Patterns = {
	["auto_wig_wags"] = {
		["code1"] = { 1,1,1,1,1,1,0,2,2,2,2,2,2},
		["code2"] = { 1,1,1,0,1,1,1,0,2,2,2,0,2,2,2,0},
		["code3"] = { 1,0,1,0,2,0,2},
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_wig_wags"] = "code1", },
		M2 = { ["auto_wig_wags"] = "code2", },
		M3 = { ["auto_wig_wags"] = "code3", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

-------------------------------------------------------------
-------------------------------------------------------------
-------------------------------------------------------------


name = "FPIU14 RearFlash Warn"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "WHITE",
	[2] = "WHITE",
}

COMPONENT.Meta = {
	explorer14_flash_rear = {
		AngleOffset = -90,
		W = 10,
		H = 8,
		Sprite = "sprites/emv/impala_reverse",
		Scale = 2,
		WMult = 3,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -39, -119.4, 54.3 ), Angle( 1, 140, 0 ), "explorer14_flash_rear" },
	[2] = { Vector( 39, -119.4, 54.3 ), Angle( 1, -140, 0 ), "explorer14_flash_rear" },

}

COMPONENT.Sections = {
	["explorer14_flash_rear"] = {
		[1] = {{1,"_1"},{2,"_1"},},
		[2] = {{1,"_1"},},
		[3] = {{2,"_2"},},
	},
	["flash_warn"] = {
		[1] = { {1, CW} },
		[2] = { {2, CW} }
	}
}

COMPONENT.Patterns = {
	["explorer14_flash_rear"] = {
		["code2"] = { 3,3,3,3,0,3,3,3,3,0,2,2,2,2,0,2,2,2,2},
		["code3"] = { 3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,3,3,0,
					  3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0 },
		["off"] = { 0 },
	},
	["flash_warn"] = {
		["warn"] = {1,1,1,0,1,1,1,0,2,2,2,0,2,2,2}
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["explorer14_flash_rear"] = "off" },
		M2 = { ["explorer14_flash_rear"] = "code2" },
		M3 = { ["explorer14_flash_rear"] = "code3" },
	},
	Auxiliary = {
		CAT = { ["flash_warn"] = "warn"}
	},
}

EMVU:AddAutoComponent( COMPONENT, name )