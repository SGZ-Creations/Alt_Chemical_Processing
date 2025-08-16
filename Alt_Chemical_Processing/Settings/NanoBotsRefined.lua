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