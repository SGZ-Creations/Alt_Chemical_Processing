
local solidfuelrecipe = table.deepcopy(data.raw.recipe["rocket-fuel"])

solidfuelrecipe.ingredients[#solidfuelrecipe.ingredients+1] = {
    type = "item",
    name = "solid-fuel",
    amount = 10,
    order = "pa"
}


solidfuelrecipe.name = "rocket-fuel-from-solid-fuel"
solidfuelrecipe.results_count= 5

local fuelrecipe = table.deepcopy(data.raw.recipe["rocket-fuel"])

fuelrecipe.ingredients[#fuelrecipe.ingredients+1] = {
    type = "item",
    name = "bob-enriched-fuel",
    amount = 20,
    recipe = "pb"
}
fuelrecipe.name = "rocket-fuel-from-enriched-fuel"
fuelrecipe.results_count= 10
data:extend{solidfuelrecipe,fuelrecipe}

local recipes = {
    {
        type = "recipe",
        category = "chemistry",
        name = "carbon-dioxide-sepreation",
        icon = "__bobplates__/graphics/icons/oxygen.png",
        enabled = false,
        total_raw = true,
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
}
data:extend(recipes)