--[[
data:extend({
	{
        type = "item-group",
        name = "",
        icon = "",
        icon_size = 64,
        order = "ca",
    },
})

if mods["quality"] then
    data:extend({
        {
            type = "item-group",
            name = "Modules",
            icon = "__quality__/graphics/technology/module.png",
            icon_size = 256,
            order = "zz",
        },
    })
end]]