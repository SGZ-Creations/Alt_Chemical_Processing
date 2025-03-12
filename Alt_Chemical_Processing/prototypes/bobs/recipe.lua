local DRI = data.raw.item

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
    DRI["bob-enriched-fuel"].stack_size = 50

    if mods["space-age"] then
    data:extend({
        {
            type = "recipe",
            name = "tungsten-conversion-1",
            enabled = false,
            energy_required = 1.0,
            subgroup = "bob-ores",
            order = "b-d[bob-tungsten-ore]",
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="bob-tungsten-ore", amount=1},
            },
            results = {{type="item", name="tungsten-ore", amount=1}},
        },
        {
            type = "recipe",
            name = "tungsten-conversion-2",
            enabled = false,
            energy_required = 1.0,
            subgroup = "bob-ores",
            order = "b-d[bob-tungsten-ore]",
            hide_from_player_crafting = true,
            ingredients = {
                {type="item", name="bob-tungsten-ore", amount=100},
            },
            results = {{type="item", name="tungsten-ore", amount=100}},
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
        },
    })
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