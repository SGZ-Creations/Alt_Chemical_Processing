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