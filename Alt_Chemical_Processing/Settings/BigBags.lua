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
        --StackSizeSettings
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
                name = "ACP-mirandite-asteroid-chunk",
                setting_type = "startup",
                default_value = 1,
                order = "1Aaf"
            },
        })
    end
end