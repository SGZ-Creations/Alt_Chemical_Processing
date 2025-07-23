---@class LuaSettings
local SS = settings.startup
---@class data.RecipePrototype 
local Recipe = data.raw["recipe"]
local Item = data.raw.item
local SpaceBobs = mods["bobplates"] and mods["bobrevamp"] and mods["space-age"]

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

if SpaceBobs then
    data:extend({
        {
            type = "recipe",
            name = "foundry-ores",
            category = "metallurgy",
            subgroup = "vulcanus-processes",
            main_product = "bob-cobalt-ore",
            order = "a[ores]",
            allow_productivity = true,
            enabled = false,
            ingredients =
            {
                {type = "fluid", name = "lava", amount = 5500},
                {type = "item", name = "calcite", amount = 11},
            },
            energy_required = 10,
            results = {
                {type="item", name="stone", amount=510},
                {type="item", name="bob-lead-ore", amount=25},
                {type="item", name="bob-bauxite-ore", amount=25},
                {type="item", name="bob-cobalt-ore", amount=25},
                {type="item", name="bob-gold-ore", amount=25},
                {type="item", name="bob-nickel-ore", amount=25},
                {type="item", name="bob-rutile-ore", amount=25},
                {type="item", name="bob-silver-ore", amount=25},
                {type="item", name="bob-tin-ore", amount=25},
                {type="item", name="bob-zinc-ore", amount=25},
                {type="item", name="bob-quartz", amount=25},
            },
        },
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
        }
    })
    if
        Item["bob-gem-ore"] then
        table.insert(Recipe["foundry-ores"].results, {type ="item", name = "bob-gem-ore", amount = 25})
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