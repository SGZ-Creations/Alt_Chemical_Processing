
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

if mods["space-age"] then
    data:extend({
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
            type = "bool-setting",
            name = "BigMiner",
            setting_type = "startup",
            default_value = false,
            order = "1Aag"
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
            order = "3Aaa"
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
})