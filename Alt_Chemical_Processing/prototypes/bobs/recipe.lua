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
    if mods["bobmining"] then
        if SS["BigMiner"].value then
            Recipe["big-mining-drill"].ingredients = {
                {type = "item", name = "superconductor", amount = 20},
                {type = "item", name = "carbon-fiber", amount = 20},
                {type = "item", name = "bob-mining-drill-4", amount = 2},
            }
            Recipe["big-mining-drill"].results = {{type = "item", name = "big-mining-drill", amount = 1}}
        end
    end
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

if mods["bobplates"] and mods["bobrevamp"]and mods["space-age"] then
    data:extend({
        {
            type = "recipe",
            category = "chemistry-or-cryogenics",
            name = "CalciumChloride",
            enabled = false,
            subgroup = "bob-resource-chemical",
            order = "f[bob-calcium-chloride]",
            allow_productivity = true, 
            allow_decomposition = true,
            energy_required = 10.0,
            ingredients = {
                {type="fluid", name="bob-chlorine", amount=10},
                {type="item", name="calcite", amount=1},
            },
            results = {
                {type="item", name="bob-calcium-chloride", amount=1},
            },
        },
    })
    Recipe["carbon-dioxide-sepreation"].category = "chemistry-or-cryogenics"
    Recipe["rocket-fuel-from-solid-fuel"].category = "chemistry-or-cryogenics"
    Recipe["rocket-fuel-from-enriched-fuel"].category = "chemistry-or-cryogenics"
end