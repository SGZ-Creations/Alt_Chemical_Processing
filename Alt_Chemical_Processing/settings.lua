
if mods["Wood_Gasification_updated"]and mods["space-age"] then
    data:extend({
        {
            type = "bool-setting",
            name = "yumako-jellynut",
            setting_type = "startup",
            default_value = true,
            order = "1Aaa"
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
            order = "1Aab"
        },
        {
            type = "bool-setting",
            name = "carbon-steel",
            setting_type = "startup",
            default_value = true,
            order = "1Aac"
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