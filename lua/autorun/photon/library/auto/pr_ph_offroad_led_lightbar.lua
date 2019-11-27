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

local name = "Offroad LED Roof Lightbar"

local COMPONENT = {}

COMPONENT.Skin = 0
COMPONENT.Model = "models/sentry/ledbar.mdl"
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = false
COMPONENT.Category = "Lightbar"
COMPONENT.DefaultColors = {
	[1] = "C_WHITE",
}

COMPONENT.Meta = {
	ledprin = {
		AngleOffset = -90,
		W = 2.7,
		H = 2.7,
		WMult = 1,
		Sprite = "sprites/emv/led_offledlightbar_square",
		Scale = 1.5,
	},
}

COMPONENT.Positions = {

	[1] = { Vector( 22.2, 1.3, 2.), Angle( 0, 0, 0 ), "ledprin" },
	[2] = { Vector( 19.4, 1.3, 2.), Angle( 0, 0, 0 ), "ledprin" },
	[3] = { Vector( 16.65, 1.3, 2.), Angle( 0, 0, 0 ), "ledprin" },
	[4] = { Vector( 13.9, 1.3, 2.), Angle( 0, 0, 0 ), "ledprin" },
	[5] = { Vector( 11.1, 1.3, 2.), Angle( 0, 0, 0 ), "ledprin" },
	[6] = { Vector( 8.35, 1.3, 2.), Angle( 0, 0, 0 ), "ledprin" },
	[7] = { Vector( 5.5, 1.3, 2.), Angle( 0, 0, 0 ), "ledprin" },
	[8] = { Vector( 2.75, 1.3, 2.), Angle( 0, 0, 0 ), "ledprin" },
	[9] = { Vector( 0, 1.3, 2.), Angle( 0, 0, 0 ), "ledprin" },
	--
	[17] = { Vector( -22.2, 1.3, 2.), Angle( 0, 0, 0 ), "ledprin" },
	[16] = { Vector( -19.4, 1.3, 2.), Angle( 0, 0, 0 ), "ledprin" },
	[15] = { Vector( -16.65, 1.3, 2.), Angle( 0, 0, 0 ), "ledprin" },
	[14] = { Vector( -13.9, 1.3, 2.), Angle( 0, 0, 0 ), "ledprin" },
	[13] = { Vector( -11.1, 1.3, 2.), Angle( 0, 0, 0 ), "ledprin" },
	[12] = { Vector( -8.35, 1.3, 2.), Angle( 0, 0, 0 ), "ledprin" },
	[11] = { Vector( -5.5, 1.3, 2.), Angle( 0, 0, 0 ), "ledprin" },
	[10] = { Vector( -2.75, 1.3, 2.), Angle( 0, 0, 0 ), "ledprin" },

}

COMPONENT.Sections = {
	["ledprin"] = {
		[1] = { {1,"_1"}, { 2,"_1"}, { 3,"_1"}, { 4,"_1"}, { 5,"_1"}, { 6,"_1"}, { 7,"_1"}, { 8,"_1"},
		{9,"_1"}, { 10,"_1"}, { 11,"_1"}, { 12,"_1"}, { 13,"_1"}, { 14,"_1"}, { 15,"_1"}, { 16,"_1"},{ 17,"_1"},},
	},
}

COMPONENT.Patterns = {
	["ledprin"] = {
		["off"] = {},
	}
}

COMPONENT.Modes = {
	Primary = {
		M1 = { ["ledprin"] = "off" },
		M2 = { ["ledprin"] = "off" },
		M3 = { ["ledprin"] = "off"  }
	},
	Auxiliary = {},
	Illumination = {
		T = {
			{1, CW}, { 2, CW}, { 3, CW},{ 15, CW}, { 16, CW},{ 17, CW}
		},
		F = {
			{1,CW}, { 2,CW}, { 3,CW}, { 4,CW}, { 5,CW}, { 6,CW}, { 7,CW}, { 8,CW},
		{9,CW}, { 10,CW}, { 11,CW}, { 12,CW}, { 13,CW}, { 14,CW}, { 15,CW}, { 16,CW},{ 17,CW}
		}
	}
}

EMVU:AddAutoComponent( COMPONENT, name )