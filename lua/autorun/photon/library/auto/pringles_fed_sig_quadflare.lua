--[[-------------------------------------------------------------------------

IF YOU WANT TO USE THESE PLEASE DOWNLOAD THE STANDALONE ADDON THAT IS ON MY WORKSHOP

THIS CONTAINS COMPONENTS THAT I PERSONALY HAVE MADE FOR CERTIN VEHICLES AND PROB. WONT
WORK IN YOUR FAVOR AS I CHANGE THIS ALOT
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
 
local name = "Fedral Signal Quadflare Blue"
 
local COMPONENT = {}
 
COMPONENT.Model = "models/c3/fed_sig_quadflare/fedsig_quadflare.mdl"
COMPONENT.Skin = 3
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true 
COMPONENT.DefaultColors = {
    [1] = "BLUE"
}
 
COMPONENT.Meta = {

    whelen600_light = {
        AngleOffset = 0,
        W = 9.8,
        H = 5.5,
        Sprite = "sprites/emv/emv_whelen_600",
        Scale = 3,
        NoLegacy = true,
        DirAxis = "Up",
        DirOffset = 90,
        WMult = 2
    },

    

}
 
COMPONENT.Positions = {
    [1] = { Vector( 0.3, 0, 1.3 ), Angle( 0, -90, 0 ), "whelen600_light" },
    [2] = { Vector( .3, 0, -1.1 ), Angle( 0, -90, 0 ), "whelen600_light" },

}
 
COMPONENT.Sections = {
    ["light_main"] = {
        [1] = { 
            { 1, "_1"}, {2,"_1"}
        },
        [2] = {
            {2, "_1" } 
        },
        [3] = {
            {1, "_1" } 
        }
    }
}
 
COMPONENT.Patterns = {
    ["light_main"] = {
        ["code1"] = { 1, 1, 1, 0, 0, 0 },
        ["code2"] = { 1, 1, 0, 0 },
        ["code3"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },

        ["code1A"] = { 0, 0, 0, 1, 1, 1 },
        ["code2A"] = { 0, 0, 1, 1 },
        ["code3A"] = { 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0 },

        ["code1B"] = { 3,3,3,2,2,2 },
        ["code2B"] = { 3,3,2,2},
        ["code3B"] = { 3,0,3,0,3,2,0,2,0,2,3,0,3,0,3,2,2,2,3,2,3,2,3,2,3,2,3,2,1,1,1,2,2,2,3,2,1,2,3,2,1,2,3 },

        ["code1C"] = { 2,2,2,3,3,3},
        ["code2C"] = { 2,2,3,3},
        ["code3C"] = { 2,0,2,0,2,3,0,3,0,3,2,0,2,0,2,3,3,3,2,3,2,3,2,3,2,3,2,3,1,1,1,3,3,3,2,3,1,3,2,3,1,3,2 },
    },
}
 
COMPONENT.TrafficDisconnect = {}
 
COMPONENT.Modes = {
    Primary = {
        M1 = {
            ["light_main"] = "code1",
        },
        M2 = {
            ["light_main"] = "code2",
        },
        M3 = {
            ["light_main"] = "code3",
        }
    },
    Auxiliary = {
        L = {

        },
        R = {

        },
        D = {

        },
        RA = {
            {2,CW}
        }
    }
}
 
EMVU:AddAutoComponent( COMPONENT, name )

--[[-------------------------------------------------------------------------
Title
---------------------------------------------------------------------------]]
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
 
local name = "Fedral Signal Quadflare Red"
 
local COMPONENT = {}
 
COMPONENT.Model = "models/c3/fed_sig_quadflare/fedsig_quadflare.mdl"
COMPONENT.Skin = 0
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true 
COMPONENT.DefaultColors = {
    [1] = "RED"
}
 
COMPONENT.Meta = {

    whelen600_light = {
        AngleOffset = 0,
        W = 9.8,
        H = 5.5,
        Sprite = "sprites/emv/emv_whelen_600",
        Scale = 3,
        NoLegacy = true,
        DirAxis = "Up",
        DirOffset = 90,
        WMult = 2
    },

    

}
 
COMPONENT.Positions = {
    [1] = { Vector( 0.3, 0, 1.3 ), Angle( 0, -90, 0 ), "whelen600_light" },
    [2] = { Vector( .3, 0, -1.1 ), Angle( 0, -90, 0 ), "whelen600_light" },

}
 
COMPONENT.Sections = {
    ["light_main"] = {
        [1] = { 
            { 1, "_1"}, {2,"_1"}
        },
        [2] = {
            {2, "_1" } 
        },
        [3] = {
            {1, "_1" } 
        }
    }
}
 
COMPONENT.Patterns = {
    ["light_main"] = {
        ["code1"] = { 1, 1, 1, 0, 0, 0 },
        ["code2"] = { 1, 1, 0, 0 },
        ["code3"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },

        ["code1A"] = { 0, 0, 0, 1, 1, 1 },
        ["code2A"] = { 0, 0, 1, 1 },
        ["code3A"] = { 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0 },

        ["code1B"] = { 3,3,3,2,2,2 },
        ["code2B"] = { 3,3,2,2},
        ["code3B"] = { 3,0,3,0,3,2,0,2,0,2,3,0,3,0,3,2,2,2,3,2,3,2,3,2,3,2,3,2,1,1,1,2,2,2,3,2,1,2,3,2,1,2,3 },

        ["code1C"] = { 2,2,2,3,3,3 },
        ["code2C"] = { 2,2,3,3},
        ["code3C"] = { 2,0,2,0,2,3,0,3,0,3,2,0,2,0,2,3,3,3,2,3,2,3,2,3,2,3,2,3,1,1,1,3,3,3,2,3,1,3,2,3,1,3,2 },
    },
}
 
COMPONENT.TrafficDisconnect = {}
 
COMPONENT.Modes = {
    Primary = {
        M1 = {
            ["light_main"] = "code1",
        },
        M2 = {
            ["light_main"] = "code2",
        },
        M3 = {
            ["light_main"] = "code3",
        }
    },
    Auxiliary = {
        L = {

        },
        R = {

        },
        D = {

        },
    }
}
 
EMVU:AddAutoComponent( COMPONENT, name )

--[[-------------------------------------------------------------------------
Title
---------------------------------------------------------------------------]]
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
 
local name = "Fedral Signal Quadflare Illumination"
 
local COMPONENT = {}
 
COMPONENT.Model = "models/c3/fed_sig_quadflare/fedsig_quadflare.mdl"
COMPONENT.Skin = 1
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true 
COMPONENT.DefaultColors = {
    [1] = "RED"
}
 
COMPONENT.Meta = {

    whelen600_light = {
        AngleOffset = 0,
        W = 9.8,
        H = 5.5,
        Sprite = "sprites/emv/emv_whelen_600",
        Scale = 2,
        NoLegacy = true,
        DirAxis = "Up",
        DirOffset = 90,
        WMult = 1.5
    },

    

}
 
COMPONENT.Positions = {
    [1] = { Vector( 0.3, 0, 1.3 ), Angle( 0, -90, 0 ), "whelen600_light" },
    [2] = { Vector( .3, 0, -1.1 ), Angle( 0, -90, 0 ), "whelen600_light" },

}
 
COMPONENT.Sections = {
    ["light_main"] = {
        [1] = { 
            { 1, "_1"}, {2,"_1"}
        },
        [2] = {
            {2, "_1" } 
        },
        [3] = {
            {1, "_1" } 
        }
    }
}
 
COMPONENT.Patterns = {
    ["light_main"] = {
        ["code1"] = { 1, 1, 1, 0, 0, 0 },
        ["code2"] = { 1, 1, 0, 0 },
        ["code3"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },

        ["code1A"] = { 0, 0, 0, 1, 1, 1 },
        ["code2A"] = { 0, 0, 1, 1 },
        ["code3A"] = { 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0 },

        ["code1B"] = { 3,3,3,2,2,2 },
        ["code2B"] = { 3,3,2,2},
        ["code3B"] = { 3,0,3,0,3,2,0,2,0,2,3,0,3,0,3,2,2,2,3,2,3,2,3,2,3,2,3,2,1,1,1,2,2,2,3,2,1,2,3,2,1,2,3 },

        ["code1C"] = { 2,2,2,3,3,3 },
        ["code2C"] = { 2,2,3,3},
        ["code3C"] = { 2,0,2,0,2,3,0,3,0,3,2,0,2,0,2,3,3,3,2,3,2,3,2,3,2,3,2,3,1,1,1,3,3,3,2,3,1,3,2,3,1,3,2 },

        ["off"] = {}
    },
}
 
COMPONENT.TrafficDisconnect = {}
 
COMPONENT.Modes = {
    Primary = {
        M1 = {
            ["light_main"] = "off",
        },
        M2 = {
            ["light_main"] = "off",
        },
        M3 = {
            ["light_main"] = "off",
        }
    },
    Auxiliary = {
        L = {

        },
        R = {

        },
        D = {

        },
    },
     Illumination = {
        T = {
        },
        L = {
        },
        R = {
        },
        rear = {
            {1, CW}, {2,CW}
        }
    }
}
 
EMVU:AddAutoComponent( COMPONENT, name )


-- end

local name = "Whelen Tir3 Illum"

local COMPONENT = {}

COMPONENT.Model = "models/supermighty/photon/whelen_linz3.mdl"
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
    lightbar= {
        AngleOffset = -90,
        W = 5,
        H = 5,
        Sprite = "sprites/emv/emv_whelen_mini_3",
        WMult = 1,
        Scale = 3,
        NoLegacy = true,
        DirAxis = "Up",
        DirOffset = 90
    },
}

COMPONENT.Positions = {     
   -- FRONT ILLUM --
    [1] = { Vector( -0.8, 0, 0 ), Angle( 0, 90, 0 ), "lightbar" },

}

COMPONENT.Sections = {
    ["lightbar"] = {
        [1] = { { 1, "_1" }, },
    },     
}

COMPONENT.Patterns = {
    ["lightbar"] = {
        ["code1CA"] = { 1 },
        ["code2CA"] = { 1 },
        ["code3CA"] = { 1 },
        ["code1"] = { 1, 1, 1, 0, },
        ["code1A"] = { 1, 1, 1, 0, 0, 0, 0, 0, },
        ["code1B"] = { 0, 0, 0, 0, 1, 1, 1, 0 },
        ["code1CHPA"] = { 1 },
        ["code1CHPB"] = { 1 },
        ["code1NYPDA"] = { 1, 1, 1, 1, 0, 0, 0, 0 },
        ["code2NYPDA"] = { 1, 1, 1, 1, 0, 0, 0, 0 },
        ["code3NYPDA"] = { 1, 1, 1, 1, 0, 0, 0, 0 },
        ["code1NYPDB"] = { 0, 0, 0, 0, 1, 1, 1, 1 },
        ["code2NYPDB"] = { 0, 0, 0, 0, 1, 1, 1, 1 },
        ["code3NYPDB"] = { 0, 0, 0, 0, 1, 1, 1, 1 },
        ["code2"] = { 1, 0, 1, 1, 1, 0, 0, 0 },
        ["code2A"] = { 1, 0, 1, 1, 1, 0, 0, 0, 0, 0 },
        ["code2B"] = { 0, 0, 0, 0, 0, 1, 0, 1, 1, 1, },
        ["code2CHPA"] = { 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
        ["code3CHPA"] = { 1, 1, 1, 1, 1, 0, 0, 0, 0, 0 },
        ["code2CHPB"] = { 0, 0, 0, 0, 0, 1, 1, 1, 1, 1 },
        ["code3CHPB"] = { 0, 0, 0, 0, 0, 1, 1, 1, 1, 1 },
        ["code3"] = { 1, 0 },
        ["code3A"] = { 1, 0, 1, 0, 0, 0 },
        ["code3B"] = { 0, 0, 0, 1, 0, 1 },
        ["alert"] = { 1, 0 },
        ["alertA"] = { 0, 1 },
        ["alertB"] = { 1, 0 },
        ["alertCHPA"] = { 0, 1 },
        ["alertCHPB"] = { 1, 0 },
        ["alertNYPDA"] = { 1, 0 },
        ["alertNYPDB"] = { 0, 1 },
        ["alertCA"] = { 1 },
        ["all"] = { 1 },
        ["allA"] = { 1 },
        ["allB"] = { 1 },
    },
}

COMPONENT.TrafficDisconnect = {}

COMPONENT.Modes = {
    Primary = {
            M1 = { --park
                ["lightbar"] = "code1",
            },
            M2 = { -- steadyburn
                ["lightbar"] = "code2",
            },
            M3 = { -- code2
                ["lightbar"] = "code3",
            },
        },
    Auxiliary = {
            C = { 
                },
            L = {},
            R = {},
            D = {},
        },
    Illumination = {
        T = {
        },
        L = {
        },
        R = {
        },
        rear = {
            {1, CW}
        }
    }
}

EMVU:AddAutoComponent( COMPONENT, name )

-- end

--[[-------------------------------------------------------------------------
Title
---------------------------------------------------------------------------]]
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
 
local name = "Fedral Signal Quadflare Illumination Left"
 
local COMPONENT = {}
 
COMPONENT.Model = "models/c3/fed_sig_quadflare/fedsig_quadflare.mdl"
COMPONENT.Skin = 1
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true 
COMPONENT.DefaultColors = {
    [1] = "RED"
}
 
COMPONENT.Meta = {

    whelen600_light = {
        AngleOffset = 0,
        W = 9.8,
        H = 5.5,
        Sprite = "sprites/emv/emv_whelen_600",
        Scale = 2,
        NoLegacy = true,
        DirAxis = "Up",
        DirOffset = 90,
        WMult = 1.5
    },

    

}
 
COMPONENT.Positions = {
    [1] = { Vector( 0.3, 0, 1.3 ), Angle( 0, -90, 0 ), "whelen600_light" },
    [2] = { Vector( .3, 0, -1.1 ), Angle( 0, -90, 0 ), "whelen600_light" },

}
 
COMPONENT.Sections = {
    ["light_main"] = {
        [1] = { 
            { 1, "_1"}, {2,"_1"}
        },
        [2] = {
            {2, "_1" } 
        },
        [3] = {
            {1, "_1" } 
        }
    }
}
 
COMPONENT.Patterns = {
    ["light_main"] = {
        ["code1"] = { 1, 1, 1, 0, 0, 0 },
        ["code2"] = { 1, 1, 0, 0 },
        ["code3"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },

        ["code1A"] = { 0, 0, 0, 1, 1, 1 },
        ["code2A"] = { 0, 0, 1, 1 },
        ["code3A"] = { 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0 },

        ["code1B"] = { 3,3,3,2,2,2 },
        ["code2B"] = { 3,3,2,2},
        ["code3B"] = { 3,0,3,0,3,2,0,2,0,2,3,0,3,0,3,2,2,2,3,2,3,2,3,2,3,2,3,2,1,1,1,2,2,2,3,2,1,2,3,2,1,2,3 },

        ["code1C"] = { 2,2,2,3,3,3 },
        ["code2C"] = { 2,2,3,3},
        ["code3C"] = { 2,0,2,0,2,3,0,3,0,3,2,0,2,0,2,3,3,3,2,3,2,3,2,3,2,3,2,3,1,1,1,3,3,3,2,3,1,3,2,3,1,3,2 },

        ["off"] = {}
    },
}
 
COMPONENT.TrafficDisconnect = {}
 
COMPONENT.Modes = {
    Primary = {
        M1 = {
            ["light_main"] = "off",
        },
        M2 = {
            ["light_main"] = "off",
        },
        M3 = {
            ["light_main"] = "off",
        }
    },
    Auxiliary = {
        L = {

        },
        R = {

        },
        D = {

        },
    },
     Illumination = {
        T = {
        },
        L = {
             {1, CW}, {2,CW}
        },
        R = {
        },
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
 
local name = "Fedral Signal Quadflare Illumination Right"
 
local COMPONENT = {}
 
COMPONENT.Model = "models/c3/fed_sig_quadflare/fedsig_quadflare.mdl"
COMPONENT.Skin = 1
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true 
COMPONENT.DefaultColors = {
    [1] = "RED"
}
 
COMPONENT.Meta = {

    whelen600_light = {
        AngleOffset = 0,
        W = 9.8,
        H = 5.5,
        Sprite = "sprites/emv/emv_whelen_600",
        Scale = 2,
        NoLegacy = true,
        DirAxis = "Up",
        DirOffset = 90,
        WMult = 1.5
    },

    

}
 
COMPONENT.Positions = {
    [1] = { Vector( 0.3, 0, 1.3 ), Angle( 0, -90, 0 ), "whelen600_light" },
    [2] = { Vector( .3, 0, -1.1 ), Angle( 0, -90, 0 ), "whelen600_light" },

}
 
COMPONENT.Sections = {
    ["light_main"] = {
        [1] = { 
            { 1, "_1"}, {2,"_1"}
        },
        [2] = {
            {2, "_1" } 
        },
        [3] = {
            {1, "_1" } 
        }
    }
}
 
COMPONENT.Patterns = {
    ["light_main"] = {
        ["code1"] = { 1, 1, 1, 0, 0, 0 },
        ["code2"] = { 1, 1, 0, 0 },
        ["code3"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },

        ["code1A"] = { 0, 0, 0, 1, 1, 1 },
        ["code2A"] = { 0, 0, 1, 1 },
        ["code3A"] = { 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0 },

        ["code1B"] = { 3,3,3,2,2,2 },
        ["code2B"] = { 3,3,2,2},
        ["code3B"] = { 3,0,3,0,3,2,0,2,0,2,3,0,3,0,3,2,2,2,3,2,3,2,3,2,3,2,3,2,1,1,1,2,2,2,3,2,1,2,3,2,1,2,3 },

        ["code1C"] = { 2,2,2,3,3,3 },
        ["code2C"] = { 2,2,3,3},
        ["code3C"] = { 2,0,2,0,2,3,0,3,0,3,2,0,2,0,2,3,3,3,2,3,2,3,2,3,2,3,2,3,1,1,1,3,3,3,2,3,1,3,2,3,1,3,2 },

        ["off"] = {}
    },
}
 
COMPONENT.TrafficDisconnect = {}
 
COMPONENT.Modes = {
    Primary = {
        M1 = {
            ["light_main"] = "off",
        },
        M2 = {
            ["light_main"] = "off",
        },
        M3 = {
            ["light_main"] = "off",
        }
    },
    Auxiliary = {
        L = {

        },
        R = {

        },
        D = {

        },
    },
     Illumination = {
        T = {
        },
        L = {
        },
        R = {
             {1, CW}, {2,CW}
        },
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
 
local name = "Fedral Signal Quadflare Clear"
 
local COMPONENT = {}
 
COMPONENT.Model = "models/c3/fed_sig_quadflare/fedsig_quadflare.mdl"
COMPONENT.Skin = 2
COMPONENT.Bodygroups = {}
COMPONENT.NotLegacy = true
COMPONENT.UsePhases = true 
COMPONENT.DefaultColors = {
    [1] = "RED",
    [2] = "BLUE"
}
 
COMPONENT.Meta = {

    whelen600_light = {
        AngleOffset = 0,
        W = 9.8,
        H = 5.5,
        Sprite = "sprites/emv/emv_whelen_600",
        Scale = 3,
        NoLegacy = true,
        DirAxis = "Up",
        DirOffset = 90,
        WMult = 2
    },

    

}
 
COMPONENT.Positions = {
    [1] = { Vector( 0.3, 0, 1.3 ), Angle( 0, -90, 0 ), "whelen600_light" },
    [2] = { Vector( .3, 0, -1.1 ), Angle( 0, -90, 0 ), "whelen600_light" },

}
 
COMPONENT.Sections = {
    ["light_main"] = {
        [1] = { 
            { 1, "_1"}, {2,"_2"}
        },
        [2] = {
            {2, "_2" } 
        },
        [3] = {
            {1, "_1" } 
        }
    }
}
 
COMPONENT.Patterns = {
    ["light_main"] = {
        ["code1"] = { 1, 1, 1, 0, 0, 0 },
        ["code2"] = { 1, 1, 0, 0 },
        ["code3"] = { 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0 },

        ["code1A"] = { 0, 0, 0, 1, 1, 1 },
        ["code2A"] = { 0, 0, 1, 1 },
        ["code3A"] = { 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0 },

        ["code1B"] = { 3,3,3,2,2,2 },
        ["code2B"] = { 3,3,2,2},
        ["code3B"] = { 3,0,3,0,3,2,0,2,0,2,3,0,3,0,3,2,2,2,3,2,3,2,3,2,3,2,3,2,1,1,1,2,2,2,3,2,1,2,3,2,1,2,3 },

        ["code1C"] = { 2,2,2,3,3,3 },
        ["code2C"] = { 2,2,3,3},
        ["code3C"] = { 2,0,2,0,2,3,0,3,0,3,2,0,2,0,2,3,3,3,2,3,2,3,2,3,2,3,2,3,1,1,1,3,3,3,2,3,1,3,2,3,1,3,2 },
    },
}
 
COMPONENT.TrafficDisconnect = {}
 
COMPONENT.Modes = {
    Primary = {
        M1 = {
            ["light_main"] = "code1",
        },
        M2 = {
            ["light_main"] = "code2",
        },
        M3 = {
            ["light_main"] = "code3",
        }
    },
    Auxiliary = {
        L = {

        },
        R = {

        },
        D = {

        },
    }
}
 
EMVU:AddAutoComponent( COMPONENT, name )
