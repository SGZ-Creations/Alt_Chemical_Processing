local DRI = data.raw.item
DRI["bob-enriched-fuel"].stack_size = 50
local recipes = {
    {
        type = "recipe",
        category = "chemistry",
        name = "carbon-dioxide-sepreation",
        icon = "__bobplates__/graphics/icons/oxygen.png",
        enabled = false,
        total_raw = true,
        subgroup = "fluid",
        order = "a[fluid]-g[carbon-dixoide]",
        allow_productivity = true,
        energy_required = 10.0,
        ingredients = {
            {type="fluid", name="carbon-dioxide", amount=25},
        },
        results = {
            {type="item", name="bob-carbon", amount=1},
            {type="fluid", name="bob-oxygen", amount=25}
        },
        allow_decomposition = true,
    },
    {
        type = "recipe",
        category = "chemistry",
        name = "rocket-fuel-from-solid-fuel",
        icon = "__base__/graphics/icons/rocket-fuel.png",
        enabled = false,
        total_raw = true,
        subgroup = "bob-chemical-fuels",
        order = "d[rocket-parts]-c[rocket-fuel]",
        allow_productivity = true,
        energy_required = 10.0,
        ingredients = {
            {type="item", name="solid-fuel", amount=10},
            {type="fluid", name="hydrazine", amount=140},
            {type="fluid", name="dinitrogen-tetroxide", amount=80}
        },
        results = {
            {type="item", name="rocket-fuel", amount=10},
        },
        allow_decomposition = true,
    },
    {
        type = "recipe",
        category = "chemistry",
        name = "rocket-fuel-from-enriched-fuel",
        icon = "__base__/graphics/icons/rocket-fuel.png",
        enabled = false,
        total_raw = true,
        subgroup = "bob-chemical-fuels",
        order = "d[rocket-parts]-d[rocket-fuel]",
        allow_productivity = true,
        energy_required = 10.0,
        ingredients = {
            {type="item", name="bob-enriched-fuel", amount=10},
            {type="fluid", name="dinitrogen-tetroxide", amount=80}
        },
        results = {
            {type="item", name="rocket-fuel", amount=20},
        },
        allow_decomposition = true,
    },
}
data:extend(recipes)