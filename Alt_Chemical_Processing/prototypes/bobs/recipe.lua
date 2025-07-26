---@class LuaSettings
local SS = settings.startup
---@class data.RecipePrototype 
local Recipe = data.raw.recipe
---@class data.ItemPrototype
local Item = data.raw.item

if mods["bobplates"] and mods["bobrevamp"] then
    data:extend({
        {
            type = "recipe",
            category = "chemistry",
            name = "carbon-dioxide-sepreation",
            icon = "__bobplates__/graphics/icons/oxygen.png",
            enabled = false,
            subgroup = "fluid",
            order = "a[fluid]-g[carbon-dixoide]",
            allow_productivity = true,
            allow_decomposition = true,
            energy_required = 10.0,
            ingredients = {
                {type="fluid", name="bob-carbon-dioxide", amount=25},
            },
            results = {
                {type="item", name="bob-carbon", amount=1},
                {type="fluid", name="bob-oxygen", amount=25}
            },
        },
        {
            type = "recipe",
            category = "chemistry",
            name = "rocket-fuel-from-solid-fuel",
            icon = "__base__/graphics/icons/rocket-fuel.png",
            enabled = false,
            subgroup = "bob-chemical-fuels",
            order = "d[rocket-parts]-c[rocket-fuel]",
            allow_productivity = true,
            allow_decomposition = true,
            energy_required = 10.0,
            ingredients = {
                {type="item", name="solid-fuel", amount=10},
                {type="fluid", name="bob-hydrazine", amount=140},
                {type="fluid", name="bob-dinitrogen-tetroxide", amount=80}
            },
            results = {
                {type="item", name="rocket-fuel", amount=10},
            },
        },
        {
            type = "recipe",
            category = "chemistry",
            name = "rocket-fuel-from-enriched-fuel",
            icon = "__base__/graphics/icons/rocket-fuel.png",
            enabled = false,
            subgroup = "bob-chemical-fuels",
            order = "d[rocket-parts]-d[rocket-fuel]",
            allow_productivity = true,
            allow_decomposition = true,
            energy_required = 10.0,
            ingredients = {
                {type="item", name="bob-enriched-fuel", amount=10},
                {type="fluid", name="bob-dinitrogen-tetroxide", amount=80}
            },
            results = {
                {type="item", name="rocket-fuel", amount=20},
            },
        },
    })
    Item["bob-enriched-fuel"].stack_size = 50
end


if mods["boblogistics"] and not mods["bobplates"] then
    data:extend({
        {
            type = "recipe",
            name = "basic-logistics-science",
            subgroup = "science-pack",
            order = "b[logistics-sciecnce-pack]",
            enabled = false,
            allow_productivity = true,
            energy_required = 10,
            ingredients = {
                {type = "item", name = "inserter", amount = 1},
                {type = "item", name = "bob-basic-transport-belt", amount = 1},
            },
            results = {{type="item", name="logistic-science-pack", amount=1}},
        },
    })
end