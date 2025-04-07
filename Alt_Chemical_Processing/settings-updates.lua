if mods["Better_Robots_Extended"] then
    data:extend({
        {
            type = "int-setting",
            name = "BRE-logistic-radius-mk2",
            order = "ea",
            setting_type = "startup",
            default_value = 50,
            minimum_value = 25,
            maximum_value = 500
        },
        {
            type = "int-setting",
            name = "BRE-logistic-radius-mk3",
            order = "ec",
            setting_type = "startup",
            default_value = 100,
            minimum_value = 25,
            maximum_value = 1000
        },
        {
            type = "int-setting",
            name = "BRE-construction-radius-mk2",
            order = "eb",
            setting_type = "startup",
            default_value = 110,
            minimum_value = 55,
            maximum_value = 500
        },
        {
            type = "int-setting",
            name = "BRE-construction-radius-mk3",
            order = "ed",
            setting_type = "startup",
            default_value = 250,
            minimum_value = 50,
            maximum_value = 1000
        },
    })
end