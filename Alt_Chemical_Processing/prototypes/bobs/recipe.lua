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
        {
            type = "recipe",
            category = "centrifuging",
            name = "ThoriumPlutoniumEnrichment",
            main_product = "bob-plutonium-239",
            enabled = false,
            subgroup = "bob-nuclear",
            order = "s[bob-plutonium-239]",
            allow_productivity = true,
            allow_decomposition = true,
            energy_required = 10.0,
            ingredients = {
                {type="item", name="bob-thorium-232", amount=5},
                {type="item", name="bob-plutonium-239", amount=10},
            },
            results = {
                {type="item", name="bob-thorium-232", amount=3},
                {type="item", name="bob-plutonium-239", amount=11},
            },
        },
    })
    Item["bob-enriched-fuel"].stack_size = 50
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

function Remove(recipe_name, ingredient_name)
    for i, ingredient in pairs(Recipe[recipe_name].ingredients) do
        if ingredient.name == ingredient_name then
            table.remove(Recipe[recipe_name].ingredients, i)
        elseif ingredient.name == nil then
            log("ERROR.. \""..ingredient_name.."\" had an issue!")
        elseif Recipe[recipe_name] == nil then
            log("ERROR... \""..recipe_name.."\" Had am issue!")
        end
    end
end

if mods["boblogistics"] and not mods["bobplates"] then
    Remove("logistic-science-pack", "transport-belt")
    table.insert(Recipe["logistic-science-pack"].ingredients, {type = "item", name = "bob-basic-transport-belt", amount = 1})
end

if Item["bob-solar-panel-small"] then
    if SS["6ItmsRecipe"].value then
        Remove("utility-science-pack", "bob-solar-panel-small")
    end
end