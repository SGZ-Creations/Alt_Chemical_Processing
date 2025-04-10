
if mods["Wood_Gasification_updated"]and mods["space-age"] then
    data:extend({
        {
            type = "bool-setting",
            name = "yumako-jellynut",
            setting_type = "startup",
            default_value = false,
            order = "2Caa"
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
            order = "4Aaa"
        },
        {
            type = "bool-setting",
            name = "SAgeLoaders",
            setting_type = "startup",
            default_value = false,
            order = "4Aab"
        },
    })
end

if mods["space-age"] then
    data:extend({
        {
            type = "bool-setting",
            name = "WarmAquilo",
            setting_type = "startup",
            default_value = false,
            order = "11aa"
        },
        {
            type = "bool-setting",
            name = "seed-spoilage",
            setting_type = "startup",
            default_value = false,
            order = "2Cab"
        },
        {
            type = "bool-setting",
            name = "carbon-steel",
            setting_type = "startup",
            default_value = false,
            order = "2Cac"
        },
        {
            type = "int-setting",
            name = "SSlowLava",
            setting_type = "startup",
            default_value = 200,
            order = "1Aae"
        },
        {
            type = "int-setting",
            name = "SFastLava",
            setting_type = "startup",
            default_value = 200,
            order = "1Aaf"
        },
        {
            type = "bool-setting",
            name = "LavaCraft",
            setting_type = "startup",
            default_value = false,
            order = "1Aag"
        },
        {
            type = "int-setting",
            name = "IceCubes",
            setting_type = "startup",
            default_value = 1,
            order = "1Aah"
        },
        {
            type = "int-setting",
            name = "WaterAmount",
            setting_type = "startup",
            default_value = 20,
            order = "1Aai"
        },
        {
            type = "bool-setting",
            name = "BigMiner",
            setting_type = "startup",
            default_value = false,
            order = "3Aab"
        },
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

data:extend({
    {
        type = "bool-setting",
        name = "iron-utillity",
        setting_type = "startup",
        default_value = false,
        order = "5Aaa"
    },
    {
        type = "bool-setting",
        name = "LiquidCoal",
        setting_type = "startup",
        default_value = false,
        order = "3Aaa"
    },
})