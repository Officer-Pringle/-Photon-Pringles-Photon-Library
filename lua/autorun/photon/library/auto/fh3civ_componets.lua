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

local name = "CVPIFH3 LAPDFLeds"

local COMPONENT = {}

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
	cvpifh3_lapdfleds = {
		AngleOffset = -90,
		W = 3,
		H = 3,
		Sprite = "sprites/emv/circular_src",
		Scale = 3,
		WMult = 2,
	},
}

COMPONENT.Positions = {

	[1] = { Vector(-36.7, 106.3, 35), Angle(0,50,0), "cvpifh3_lapdfleds" },
	[2] = { Vector(36.7, 106.3, 35), Angle(0,-50,0), "cvpifh3_lapdfleds" },

}

COMPONENT.Sections = {
	["cvpifh3_lapdfleds"] = {
		[1] = { { 1, "_1" }, { 2, "_2" } },
		[2] = { { 1, "_1" } },
		[3] = { { 2, "_2" } },
	},
}

COMPONENT.Patterns = {
	["cvpifh3_lapdfleds"] = {
		["code2"] = { 3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0,
			3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0, },
		["code3"] = { 3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0,
			3,3,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3,0,2,2,0,2,2,0, },
	    ["off"] = { 0,},
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["cvpifh3_lapdfleds"] = "off", },
		M2 = { ["cvpifh3_lapdfleds"] = "code2", },
		M3 = { ["cvpifh3_lapdfleds"] = "code3", },
	},
	Auxiliary = {},
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "CVPIFH3 Wig-Wags"
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
}

COMPONENT.Meta = {
	cvpifh3_wigwags = {
		AngleOffset = -90,
		W = 12.5,
		H = 13,
		Sprite = "sprites/emv/cvpifh32011_headlight",
		Scale = 5,
	},
}

COMPONENT.Positions = {

	[1] = { Vector(-29, 109.7, 36.8), Angle(0,10,25), "cvpifh3_wigwags" },
	[2] = { Vector(29, 109.7, 36.8), Angle(180,-10,155), "cvpifh3_wigwags" },

}

COMPONENT.Sections = {
	["cvpifh3_wigwags"] = {
		[1] = { { 1, SW, { 9, 0, 0 } }, },
        [2] = { { 2, SW, { 9, 0, 0 } }, },
		[3] = { { 1, SW, { 9, 0, 0 } }, { 2, SW, { 9, 0, 0 } }, },
	},
}

COMPONENT.Patterns = {
	["cvpifh3_wigwags"] = {
		["code3"] = { 1,1,1,1,1,1,2,2,2,2,2,2,0,1,1,1,1,1,1,2,2,2,2,2,2,0,1,1,1,1,1,1,2,2,2,2,2,2,0,1,1,1,1,1,1,2,2,2,2,2,2,0,3,3,3,3,3,3,0,3,3,3,3,3,3,0,3,3,3,3,3,3,0, },
		["code2"] = { 1,1,1,1,1,1,2,2,2,2,2,2,0,1,1,1,1,1,1,2,2,2,2,2,2,0,1,1,1,1,1,1,2,2,2,2,2,2,0,1,1,1,1,1,1,2,2,2,2,2,2,0,3,3,3,3,3,3,0,3,3,3,3,3,3,0,3,3,3,3,3,3,0, },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = {},
		M2 = {["cvpifh3_wigwags"] = "code2",},
		M3 = {["cvpifh3_wigwags"] = "code3", }
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "CVPIFH3 FlashFront"
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
}

COMPONENT.Meta = {
	cvpifh3_flashfront = {
		AngleOffset = -90,
		W = 12.5,
		H = 13,
		Sprite = "sprites/emv/cvpifh32011_headlight",
		Scale = 5,
	},
}

COMPONENT.Positions = {

	[1] = { Vector(-29, 109.7, 36.8), Angle(0,10,25), "cvpifh3_flashfront" },
	[2] = { Vector(29, 109.7, 36.8), Angle(180,-10,155), "cvpifh3_flashfront" },

}

COMPONENT.Sections = {
	["cvpifh3_flashfront"] = {
		[1] = { { 1, "_1" }, { 2, "_2" }, },
		[2] = { { 1, "_1" } },
		[3] = { { 2, "_2" } },
	},
}

COMPONENT.Patterns = {
	["cvpifh3_flashfront"] = {
		["code2"] = { 2,2,2,0,2,2,2,0,3,3,3,0,2,2,2,0,2,2,2,0,3,3,3,0,3,3,3},
		["code3"] = { 2,2,0,2,2,0,3,3,0,2,2,0,2,2,0,3,3,0,3,3},
	    ["off"] = { 0,},
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = {},
		M2 = {["cvpifh3_flashfront"] = "code2"},
		M3 = {["cvpifh3_flashfront"] = "code3",}
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "CVPIFH3 FlashTail"
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
	cvpifh3_flashtail = {
		AngleOffset = 90,
		W = 8,
		H = 7,
		Sprite = "sprites/emv/crownvic_tail",
		Scale = 3,
	},
	cvpifh3_flashtail2 = {
		AngleOffset = -90,
		W = 8,
		H = 8,
		Sprite = "sprites/emv/crownvic_tail",
		Scale = 3,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( -32, -127.05, 44.3 ), Angle( 0, -17, 0 ), "cvpifh3_flashtail" },
	[2] = { Vector( -33.3, -126.38, 46.95 ), Angle( 0, -20, -12 ), "cvpifh3_flashtail" },	 

	[3] = { Vector( 33.3, -126.38, 46.95 ), Angle( 180, 200, -12 ), "cvpifh3_flashtail2" },
	[4] = { Vector( 32, -127.05, 44.3 ), Angle( 180, 197, 0 ), "cvpifh3_flashtail2" },

}

COMPONENT.Sections = {
	["cvpifh3_flashtail"] = {
		[1] = { { 1, "_1" }, { 2, "_2" }, },
		[2] = { { 1, "_1" } },
		[3] = { { 2, "_2" } },
	},
	["cvpifh3_flashtail2"] = {
		[1] = { { 3, "_3" }, { 4, "_4" }, },
		[2] = { { 3, "_3" } },
		[3] = { { 4, "_4" } },
	},
}

COMPONENT.Patterns = {
	["cvpifh3_flashtail"] = {
		["code2"] = { 1,1,0,1,1,0,0,0,0,0,0,0,1,1,0,1,1,0,0,0,0,0,0,0,
			1,1,0,1,1,0,0,0,0,0,0,0,1,1,0,1,1,0,0,0,0,0,0,0, },
		["code3"] = { 1,1,0,1,1,0,0,0,0,0,0,0,1,1,0,1,1,0,0,0,0,0,0,0,
			1,1,0,1,1,0,0,0,0,0,0,0,1,1,0,1,1,0,0,0,0,0,0,0, },
	    ["off"] = { 0,},
	},
	["cvpifh3_flashtail2"] = {
		["code2"] = { 0,0,0,0,0,0,1,1,0,1,1,0,0,0,0,0,0,0,1,1,0,1,1,0,
			0,0,0,0,0,0,1,1,0,1,1,0,0,0,0,0,0,0,1,1,0,1,1,0, },
		["code3"] = { 0,0,0,0,0,0,1,1,0,1,1,0,0,0,0,0,0,0,1,1,0,1,1,0,
			0,0,0,0,0,0,1,1,0,1,1,0,0,0,0,0,0,0,1,1,0,1,1,0, },
	    ["off"] = { 0,},
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = {},
		M2 = {["cvpifh3_flashtail"] = "code2", ["cvpifh3_flashtail2"] = "code2",},
		M3 = {["cvpifh3_flashtail"] = "code3", ["cvpifh3_flashtail2"] = "code3",}
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "CVPIFH3 CHPIons"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "RED",
	[2] = "RED",
	[3] = "RED",
	[4] = "RED",
}

COMPONENT.Meta = {
	cvpifh3_chpfront = {
		AngleOffset = -90,
		W = 5.8,
		H = 6.5,
		Sprite = "sprites/emv/whelen_ion",
		Scale = .66,
		WMult = 1.5,
	},
	cvpifh3_chpmirror = {
		AngleOffset = -90,
		W = 7.1,
		H = 7.5,
		Sprite = "sprites/emv/whelen_ion",
		Scale = .66,
		WMult = 1.5,
	},
}

COMPONENT.Positions = {
	[1] = { Vector( 9.5, 119.5, 34.1 ), Angle( 0, -45, 0 ), "cvpifh3_chpfront" },
	[2] = { Vector( -9.5, 119.5, 34.1 ), Angle( 0, 45, 0 ), "cvpifh3_chpfront" },
	[3] = { Vector( 47.23, 27.03, 55 ), Angle( 0, -24, 0 ), "cvpifh3_chpmirror" },
	[4] = { Vector( -47.23, 27.03, 55 ), Angle( 0, 24, 0 ), "cvpifh3_chpmirror" },
}

COMPONENT.Sections = {
	["cvpifh3_chpfront"] = {
		[1] = { { 1, "_1" }, { 2, "_2" }, },
		[2] = { { 1, "_1" } },
		[3] = { { 2, "_2" } },
	},
	["cvpifh3_chpmirror"] = {
		[1] = { { 3, "_3" }, { 4, "_4" }, },
		[2] = { { 3, "_3" } },
		[3] = { { 4, "_4" } },
	},
}

COMPONENT.Patterns = {
	["cvpifh3_chpfront"] = {
	    ["code1"] = { 2, 2, 2, 0, 0, 3, 3, 3, 2, 2, 2, 0, 0, 3, 3, 3 },
	    ["code2"] = { 2, 0, 2, 2, 2, 3, 0, 3, 3, 3, 2, 0, 2, 2, 2, 3, 0, 3, 3, 3, },
		["code3"] = { 2,0,2,3,0,3,2,0,2,3,0,3,2,0,2,3,0,3, },
		["cruise"] = { 1 },
	    ["off"] = { 0,},
	},
	["cvpifh3_chpmirror"] = {
	    ["code1"] = { 2, 2, 2, 0, 0, 3, 3, 3, 2, 2, 2, 0, 0, 3, 3, 3 },
	    ["code2"] = { 2, 0, 2, 2, 2, 3, 0, 3, 3, 3, 2, 0, 2, 2, 2, 3, 0, 3, 3, 3, },
		["code3"] = { 2,0,2,3,0,3,2,0,2,3,0,3,2,0,2,3,0,3, },
		["cruise"] = { 1 },
	    ["off"] = { 0,},
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = {["cvpifh3_chpfront"] = "code1", ["cvpifh3_chpmirror"] = "code1",},
		M2 = {["cvpifh3_chpfront"] = "code2", ["cvpifh3_chpmirror"] = "code2",},
		M3 = {["cvpifh3_chpfront"] = "code3", ["cvpifh3_chpmirror"] = "code3",},
		CRUISE = {["cvpifh3_chpfront"] = "cruise", ["cvpifh3_chpmirror"] = "cruise",},
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "CVPIFH3 TaxiSign"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "AMBER",
	[2] = "AMBER",
	[3] = "AMBER",
	[4] = "AMBER",
	[5] = "AMBER",
	[6] = "AMBER",
}

COMPONENT.Meta = {
	cvpifh3_taxisignf = {
		AngleOffset = -90,
		WMult = .66,
		Scale = 5,
		W = 15,
		H = 15,
		Sprite = "sprites/emv/emv_lightglow",
		VisRadius = 1,
	},
	cvpifh3_taxisignr = {
		AngleOffset = 90,
		WMult = .66,
		Scale = 5,
		W = 15,
		H = 15,
		Sprite = "sprites/emv/emv_lightglow",
		VisRadius = 1,
	},
}

COMPONENT.Positions = {
	 [1] = { Vector(-8.8, 0, 78), Angle(0,0,0), "cvpifh3_taxisignf" },
	 [2] = { Vector(-8.8, -4, 78.5), Angle(0,0,-10), "cvpifh3_taxisignr" }, 
	 [3] = { Vector(8.8, 0, 78), Angle(0,0,0), "cvpifh3_taxisignf" },
     [4] = { Vector(8.8, -4, 78.5), Angle(0,0,-10), "cvpifh3_taxisignr" },
	 [5] = { Vector(-10.5, -2, 78.2), Angle(0,90,16), "cvpifh3_taxisignf" },
	 [6] = { Vector(10.5, -2, 78.2), Angle(0,-90,16), "cvpifh3_taxisignf" },
}

COMPONENT.Sections = {
	["cvpifh3_taxisign"] = {
		[1] = { { 1, "_1" }, { 2, "_2" },{ 3, "_3" }, { 4, "_4" },{ 5, "_5" }, { 6, "_6" }, },
	},
}

COMPONENT.Patterns = {
	["cvpifh3_taxisign"] = {
	    ["on"] = { 1 },
	},
}

COMPONENT.Modes = {
	Primary = {
		M1 = {},
		M2 = {},
		M3 = {},
		TAXI = {["cvpifh3_taxisign"] = "on",},
	},
	Auxiliary = {},
	Illumination = {}
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "CVPI FH3 Back"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "RED",
}

COMPONENT.Meta = {
	auto_cvpifh3_back = {
		AngleOffset = 90,
		W = 8,
		H = 7,
		WMult = .9,
		Sprite = "sprites/emv/crownvic_tail",
		Scale = 2,
		-- NoLegacy = true,
		-- DirAxis = "Up",
		-- DirOffset = 90
	}
}

COMPONENT.Positions = {

	[1] = { Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "auto_cvpifh3_back" },

}

COMPONENT.Sections = {
	["auto_cvpifh3_back"] = {
		[1] = { { 1, "_1" } }
	},
}

COMPONENT.Patterns = {
	["auto_cvpifh3_back"] = {
		["c1"] = { 1 },
		["off"] = { 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_cvpifh3_back"] = "off" },
		M2 = { ["auto_cvpifh3_back"] = "off" },
		M3 = { ["auto_cvpifh3_back"] = "off" }
	},
	Auxiliary = {},
	Illumination = {
		T = {
			{ 1, R }
		},
		F = {
			{ 1, R }
		},
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "CVPI FH3 Back2"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "RED",
}

COMPONENT.Meta = {
	auto_cvpifh3_back2 = {
		AngleOffset = -90,
		W = 8,
		H = 7,
		WMult = .9,
		Sprite = "sprites/emv/crownvic_tail",
		Scale = 2,
		-- NoLegacy = true,
		-- DirAxis = "Up",
		-- DirOffset = 90
	}
}

COMPONENT.Positions = {

	[1] = { Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "auto_cvpifh3_back2" },

}

COMPONENT.Sections = {
	["auto_cvpifh3_back2"] = {
		[1] = { { 1, "_1" } }
	},
}

COMPONENT.Patterns = {
	["auto_cvpifh3_back2"] = {
		["c1"] = { 1 },
		["off"] = { 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_cvpifh3_back2"] = "off" },
		M2 = { ["auto_cvpifh3_back2"] = "off" },
		M3 = { ["auto_cvpifh3_back2"] = "off" }
	},
	Auxiliary = {},
	Illumination = {
		T = {
			{ 1, R }
		},
		F = {
			{ 1, R }
		},
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "CVPI FH3 Headlight"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "WHITE",
}

COMPONENT.Meta = {
	auto_cvpifh3_headlight = {
		AngleOffset = -90,
		W = 12.5,
		H = 13,
		WMult = .9,
		Sprite = "sprites/emv/cvpifh32011_headlight",
		Scale = 3,
		-- NoLegacy = true,
		-- DirAxis = "Up",
		-- DirOffset = 90
	}
}

COMPONENT.Positions = {

	[1] = { Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "auto_cvpifh3_headlight" },

}

COMPONENT.Sections = {
	["auto_cvpifh3_headlight"] = {
		[1] = { { 1, "_1" } }
	},
}

COMPONENT.Patterns = {
	["auto_cvpifh3_headlight"] = {
		["c1"] = { 0 },
		["off"] = { 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_cvpifh3_headlight"] = "off" },
		M2 = { ["auto_cvpifh3_headlight"] = "off" },
		M3 = { ["auto_cvpifh3_headlight"] = "off" }
	},
	Auxiliary = {},
	Illumination = {
		T = {
			{ 1, W }
		},
		F = {
			{ 1, W }
		},
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

name = "CVPI FH3 Spotlight"
COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "WHITE",
}

COMPONENT.Meta = {
	auto_cvpifh3_spotlight = {
		AngleOffset = -90,
		W = 6.5,
		H = 6.5,
		WMult = .9,
		Sprite = "sprites/emv/light_circle",
		Scale = 3,
		-- NoLegacy = true,
		-- DirAxis = "Up",
		-- DirOffset = 90
	}
}

COMPONENT.Positions = {

	[1] = { Vector( 0, 0, 0 ), Angle( 0, 0, 0 ), "auto_cvpifh3_spotlight" },

}

COMPONENT.Sections = {
	["auto_cvpifh3_spotlight"] = {
		[1] = { { 1, "_1" } }
	},
}

COMPONENT.Patterns = {
	["auto_cvpifh3_spotlight"] = {
		["c1"] = { 0 },
		["off"] = { 0 },
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_cvpifh3_spotlight"] = "off" },
		M2 = { ["auto_cvpifh3_spotlight"] = "off" },
		M3 = { ["auto_cvpifh3_spotlight"] = "off" }
	},
	Auxiliary = {},
	Illumination = {
		F = {
			{ 1, W }
		},
		L = {
			{ 1, W }
		},
	}
}

EMVU:AddAutoComponent( COMPONENT, name )
