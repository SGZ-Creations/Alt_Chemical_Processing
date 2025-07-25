---@class data.RecipePrototype
local Recipe = data.raw.recipe

local SpaceBobs = mods["bobplates"] and mods["bobrevamp"] and mods["space-age"]


if SpaceBobs then
	data:extend({
        {
            type = "recipe",
            name = "bob-foundry-tungsten-plate",
            category = "metallurgy",
            subgroup = "bob-alloy",
            order = "c-b-d[bob-tungsten]",
            enabled = false,
            allow_productivity = true,
            energy_required = 10,
            ingredients = {
                {type = "item", name = "bob-powdered-tungsten", amount = 4},
                {type = "item", name = "bob-nickel-plate", amount = 1},
            },
            results = {{type="item", name="tungsten-plate", amount=5}},
        },
	})
end


if mods["boblogistics"] and mods["space-age"] then
    Recipe["express-transport-belt"].category = "pressing"
    Recipe["express-underground-belt"].category = "pressing"
    Recipe["express-splitter"].category = "pressing"

    Recipe["bob-turbo-transport-belt"].category = "pressing"
    Recipe["bob-turbo-underground-belt"].category = "pressing"
    Recipe["bob-turbo-splitter"].category = "pressing"

    Recipe["bob-ultimate-transport-belt"].category = "pressing"
    Recipe["bob-ultimate-underground-belt"].category = "pressing"
    Recipe["bob-ultimate-splitter"].category = "pressing"

    Recipe["bob-red-bulk-inserter"].category = "electronics-or-handcrafting"

    Recipe["bob-turbo-inserter"].category = "electronics-or-handcrafting"
    Recipe["bob-turbo-bulk-inserter"].category = "electronics-or-handcrafting"

    Recipe["bob-express-inserter"].category = "electronics-or-handcrafting"
    Recipe["bob-express-bulk-inserter"].category = "electronics-or-handcrafting"
end