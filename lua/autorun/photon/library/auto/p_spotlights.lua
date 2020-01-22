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

local name = "Spotlight Round"

local COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Hidden"
COMPONENT.DefaultColors = {
	[1] = "WHITE"
}

COMPONENT.Meta = {
	auto_whelen_spotlight = {
		AngleOffset = 0,
		W = 14,
		H = 14,
		WMult = 5,
		Sprite = "sprites/emv/led_single",
		Scale = 2,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	}
}

COMPONENT.Positions = {

	[1] = { 
		Vector( -42.5, 39.5, 63.2 ),
		Angle( 0, 0, 0 ), 
		"auto_whelen_spotlight" },

}

COMPONENT.Sections = {
	["auto_whelen_spotlight"] = {
		[1] = { { 1, "_1" } }
	},
}

COMPONENT.Patterns = {
	["auto_whelen_spotlight"] = {
		["c1"] = { 1 },
		["off"] = {}
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_whelen_spotlight"] = "off" },
		M2 = {},
		M3 = {}
	},
	Auxiliary = {},
	Illumination = {
		S = {
			{1, W}
		},
		T = {
			{ 1, W }
		},
		F = {
			{1, W}
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

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

local name = "Spotlight Round Prop"

local COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Model = "models/supermighty/photon/chp_spotlight_left_up.mdl"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "WHITE"
}

COMPONENT.Meta = {
	auto_whelen_spotlight = {
		AngleOffset = 0,
		W = 15.65,
		H = 15.65,
		WMult = 1,
		Sprite = "sprites/emv/led_single",
		Scale = 2,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	}
}

COMPONENT.Positions = {

	[1] = { 
		Vector( -4.75, -3.75, 3.15),
		Angle( 0, 90, 0 ), 
		"auto_whelen_spotlight", },

}

COMPONENT.Sections = {
	["auto_whelen_spotlight"] = {
		[1] = { { 1, "_1" } }
	},
}

COMPONENT.Patterns = {
	["auto_whelen_spotlight"] = {
		["c1"] = { 1 },
		["off"] = {}
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_whelen_spotlight"] = "off" },
		M2 = {},
		M3 = {}
	},
	Auxiliary = {},
	Illumination = {
		S = {
			{1, SW}
		},
		T = {
			{ 1, SW }
		},
		F = {
			{1, SW}
		},
		A = {
			{1, SW}
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )
--[[-------------------------------------------------------------------------
Title
---------------------------------------------------------------------------]]
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

local name = "Spotlight Round Prop Lights"

local COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Model = "models/supermighty/photon/chp_spotlight_left_up.mdl"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "S_WHITE"
}

COMPONENT.Meta = {
	auto_whelen_spotlight = {
		AngleOffset = 0,
		W = 15.65,
		H = 15.65,
		WMult = 5,
		Sprite = "sprites/emv/led_single",
		Scale = 2,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	}
}

COMPONENT.Positions = {

	[1] = { 
		Vector( -4.75, -3.75, 3.15),
		Angle( 0, 90, 0 ), 
		"auto_whelen_spotlight" },

}

COMPONENT.Sections = {
	["auto_whelen_spotlight"] = {
		[1] = { { 1, "_1", {4,0,4} } }
	},
}

COMPONENT.Patterns = {
	["auto_whelen_spotlight"] = {
		["c1"] = { 1  },
		["off"] = {}
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_whelen_spotlight"] = "c1" },
		M2 = { ["auto_whelen_spotlight"] = "c1" },
		M3 = { ["auto_whelen_spotlight"] = "c1" }
	},
	Auxiliary = {},
	Illumination = {
		S = {
			{1, SW}
		},
		T = {
			{ 1, SW }
		},
		F = {
			{1, SW}
		},
		A = {
			{1, SW}
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )
--[[-------------------------------------------------------------------------
Title
---------------------------------------------------------------------------]]
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

local name = "Spotlight Round Prop Right"

local COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Model = "models/supermighty/photon/chp_spotlight_right_up.mdl"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "WHITE"
}

COMPONENT.Meta = {
	auto_whelen_spotlight = {
		AngleOffset = 0,
		W = 15.65,
		H = 15.65,
		WMult = 5,
		Sprite = "sprites/emv/led_single",
		Scale = 2,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	}
}

COMPONENT.Positions = {

	[1] = { 
		Vector( -4.75, 3.8, 3.15),
		Angle( 0, 90, 0 ), 
		"auto_whelen_spotlight" },

}

COMPONENT.Sections = {
	["auto_whelen_spotlight"] = {
		[1] = { { 1, "_1" } }
	},
}

COMPONENT.Patterns = {
	["auto_whelen_spotlight"] = {
		["c1"] = { 1 },
		["off"] = {}
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_whelen_spotlight"] = "off" },
		M2 = {},
		M3 = {}
	},
	Auxiliary = {},
	Illumination = {
		S = {
			{1, SW}
		},
		S1 = {
			{1, SW}
		},
		T = {
			{ 1, SW }
		},
		F = {
			{1, SW}
		},
		A = {
			{1, SW}
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )
--[[-------------------------------------------------------------------------

---------------------------------------------------------------------------]]
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

local name = "Spotlight Round Prop Right Light"

local COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Model = "models/supermighty/photon/chp_spotlight_right_up.mdl"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "S_WHITE"
}

COMPONENT.Meta = {
	auto_whelen_spotlight = {
		AngleOffset = 0,
		W = 15.65,
		H = 15.65,
		WMult = 5,
		Sprite = "sprites/emv/led_single",
		Scale = 2,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	}
}

COMPONENT.Positions = {

	[1] = { 
		Vector( -4.75, 3.8, 3.15),
		Angle( 0, 90, 0 ), 
		"auto_whelen_spotlight" },

}

COMPONENT.Sections = {
	["auto_whelen_spotlight"] = {
		[1] = { { 1, "_1", {4, 0, 0} } }
	},
}

COMPONENT.Patterns = {
	["auto_whelen_spotlight"] = {
		["c1"] = { 1 },
		["off"] = {}
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_whelen_spotlight"] = "c1" },
		M2 = { ["auto_whelen_spotlight"] = "c1" },
		M3 = { ["auto_whelen_spotlight"] = "c1" }
	},
	Auxiliary = {},
	Illumination = {
		S = {
			{1, SW}
		},
		S1 = {
			{1, SW}
		},
		T = {
			{ 1, SW }
		},
		F = {
			{1, SW}
		},
		A = {
			{1, SW}
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )

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

local name = "P PAR-46 Spotlight"

local COMPONENT = {}

COMPONENT.Model = "models/schmal/whelen_spotlight.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.ColorInput = 1
COMPONENT.UsePhases = true
COMPONENT.Category = "Exterior"
COMPONENT.DefaultColors = {
	[1] = "WHITE"
}

COMPONENT.Meta = {
	auto_whelen_spotlight = {
		AngleOffset = 0,
		W = 12,
		H = 12,
		WMult = .9,
		Sprite = "sprites/emv/whelen_spotlight",
		Scale = 2,
		NoLegacy = true,
		DirAxis = "Up",
		DirOffset = 90
	}
}

COMPONENT.Positions = {

	[1] = { Vector( 8.62, -2.38, 4.19 ), Angle( 180, -125, 0 ), "auto_whelen_spotlight" },

}

COMPONENT.Sections = {
	["auto_whelen_spotlight"] = {
		[1] = { { 1, "_1" } }
	},
}

COMPONENT.Patterns = {
	["auto_whelen_spotlight"] = {
		["off"] = { 0 }
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["auto_whelen_spotlight"] = "off" },
		M2 = { ["auto_whelen_spotlight"] = "off" },
		M3 = { ["auto_whelen_spotlight"] = "off" }
	},
	Auxiliary = {},
	Illumination = {
		S = {
			{ 1, CW }
		},
		T = {
			{ 1, CW }
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )
