if mods["Teleporters"]then
    data:extend({
        {
            type = "bool-setting",
            name = "ScienceExtension",
            setting_type = "startup",
            default_value = false,
            order = "1Aae"
        },
    })
end