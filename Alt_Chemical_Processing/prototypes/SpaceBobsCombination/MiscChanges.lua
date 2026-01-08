---@class data.RecipePrototype
local Recipe = data.raw.recipe
---@class data.TechnologyPrototype
local Tech = data.raw["technology"]
---@class LuaSettings
local SS = settings.startup
---@class data.LabPrototype
local LAB = data.raw.lab
local SpaceBobs = mods["bobplates"] and mods["bobrevamp"] and mods["space-age"]
local SpaceBobsMining = mods["bobplates"] and mods["bobmining"] and mods["space-age"]

if SpaceBobsMining then
    Tech["bob-steel-axe-4"].research_trigger = {type ="craft-item", item ="tungsten-plate", amount = 50}
end

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
    if mods["bobmining"] then
        if SS["BigMinerBobs"].value then
            Recipe["big-mining-drill"].ingredients = {
                {type = "item", name = "superconductor", amount = 20},
                {type = "item", name = "carbon-fiber", amount = 20},
                {type = "item", name = "bob-mining-drill-4", amount = 5},
            }
            Recipe["big-mining-drill"].results = {{type = "item", name = "big-mining-drill", amount = 1}}
            Tech["big-mining-drill"].prerequisites = {"bob-drills-5", "foundry"}
        end
    end
end


if mods["boblogistics"] and mods["space-age"] then
    if SS["bobmods-logistics-beltoverhaul"].value == true then
        data:extend({
            {
                type = "recipe",
                name = "ACP_BasicBelt",
                category = "pressing",
                subgroup = "bob-logistic-tier-0",
                order = "a",
                enabled = false,
                allow_productivity = true,
                energy_required = 10,
                ingredients = {
                    {type = "fluid", name = "molten-iron", amount = 30},
                },
                results = {{type="item", name="bob-basic-transport-belt", amount=2}},
            },
            {
                type = "recipe",
                name = "ACP_BasicUnderGround",
                category = "pressing",
                subgroup = "bob-logistic-tier-0",
                order = "b",
                enabled = false,
                allow_productivity = true,
                energy_required = 10,
                ingredients = {
                    {type = "fluid", name = "molten-iron", amount = 150},
                    {type = "fluid", name = "lava", amount = 200},
                },
                results = {{type="item", name="bob-basic-underground-belt", amount=5}},
            },
            {
                type = "recipe",
                name = "ACP_BasicSplitter",
                category = "pressing",
                subgroup = "bob-logistic-tier-0",
                order = "c",
                enabled = false,
                allow_productivity = true,
                energy_required = 10,
                ingredients = {
                    {type = "fluid", name = "molten-iron", amount = 170},
                    {type = "fluid", name = "molten-copper", amount = 20},
                },
                results = {{type="item", name="bob-basic-splitter", amount=5}},
            },
        })
        if mods["vanilla-loaders-hd"]then
            data:extend({
                {
                    type = "recipe",
                    name = "ACP_BasicLoader",
                    category = "pressing",
                    subgroup = "bob-logistic-tier-0",
                    order = "d",
                    enabled = false,
                    allow_productivity = true,
                    energy_required = 10,
                    ingredients = {
                        {type = "fluid", name = "molten-iron", amount = 600},
                        {type = "fluid", name = "molten-copper", amount = 40},
                        {type = "fluid", name = "lava", amount = 400},
                    },
                    results = {{type="item", name="bob-basic-loader", amount=5}},
                },
            })
        end
    end
end

if mods["boblogistics"] and mods["space-age"] then
    if SS["bobmods-logistics-beltoverhaul"].value == true then
        Recipe["transport-belt"].category = "pressing"
        Recipe["underground-belt"].category = "pressing"
        Recipe["splitter"].category = "pressing"

        Recipe["fast-transport-belt"].category = "pressing"
        Recipe["fast-underground-belt"].category = "pressing"
        Recipe["fast-splitter"].category = "pressing"

        Recipe["express-transport-belt"].category = "pressing"
        Recipe["express-underground-belt"].category = "pressing"
        Recipe["express-splitter"].category = "pressing"

        Recipe["bob-turbo-transport-belt"].category = "pressing"
        Recipe["bob-turbo-underground-belt"].category = "pressing"
        Recipe["bob-turbo-splitter"].category = "pressing"

        Recipe["bob-ultimate-transport-belt"].category = "pressing"
        Recipe["bob-ultimate-underground-belt"].category = "pressing"
        Recipe["bob-ultimate-splitter"].category = "pressing"
    end
    if SS["bobmods-logistics-inserteroverhaul"].value == true then
        Recipe["bob-red-bulk-inserter"].category = "electronics-or-handcrafting"

        Recipe["bob-turbo-inserter"].category = "electronics-or-handcrafting"
        Recipe["bob-turbo-bulk-inserter"].category = "electronics-or-handcrafting"

        Recipe["bob-express-inserter"].category = "electronics-or-handcrafting"
        Recipe["bob-express-bulk-inserter"].category = "electronics-or-handcrafting"
    end
end