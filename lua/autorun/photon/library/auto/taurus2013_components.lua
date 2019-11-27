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

local name = "Taurus13 FrontFlash"

local COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "WHITE",
	[2] = "WHITE",
	[3] = "WHITE",
	[4] = "WHITE",
	[5] = "WHITE",
	[6] = "WHITE",
}

COMPONENT.Meta = {
	taurus13indicator1 = {
		AngleOffset = -90,
		W = 4,
		H = 4,
		Sprite = "sprites/emv/tdm_fpis_forward_1",
		Scale = 1,
	},
	taurus13indicator2 = {
		AngleOffset = -90,
		W = 4,
		H = 4,
		Sprite = "sprites/emv/tdm_fpis_forward_2",
		Scale = 1,
	},
	taurus13indicator3 = {
		AngleOffset = -90,
		W = 9,
		H = 9,
		Sprite = "sprites/emv/tdm_fpis_forward_3",
		Scale = 1,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -30.26, 111.97, 36.12 ), Angle( 0, 27, 0 ), "taurus13indicator1" },
	[2] = { Vector( 30.26, 111.97, 36.12 ), Angle( 0, -27, 180 ), "taurus13indicator1" },
	
	[3] = { Vector( -28.97, 112.2, 37.62 ), Angle( 0, 35, 0 ), "taurus13indicator2" },
	[4] = { Vector( 28.97, 112.2, 37.62 ), Angle( 180, -35, 180 ), "taurus13indicator2" },
	
	[5] = { Vector( -28.15, 111.57, 39.32 ), Angle( 0, 35, 0 ), "taurus13indicator3" },
	[6] = { Vector( 28.15, 111.57, 39.32 ), Angle( 180, -35, 180 ), "taurus13indicator3" },

}

COMPONENT.Sections = {
	["taurus13indicators"] = {
		[1] = { { 1, "_1" }, { 2, "_2" }, { 3, "_3" }, { 4, "_4" }, { 5, "_5" }, { 6, "_6" } },
		[2] = { { 1, "_1" }, { 3, "_3" }, { 5, "_5" } },
		[3] = { { 2, "_2" }, { 4, "_4" }, { 6, "_6" } },
	},
}

COMPONENT.Patterns = {
	["taurus13indicators"] = {
		["code2"] = { 2,2,2,2,0,2,2,2,2,0,3,3,3,3,0,3,3,3,3,0,2,2,2,2,0,2,2,2,2,0,3,3,3,3,0,3,3,3,3,0,
			2,2,2,2,0,2,2,2,2,0,3,3,3,3,0,3,3,3,3,0,2,2,2,2,0,2,2,2,2,0,3,3,3,3,0,3,3,3,3,0, },
		["code3"] = { 2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,
			2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0, },
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = {["taurus13indicators"] = "code2"},
		M2 = {["taurus13indicators"] = "code2"},
		M3 = {["taurus13indicators"] = "code3",},
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "Taurus13 CHPFFlash"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "WHITE",
	[2] = "WHITE",
	[3] = "WHITE",
	[4] = "WHITE",
	[5] = "WHITE",
	[6] = "WHITE",
}

COMPONENT.Meta = {
	taurus13chpindicator1 = {
		AngleOffset = -90,
		W = 4,
		H = 4,
		Sprite = "sprites/emv/tdm_fpis_forward_1",
		Scale = 1,
	},
	taurus13chpindicator2 = {
		AngleOffset = -90,
		W = 4,
		H = 4,
		Sprite = "sprites/emv/tdm_fpis_forward_2",
		Scale = 1,
	},
	taurus13chpindicator3 = {
		AngleOffset = -90,
		W = 9,
		H = 9,
		Sprite = "sprites/emv/tdm_fpis_forward_3",
		Scale = 1,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -30.26, 111.97, 36.12 ), Angle( 0, 27, 0 ), "taurus13chpindicator1" },
	[2] = { Vector( 30.26, 111.97, 36.12 ), Angle( 0, -27, 180 ), "taurus13chpindicator1" },
	
	[3] = { Vector( -28.97, 112.2, 37.62 ), Angle( 0, 35, 0 ), "taurus13chpindicator2" },
	[4] = { Vector( 28.97, 112.2, 37.62 ), Angle( 180, -35, 180 ), "taurus13chpindicator2" },
	
	[5] = { Vector( -28.15, 111.57, 39.32 ), Angle( 0, 35, 0 ), "taurus13chpindicator3" },
	[6] = { Vector( 28.15, 111.57, 39.32 ), Angle( 180, -35, 180 ), "taurus13chpindicator3" },

}

COMPONENT.Sections = {
	["taurus13chpindicators"] = {
		[1] = { { 1, "_1" }, { 2, "_2" }, { 3, "_3" }, { 4, "_4" }, { 5, "_5" }, { 6, "_6" } },
		[2] = { { 1, "_1" }, { 3, "_3" }, { 5, "_5" } },
		[3] = { { 2, "_2" }, { 4, "_4" }, { 6, "_6" } },
	},
}

COMPONENT.Patterns = {
	["taurus13chpindicators"] = {
		["code3"] = { 3,3,3,3,3,3,2,2,2,2,2,2, },
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = {},
		M2 = {},
		M3 = {["taurus13chpindicators"] = "code3", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "Taurus13 FlashSignal"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "BLUE",
}

COMPONENT.Meta = {
	taurus13flashsignal1 = {
		AngleOffset = -90,
		W = 6,
		H = 8,
		Sprite = "sprites/emv/tdm_fpis_forward_out",
		Scale = 2,
	},
	taurus13flashsignal2 = {
		AngleOffset = 90,
		W = 6,
		H = 8,
		Sprite = "sprites/emv/tdm_fpis_forward_out",
		Scale = 2,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -37.8, 102.9, 39 ), Angle( -2, 60, 0 ), "taurus13flashsignal1" },
	[2] = { Vector( 37.8, 102.9, 39 ), Angle( 0, 121, 0 ), "taurus13flashsignal2" },

}

COMPONENT.Sections = {
	["taurus13flashsignals"] = {
		[1] = { { 1, "_1" }, { 2, "_2" } },
		[2] = { { 1, "_1" } },
		[3] = { { 2, "_2" } },
	},
}

COMPONENT.Patterns = {
	["taurus13flashsignals"] = {
	    ["code1"] = { 3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0,
			3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0, },
	    ["code2"] = { 3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0,
			3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0, },
		["code3"] = { 3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0,
			3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0, },
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = {},
		M2 = {["taurus13flashsignals"] = "code2", },
		M3 = {["taurus13flashsignals"] = "code3", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "Pringles Taurus13 FlashTail"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "RED",
	[3] = "RED",
	[4] = "RED",
}

COMPONENT.Meta = {
	taurus13flashtaildown = {
		AngleOffset = 90,
		W = 10.7,
		H = 9,
		Sprite = "sprites/emv/tdm_fpis_brake_upper",
		Scale = 1.6,
		WMult = 2,
	},
	taurus13flashtailup = {
		AngleOffset = 90,
		W = 8,
		H = 7.5,
		Sprite = "sprites/emv/tdm_fpis_brake_upper",
		Scale = 1.6,
		WMult = 2,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -33.25, -111.17, 48.41 ), Angle( -2, -38, -20 ), "taurus13flashtaildown" },
	[2] = { Vector( 33.25, -111.17, 48.41 ), Angle( 180+2, 38, 180+20 ), "taurus13flashtaildown" },
	[3] = { Vector( -34.22, -108.28, 52.51 ), Angle( -2, -42, -25 ), "taurus13flashtailup" },
	[4] = { Vector( 34.22, -108.28, 52.51 ), Angle( 180+2, 42, 180+25 ), "taurus13flashtailup" },

}

COMPONENT.Sections = {
	["taurus13flashtails"] = {
		[1] = { { 1, "_1" }, { 2, "_2" }, { 3, "_3" }, { 4, "_4" } },
		[2] = { { 1, "_1" }, { 3, "_3" } },
		[3] = { { 2, "_2" }, { 4, "_4" } },
	},
}

COMPONENT.Patterns = {
	["taurus13flashtails"] = {
		["code1"] = { 2,2,2,2,0,2,2,2,2,0,3,3,3,3,0,3,3,3,3},
		["code2"] = { 2,2,0,0,0,0,2,2,0,0,0,0,3,3,0,0,0,0,3,3,0,0,0,0,2,2,0,0,0,0,2,2,0,0,0,0,3,3,0,0,0,0,3,3,0,0,0,0,
			2,2,0,0,0,0,2,2,0,0,0,0,3,3,0,0,0,0,3,3,0,0,0,0,2,2,0,0,0,0,2,2,0,0,0,0,3,3,0,0,0,0,3,3,0,0,0,0, },
		["code3"] = { 2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,
			2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0, },
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = {["taurus13flashtails"] = "code1" },
		M2 = {["taurus13flashtails"] = "code2",},
		M3 = {["taurus13flashtails"] = "code3", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "Taurus13 FrontIndicator"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"

COMPONENT.Meta = {
	taurus13findicator_1 = {
		AngleOffset = -90,
		W = 4,
		H = 4,
		Sprite = "sprites/emv/tdm_fpis_forward_1",
		Scale = 1,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "taurus13findicator_1" },

}

COMPONENT.Sections = {
	["taurus13findicator_1"] = {
		[1] = { { 1, "_1" } }
	},
}

COMPONENT.Patterns = {
	["taurus13findicator_1"] = {
		["off"] = { 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["taurus13findicator_1"] = "off" },
		M2 = { ["taurus13findicator_1"] = "off" },
		M3 = { ["taurus13findicator_1"] = "off" }
	},
	Auxiliary = {},
	Illumination = {
		F = {
			{ 1, A }
		},
		T = {
			{ 1, A }
		},
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "Taurus13 FrontIndicator2"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"

COMPONENT.Meta = {
	taurus13findicator_2 = {
		AngleOffset = -90,
		W = 4,
		H = 4,
		Sprite = "sprites/emv/tdm_fpis_forward_2",
		Scale = 1,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "taurus13findicator_2" },

}

COMPONENT.Sections = {
	["taurus13findicator_2"] = {
		[1] = { { 1, "_1" } }
	},
}

COMPONENT.Patterns = {
	["taurus13findicator_2"] = {
		["off"] = { 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["taurus13findicator_2"] = "off" },
		M2 = { ["taurus13findicator_2"] = "off" },
		M3 = { ["taurus13findicator_2"] = "off" }
	},
	Auxiliary = {},
	Illumination = {
		F = {
			{ 1, A }
		},
		T = {
			{ 1, A }
		},
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "Taurus13 FrontIndicator3"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"

COMPONENT.Meta = {
	taurus13findicator_3 = {
		AngleOffset = -90,
		W = 9,
		H = 9,
		Sprite = "sprites/emv/tdm_fpis_forward_3",
		Scale = 1,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "taurus13findicator_3" },

}

COMPONENT.Sections = {
	["taurus13findicator_3"] = {
		[1] = { { 1, "_1" } }
	},
}

COMPONENT.Patterns = {
	["taurus13findicator_3"] = {
		["off"] = { 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["taurus13findicator_3"] = "off" },
		M2 = { ["taurus13findicator_3"] = "off" },
		M3 = { ["taurus13findicator_3"] = "off" }
	},
	Auxiliary = {},
	Illumination = {
		F = {
			{ 1, A }
		},
		T = {
			{ 1, A }
		},
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "Taurus13 FrontMarker"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"

COMPONENT.Meta = {
	taurus13fsignal_1 = {
		AngleOffset = -90,
		W = 6,
		H = 8,
		Sprite = "sprites/emv/tdm_fpis_forward_out",
		Scale = 2,
	},
	taurus13fsignal_2 = {
		AngleOffset = 90,
		W = 6,
		H = 8,
		Sprite = "sprites/emv/tdm_fpis_forward_out",
		Scale = 2,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "taurus13fsignal_1" },

}

COMPONENT.Sections = {
	["taurus13fsignal_1"] = {
		[1] = { { 1, "_1" } }
	},
}

COMPONENT.Patterns = {
	["taurus13fsignal_1"] = {
		["off"] = { 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["taurus13fsignal_1"] = "off" },
		M2 = { ["taurus13fsignal_1"] = "off" },
		M3 = { ["taurus13fsignal_1"] = "off" }
	},
	Auxiliary = {},
	Illumination = {
		F = {
			{ 1, A }
		},
		T = {
			{ 1, A }
		},
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "Taurus13 FrontMarker2"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"

COMPONENT.Meta = {
	taurus13fsignal_2 = {
		AngleOffset = 90,
		W = 6,
		H = 8,
		Sprite = "sprites/emv/tdm_fpis_forward_out",
		Scale = 2,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "taurus13fsignal_2" },

}

COMPONENT.Sections = {
	["taurus13fsignal_2"] = {
		[1] = { { 1, "_1" } }
	},
}

COMPONENT.Patterns = {
	["taurus13fsignal_2"] = {
		["off"] = { 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["taurus13fsignal_2"] = "off" },
		M2 = { ["taurus13fsignal_2"] = "off" },
		M3 = { ["taurus13fsignal_2"] = "off" }
	},
	Auxiliary = {},
	Illumination = {
		F = {
			{ 1, A }
		},
		T = {
			{ 1, A }
		},
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "Taurus13 Front"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"

COMPONENT.Meta = {
	taurus13front = {
		AngleOffset = -90,
		W = 4,
		H = 4,
		Sprite = "sprites/emv/light_circle",
		Scale = 2,
		VisRadius = 0,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "taurus13front" },

}

COMPONENT.Sections = {
	["taurus13front"] = {
		[1] = { { 1, "_1" } }
	},
}

COMPONENT.Patterns = {
	["taurus13front"] = {
		["off"] = { 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["taurus13front"] = "off" },
		M2 = { ["taurus13front"] = "off" },
		M3 = { ["taurus13front"] = "off" }
	},
	Auxiliary = {},
	Illumination = {
		F = {
			{ 1, W }
		},
		T = {
			{ 1, W }
		},
	}
}

EMVU:AddAutoComponent( COMPONENT, name )
