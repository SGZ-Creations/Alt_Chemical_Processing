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

if not mods["BigBags"]then
    data:extend({
        {
            type = "int-setting",
            name = "FuelStacks",
            setting_type = "startup",
            default_value = 1,
            order = "1Aae"
        },
    })
    if mods["metal-and-stars"]then
        data:extend({
            {
                type = "int-setting",
                name = "ACPMiranditeAC",
                setting_type = "startup",
                default_value = 1,
                order = "1Aag"
            },
        })
    end
    if mods["slp-dyson-sphere-reworked"]then
        data:extend({
            {
                type = "int-setting",
                name = "ACP_SlpPlasmaC",
                setting_type = "startup",
                default_value = 1,
                order = "1Aah"
            },
        })
    end
    if mods["planetaris-hyarion"]then
        data:extend({
            {
                type = "int-setting",
                name = "ACP_BismuthAC",
                setting_type = "startup",
                default_value = 1,
                order = "1Aai"
            },
        })
    end
    if mods["secretas"]then
        data:extend({
            {
                type = "int-setting",
                name = "ACP_AuricAC",
                setting_type = "startup",
                default_value = 1,
                order = "1Aaj"
            },
        })
    end
end
if mods["Transport_Drones_Continued"] and mods["BigBags"] then
    data:extend({
        {
            type = "int-setting",
            name = "DroneStacksContinued",
            setting_type = "startup",
            default_value = 10,
            order = "1Aaf"
        },
    })
end