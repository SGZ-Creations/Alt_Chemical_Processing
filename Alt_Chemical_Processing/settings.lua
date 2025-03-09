
if mods["Wood_Gasification_updated"]and mods["space-age"] then
    data:extend({
        {
            type = "bool-setting",
            name = "yumako-jellynut",
            setting_type = "startup",
            default_value = true,
            order = "1Baa"
        },
    })
end

if mods["space-age"] then
    data:extend({
        {
            type = "bool-setting",
            name = "seed-spoilage",
            setting_type = "startup",
            default_value = true,
            order = "1Bab"
        },
        {
            type = "bool-setting",
            name = "carbon-steel",
            setting_type = "startup",
            default_value = true,
            order = "1Bac"
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
    })
end

if mods["AtomicArtillery2"] then
    data:extend({
        {
            type = "bool-setting",
            name = "NawArtilleryRecipe",
            setting_type = "startup",
            default_value = true,
            order = "2Aaa"
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