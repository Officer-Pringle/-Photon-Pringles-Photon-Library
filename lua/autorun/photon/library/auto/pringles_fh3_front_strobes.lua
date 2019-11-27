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
--[[--COMPONENT NAMES--
"Pringles FH3 CVPI Outer-Flashers RB"
"Pringles FH3 CVPI Outer-Flashers White"
"Pringles FH3 CVPI Outer-Flashers Blue"
"Pringles FH3 CVPI Outer-Flashers Red"
"Pringles FH3 CVPI Outer-Flashers Amber"


--------------------]]
----------------------
------------------------
--- Front Coner Strobs ---- 

local name = "Pringles FH3 CVPI Outer-Flashers White"

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
		Scale = 3,
		WMuti = 2,
		VisRadius = 5
	},
	out_markers2 = {
		AngleOffset = -90,
		W = 9,
		H = 9.8,
		Sprite = "sprites/emv/cvpi_corner_marker",
		//Sprite = "sprites/emv/blank",
		Scale = 3,
		WMuti = 2,
		VisRadius = 5
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
        ["code2"] = {1,1,1,0,1,1,1,0,1,1,1,0,2,2,2,0,2,2,2,0,2,2,2,0},
        ["code3"] = { 1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0}
    },
}

COMPONENT.Modes = {
	Primary = {
		M2 = { ["flashers"] = "code2"},
		M3 = { ["flashers"] = "code3" },
		-- ALERT = { ["auto_fpiu16_foglamp"] = "alert", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

---------------- END --------------------------

--------------- START ----------------------------
local name = "Pringles FH3 CVPI Outer-Flashers RB"

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
        ["code2"] = {1,1,1,0,1,1,1,0,1,1,1,0,2,2,2,0,2,2,2,0,2,2,2,0},
        ["code3"] = { 1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0}
    },
}

COMPONENT.Modes = {
	Primary = {
		M2 = { ["flashers"] = "code2"},
		M3 = { ["flashers"] = "code3" },
		-- ALERT = { ["auto_fpiu16_foglamp"] = "alert", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

--------------- END -------------------

-------------- START ------------------
local name = "Pringles FH3 CVPI Outer-Flashers Blue"

local COMPONENT = {}

COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "BLUE",
	[2] = "BLUE",
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
        ["code2"] = {1,1,1,0,1,1,1,0,1,1,1,0,2,2,2,0,2,2,2,0,2,2,2,0},
        ["code3"] = { 1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0}
    },
}

COMPONENT.Modes = {
	Primary = {
		M2 = { ["flashers"] = "code2"},
		M3 = { ["flashers"] = "code3" },
		-- ALERT = { ["auto_fpiu16_foglamp"] = "alert", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

----------------- END ---------------------------

----------------- START -------------------------
local name = "Pringles FH3 CVPI Outer-Flashers Red"

local COMPONENT = {}

COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "RED",
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
        ["code2"] = {1,1,1,0,1,1,1,0,1,1,1,0,2,2,2,0,2,2,2,0,2,2,2,0},
        ["code3"] = { 1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0}
    },
}

COMPONENT.Modes = {
	Primary = {
		M2 = { ["flashers"] = "code2"},
		M3 = { ["flashers"] = "code3" },
		-- ALERT = { ["auto_fpiu16_foglamp"] = "alert", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

----------------- END ---------------------------

----------------- START -------------------------
local name = "Pringles FH3 CVPI Outer-Flashers Amber"

local COMPONENT = {}

COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "AMBER",
	[2] = "AMBER",
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
        ["code2"] = {1,1,1,0,1,1,1,0,1,1,1,0,2,2,2,0,2,2,2,0,2,2,2,0},
        ["code3"] = { 1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0}
    },
}

COMPONENT.Modes = {
	Primary = {
		M2 = { ["flashers"] = "code2"},
		M3 = { ["flashers"] = "code3" },
		-- ALERT = { ["auto_fpiu16_foglamp"] = "alert", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )