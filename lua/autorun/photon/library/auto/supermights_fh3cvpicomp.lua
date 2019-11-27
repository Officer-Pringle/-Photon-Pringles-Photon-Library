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

---------------- BEGIN COMPONENT ------------------

local name = "FH3 CVPI Rear Hideaway"

local COMPONENT = {}

COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
}

COMPONENT.Meta = {
	reverse1 = {
		AngleOffset = 90,
		W = 10,
		H = 11,
		Sprite = "sprites/emv/crownvic_reverse",
		Scale = 1,
		WMult = 1
	},
}

COMPONENT.Positions = {
	
	[1] = { Vector( -11.7, -130.08, 43.7 ), Angle( 180, 0, 182 ), "reverse1" },
	[2] = { Vector( 11.7, -130.08, 43.7 ), Angle( 0, 1, -3.1 ), "reverse1" },

}

COMPONENT.Sections = {
	["reverse1"] = {
		[1] = { 
		    { 1, "_1" },
		},
		[2] = { 
		    { 2, "_2" },
		},
	}
}

COMPONENT.Patterns = {

	["reverse1"] = {
		["flashCHP"] = { 1 },
		["flash"] = { 1,1,1,2,2,2 },
		["flashcode3"] = { 1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0},
		["flashcode3CHP"] = { 1 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["reverse1"] = "flash"  },
		M2 = { ["reverse1"] = "flash" },
		M3 = { ["reverse1"] = "flashcode3" },
		-- ALERT = { ["auto_fpiu16_foglamp"] = "alert", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

-------------------- END COMPONENT ----------------------

---------------- BEGIN COMPONENT ------------------

local name = "FH3 CVPI Wig-Wags"

local COMPONENT = {}

COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
}

COMPONENT.Meta = {
	headlight = {
		AngleOffset = -90,
		W = 13,
		H = 14,
		//Sprite = "sprites/emv/blank",
		Sprite = "sprites/emv/crownvic_headlight",
		Scale = 4,
		WMult = 1
	},
	headlight2 = {
		AngleOffset = 90,
		W = 13,
		H = 14,
		//Sprite = "sprites/emv/blank",
		Sprite = "sprites/emv/crownvic_headlight",
		Scale = 4,
		WMult = 1
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -29.1, 109.09, 36.6 ), Angle( 0, 14, 20 ), "headlight" },
	[2] = { Vector( 29.1, 109.06, 36.6 ), Angle( -0.92, 171.04, -25.82 ), "headlight2" },
}

COMPONENT.Sections = {
	["headlights"] = {
		[1] = {
			{ 1, SW, { 11, .25, 0 } }, { 2, SW, { 11, .25, 10 } }
		}
	},
}

COMPONENT.Patterns = {
	["headlights"] = {
		["code3"] = { 1 }
	},
}

COMPONENT.Modes = {
	Primary = {
		M3 = { ["headlights"] = "code3" },
		-- ALERT = { ["auto_fpiu16_foglamp"] = "alert", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

-------------------- END COMPONENT ----------------------

---------------- BEGIN COMPONENT ------------------

local name = "FH3 CVPI Outer-Flashers"

local COMPONENT = {}

COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "WHITE",
	[2] = "WHITE",
}

COMPONENT.Meta = {
	out_markers = {
		AngleOffset = -90,
		W = 9,
		H = 9.8,
		Sprite = "sprites/emv/cvpi_corner_marker",
		//Sprite = "sprites/emv/blank",
		Scale = 5,
	},
	out_markers2 = {
		AngleOffset = -90,
		W = 9,
		H = 9.8,
		Sprite = "sprites/emv/cvpi_corner_marker",
		//Sprite = "sprites/emv/blank",
		Scale = 5,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -35.85, 105.77, 36.2 ), Angle( -181.72, 48.57, 168.53 ), "out_markers" },
	[2] = { Vector( 35.85, 105.77, 36.2 ), Angle( 0, -40, 20 ), "out_markers2" },

}

COMPONENT.Sections = {
	["flashers"] = {
	{ { 1, "_1" } },
	{ { 2, "_2" } },
    },
}

COMPONENT.Patterns = {
	["flashers"] = {
        ["code3"] = { 1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0}
    },
}

COMPONENT.Modes = {
	Primary = {
		M3 = { ["flashers"] = "code3" },
		-- ALERT = { ["auto_fpiu16_foglamp"] = "alert", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

-------------------- END COMPONENT ----------------------