AddCSLuaFile()
 
local A = "AMBER"
local R = "RED"
local DR = "D_RED"
local B = "BLUE"
local W = "WHITE"
local CW = "C_WHITE"
local SW = "S_WHITE"
local G = "GREEN"
 
local name = "Pace Whelen Mini"
 
local COMPONENT = {}
 
COMPONENT.Model = "models/noble/whelen_ultrafreedommini/ultrafreedommini_lightbar.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.UsePhases = true
COMPONENT.DefaultColors = {
    [1] = "BLUE",
    [2] = "RED",
    [3] = "AMBER",
    [4] = "BLUE",
    [5] = "AMBER",
    [6] = "WHITE"
}
 
COMPONENT.Meta = {
    whelen_main = {
        AngleOffset = -90,
        W = 5.3,
        H = 4.3,
        Sprite = "sprites/emv/whelen_freedom_main",
        Scale = 1.2
    },
    whelen_side = {
        AngleOffset = -90,
        W = 7.5,
        H = 4.2,
        Sprite = "sprites/emv/whelen_freedom_main",
        Scale = 1.2
    }
}
 
COMPONENT.Positions = {
    [1] = { Vector( 13, 4.4, 6.2 ), Angle( 0, -30, 0 ), "whelen_side" },
    [2] = { Vector( 6.5, 6.2, 6.2 ), Angle( 0, 0, 0 ), "whelen_main" },
    [3] = { Vector( 1.1, 6.2, 6.2 ), Angle( 0, 0, 0 ), "whelen_main" },
    [4] = { Vector( -5.2, 4.5, 6.2 ), Angle( 0, 30, 0 ), "whelen_side" },

    [5] = { Vector( 13, 4.4, 4.2 ), Angle( 0, -30, 0 ), "whelen_side" },
    [6] = { Vector( 6.5, 6.2, 4.2 ), Angle( 0, 0, 0 ), "whelen_main" },
    [7] = { Vector( 1.1, 6.2, 4.2 ), Angle( 0, 0, 0 ), "whelen_main" },
    [8] = { Vector( -5.2, 4.5, 4.2 ), Angle( 0, 30, 0 ), "whelen_side" },

    [9] = { Vector( 13, -3.5, 6.1 ), Angle( 0, 210, 0 ), "whelen_side" },
    [10] = { Vector( 6.5, -5.3, 6.1 ), Angle( 0, 180, 0 ), "whelen_main" },
    [11] = { Vector( 1.1, -5.3, 6.1 ), Angle( 0, 180, 0 ), "whelen_main" },
    [12] = { Vector( -5.2, -3.5, 6.1 ), Angle( 0, 150, 0 ), "whelen_side" },

    [13] = { Vector( 13, -3.5, 4.2 ), Angle( 0, 210, 0 ), "whelen_side" },
    [14] = { Vector( 6.5, -5.2, 4.2 ), Angle( 0, 180, 0 ), "whelen_main" },
    [15] = { Vector( 1.1, -5.2, 4.2 ), Angle( 0, 180, 0 ), "whelen_main" },
    [16] = { Vector( -5.2, -3.5, 4.2 ), Angle( 0, 150, 0 ), "whelen_side" },
}
 
COMPONENT.Sections = {
    ["auto_whelen_freedom_mini"] = {
        [1] = { 
            { 1, "_1"}, { 2, "_1"}, { 7, "_2"}, { 8, "_2"}, { 11 , "_1"}, { 12 , "_1"}, { 13 , "_2"}, { 14 , "_2"}
        },
        [2] = {
            { 3, "_1"}, { 4, "_1"}, { 5, "_2"}, { 6, "_2"}, { 9 , "_1"}, { 10 , "_1"}, { 15 , "_2"}, { 16 , "_2"}
        },
        [3] = {
            { 2, "_2"}, { 10 , "_2"}
        },
        [4] = {
            { 3, "_2"}, { 11 , "_2"}
        },
        [5] = {
            { 1, "_2"}, { 5 , "_2"}, { 3, "_6"}, { 7, "_6"}, { 9, "_2"}, { 13 , "_2"}, { 11, "_6"}, { 15, "_6"}
        },
        [6] = {
            { 2, "_6"}, { 6 , "_6"}, { 4, "_2"}, { 8, "_2"}, { 10, "_6"}, { 14 , "_6"}, { 12, "_2"}, { 16, "_2"}
        },
        [7] = {
            { 1, "_2"}, { 2, "_6"}, { 3, "_6"}, { 4, "_2"}, { 5, "_2"}, { 6, "_6"}, { 7, "_6"}, { 8, "_2"},
            { 9, "_2"}, { 10, "_6"}, { 11, "_6"}, { 12, "_2"}, { 13, "_2"}, { 14, "_6"}, { 15, "_6"}, { 16, "_2"},
    }
    },
    ["alt_whelen_freedom_mini"] = {
        [1] = {
            { 1, "_1"}, { 8, "_1"}, { 7, "_3"}, { 12, "_1"}, { 13, "_1"}, { 14, "_3"}
        },
        [2] = {
            { 4, "_1"}, { 5, "_1"}, { 6, "_3"}, { 9, "_1"}, { 16, "_1"}, { 15, "_3"}
        }
    },

    ["p_pace"] = {
        [1] = { 
            {4, A}, { 3,A}, { 8,A}, { 7,A}, {12 ,A}, { 16,A}, { 11,A}, { 15,A}
        },
        [2] = {
            { 1,A}, {2 ,A}, {5 ,A}, {6 ,A}, {10 ,A}, {9 ,A}, {14 ,A}, {13 ,A}
        }   

    }
}
 
COMPONENT.Patterns = {
    ["auto_whelen_freedom_mini"] = {
        ["code1"] = { 1, 1, 1, 2, 2, 2, 1, 1, 1, 2, 2, 2 },
        ["code2"] = { 1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0 },
        ["code3"] = { 3, 3, 3, 4, 4, 4},
        ["code1TT"] = { 5, 5, 5, 6, 6, 6 },
        ["code2TT"] = { 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 5, 5, 5, 5, 5, 6, 6, 6, 6, 6,
                        5, 5, 5, 5, 5, 6, 6, 6, 6, 6, 5, 5, 0, 5, 5, 0, 6, 6, 0, 6, 6, 0, 5, 5, 0, 5, 5, 0, 6, 6, 0, 6, 6, 0,
                        5, 5, 0, 5, 5, 0, 6, 6, 0, 6, 6, 0, 7, 7, 0, 7, 7, 0, 7, 7, 0},
        ["code3TT"] = { 5, 5, 5, 6, 6, 6, 5, 5, 5, 6, 6, 6, 5, 5, 5, 6, 6, 6,
                        5, 5, 5, 6, 6, 6, 5, 0, 5, 0, 6, 0, 6, 0, 5, 0, 5, 0, 6, 0, 6, 0,
                        5, 0, 5, 0, 6, 0, 6, 0, 7, 0, 7, 0, 7, 0},
    },
    ["alt_whelen_freedom_mini"] = {
        ["code3"] = { 1, 0, 1, 0, 1, 0, 2, 0, 2, 0, 2, 0 },
        ["code3TT"] = { 0 }
    },
}
 
COMPONENT.TrafficDisconnect = {

}
 
COMPONENT.Modes = {
    Primary = {
        M1 = {
            ["auto_whelen_freedom_mini"] = "code1",
        },
        M2 = {
            ["auto_whelen_freedom_mini"] = "code2",
        },
        M3 = {
            ["auto_whelen_freedom_mini"] = "code3",
            ["alt_whelen_freedom_mini"] = "code3",
        }
    },
    Auxiliary = {
        L = {
        },
        R = {
        },
        D = {
        }
    }
}
 
EMVU:AddAutoComponent( COMPONENT, name )