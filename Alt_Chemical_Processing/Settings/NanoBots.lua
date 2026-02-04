if mods["nanobots-refined"] then
    data:extend({
        {
            type = "bool-setting",
            name = "EasyNanoTech",
            setting_type = "startup",
            default_value = false,
            order = "3Cad"
        },
    })
end

if mods["Nanobots3"] then
    data:extend({
        {
            type = "bool-setting",
            name = "FreeNanobots",
            setting_type = "startup",
            default_value = false,
            order = "3Cad"
        },
    })
end