local solidfuelrecipe = table.deepcopy(data.raw.recipe["rocket-fuel"])

solidfuelrecipe.normal.ingredients[#solidfuelrecipe.normal.ingredients+1] = {
    type = "item",
    name = "solid-fuel",
    amount = 10,
    order = "pa"
}

solidfuelrecipe.expensive.ingredients[#solidfuelrecipe.normal.ingredients+1] = {
    type = "item",
    name = "solid-fuel",
    amount = 20,
    order = "pa"
}

solidfuelrecipe.name = "rocket-fuel-from-solid-fuel"
solidfuelrecipe.normal.result_count= 5
solidfuelrecipe.expensive.result_count= 5

local fuelrecipe = table.deepcopy(data.raw.recipe["rocket-fuel"])

fuelrecipe.normal.ingredients[#fuelrecipe.normal.ingredients+1] = {
    type = "item",
    name = "enriched-fuel",
    amount = 20,
    recipe = "pb"
}

fuelrecipe.expensive.ingredients[#fuelrecipe.normal.ingredients+1] = {
    type = "item",
    name = "enriched-fuel",
    amount = 40,
    order = "pb"
}

fuelrecipe.name = "rocket-fuel-from-enriched-fuel"
fuelrecipe.normal.result_count= 10
fuelrecipe.expensive.result_count= 10
data:extend{solidfuelrecipe,fuelrecipe}