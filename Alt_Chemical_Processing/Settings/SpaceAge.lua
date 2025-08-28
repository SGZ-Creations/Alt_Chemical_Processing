if mods["Wood_Gasification_updated"]and mods["space-age"] then
    data:extend({
        {
            type = "bool-setting",
            name = "yumako-jellynut",
            setting_type = "startup",
            default_value = false,
            order = "1Aba"
        },
    })
end

if mods["space-age"] then
    data:extend({
        {
            type = "bool-setting",
            name = "seed-spoilage",
            setting_type = "startup",
            default_value = false,
            order = "1Abb"
        },
        {
            type = "bool-setting",
            name = "WarmAquilo",
            setting_type = "startup",
            default_value = false,
            order = "1Aca"
        },
        {
            type = "bool-setting",
            name = "CryoRecycle",
            setting_type = "startup",
            default_value = false,
            order = "1Acb"
        },
        {
            type = "int-setting",
            name = "IceCubes",
            setting_type = "startup",
            default_value = 1,
            order = "1Acc"
        },
        {
            type = "int-setting",
            name = "WaterAmount",
            setting_type = "startup",
            default_value = 20,
            order = "1Acd"
        },
        {
            type = "bool-setting",
            name = "carbon-steel",
            setting_type = "startup",
            default_value = false,
            order = "1Afb"
        },
        {
            type = "bool-setting",
            name = "BigMiner",
            setting_type = "startup",
            default_value = false,
            order = "1Afc"
        },
        {
            type = "int-setting",
            name = "SSlowLava",
            setting_type = "startup",
            default_value = 200,
            order = "1Afd"
        },
        {
            type = "int-setting",
            name = "SFastLava",
            setting_type = "startup",
            default_value = 200,
            order = "1Afe"
        },
        {
            type = "bool-setting",
            name = "LavaCraft",
            setting_type = "startup",
            default_value = false,
            order = "1Aff"
        },
        {
            type = "bool-setting",
            name = "QualityArms",
            setting_type = "startup",
            default_value = false,
            order = "1Aga"
        },
        {
            type = "int-setting",
            name = "CollectorArms",
            setting_type = "startup",
            default_value = 1,
            order = "1Agb"
        },
        {
            type = "double-setting",
            name = "CollectorRadius",
            setting_type = "startup",
            default_value = 7.5,
            minimum_value = 0.5,
            order = "1Agb"
        },
        {
            type = "bool-setting",
            name = "QualityLandingPads",
            setting_type = "startup",
            default_value = false,
            order = "1Aha"
        },
        --[[
        {
            type = "int-setting",
            name = "LandingPadCoverage",
            setting_type = "startup",
            default_value = 1,
            order = "1Ahb"
        },
        {
            type = "bool-setting",
            name = "InsertSleep",
            setting_type = "startup",
            default_value = false,
            order = "4Aac"
        },]]
    })
end