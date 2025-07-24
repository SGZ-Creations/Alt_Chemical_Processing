---@class LuaSettings
local SS = settings.startup
---@class data.RecipePrototype 
local Recipe = data.raw.recipe
---@class data.ItemPrototype
local Item = data.raw.item


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
        {
            type = "recipe",
            name = "VulcanusOres",
            category = "metallurgy",
            subgroup = "bob-ores",
            icon = "__space-age__/graphics/icons/vulcanus.png",
            order = "zz[ores]",
            allow_productivity = true,
            enabled = false,
            ingredients =
            {
                {type = "fluid", name = "lava", amount = 5500},
                {type = "item", name = "calcite", amount = 15},
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
            name = "Glebaores",
            category = "organic",
            subgroup = "bob-ores",
            icon = "__space-age__/graphics/icons/gleba.png",
            order = "zz[ores]",
            allow_productivity = true,
            enabled = false,
            ingredients =
            {
                {type = "fluid", name = "water", amount = 1000},
                {type = "item", name = "stone", amount = 15},
            },
            energy_required = 10,
            results = {
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
            name = "AquiloOres",
            category = "cryogenics",
            subgroup = "bob-ores",
            icon = "__space-age__/graphics/icons/aquilo.png",
            order = "zz[ores]",
            allow_productivity = true,
            enabled = false,
            ingredients =
            {
                {type = "fluid", name = "ammoniacal-solution", amount = 1000},
                {type = "fluid", name = "fluorine", amount = 1000},
                {type = "fluid", name = "crude-oil", amount = 1000},
                {type = "item", name = "ice", amount = 15},
            },
            energy_required = 10,
            results = {
                {type="item", name="holmium-ore", amount=25},
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
    })
    if
        Item["bob-gem-ore"] then
        table.insert(Recipe["VulcanusOres"].results, {type ="item", name = "bob-gem-ore", amount = 25})
        table.insert(Recipe["Glebaores"].results, {type ="item", name = "bob-gem-ore", amount = 25})
        table.insert(Recipe["AquiloOres"].results, {type ="item", name = "bob-gem-ore", amount = 25})
    end
end