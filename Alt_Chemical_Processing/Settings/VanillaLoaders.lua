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