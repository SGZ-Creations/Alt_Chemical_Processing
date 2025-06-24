
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

if mods["vanilla-loaders-hd"]and mods["boblogistics"] then
    data:extend({
        {
            type = "bool-setting",
            name = "CheaperLoaders",
            setting_type = "startup",
            default_value = false,
            order = "6Aaa"
        },
        {
            type = "bool-setting",
            name = "SAgeLoaders",
            setting_type = "startup",
            default_value = false,
            order = "6Aab"
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
            default_value = 50,
            order = "1Agb"
        },
        --[[{
            type = "bool-setting",
            name = "InsertSleep",
            setting_type = "startup",
            default_value = false,
            order = "4Aac"
        },]]
    })
end
if mods["space-age"] and not mods["BigBags"] then
    data:extend({
        --StackSizeSettings
        {
            type = "int-setting",
            name = "ACP-metallic-asteroid-chunk",
            setting_type = "startup",
            default_value = 1,
            order = "1Aaa"
        },
        {
            type = "int-setting",
            name = "ACP-carbonic-asteroid-chunk",
            setting_type = "startup",
            default_value = 1,
            order = "1Aab"
        },
        {
            type = "int-setting",
            name = "ACP-oxide-asteroid-chunk",
            setting_type = "startup",
            default_value = 1,
            order = "1Aac"
        },
        {
            type = "int-setting",
            name = "ACP-promethium-asteroid-chunk",
            setting_type = "startup",
            default_value = 1,
            order = "1Aad"
        },
        {
            type = "int-setting",
            name = "FuelStacks",
            setting_type = "startup",
            default_value = 1,
            order = "1Aae"
        },
    })
end

if mods["AtomicArtillery2"] then
    data:extend({
        {
            type = "bool-setting",
            name = "NawArtilleryRecipe",
            setting_type = "startup",
            default_value = false,
            order = "3Caa"
        },
    })
end

if mods["StoneWaterWell-ActuallyUpdated"] and mods["space-age"] then
    data:extend({
        {
            type = "double-setting",
            name = "WaterWellPressureMin",
            setting_type = "startup",
            default_value = 1000,
            order = "3Cab"
        },
        {
            type = "double-setting",
            name = "WaterWellPressureMax",
            setting_type = "startup",
            default_value = 2000,
            order = "3Cac"
        },
    })
end

data:extend({
    {
        type = "bool-setting",
        name = "LiquidCoal",
        setting_type = "startup",
        default_value = false,
        order = "1Afa"
    },
    {
        type = "bool-setting",
        name = "CliffRemovalService",
        setting_type = "startup",
        default_value = false,
        order = "5Yab"
    },
    {
        type = "double-setting",
        name = "ExplosiveRange",
        setting_type = "startup",
        default_value = 10,
        minimum_value = 0.1,
        order = "5Yab"
    },
    {
        type = "double-setting",
        name = "ExplosiveRadius",
        setting_type = "startup",
        default_value = 1.5,
        minimum_value = 0.1,
        order = "5Yac"
    },
    {
        type = "bool-setting",
        name = "iron-utillity",
        setting_type = "startup",
        default_value = false,
        order = "5Zaa"
    },
})