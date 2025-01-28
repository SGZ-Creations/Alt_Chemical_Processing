local fueltech = table.deepcopy(data.raw.technology["rocket-fuel"])
local DRT = data.raw.technology

fueltech.name = "rocket-fuel-2"
fueltech.effects = {
    {
        type = "unlock-recipe",
        recipe = "rocket-fuel-from-solid-fuel"
    },
    {
        type = "unlock-recipe",
        recipe = "rocket-fuel-from-enriched-fuel"
    }
}
fueltech.prerequisites = {"rocket-fuel",}
    fueltech.unit = {
        count = 300,
        ingredients =
        {
            {"automation-science-pack",2},
            {"logistic-science-pack",2},
            {"chemical-science-pack",1},
        },
        time = 30
    }

data:extend{fueltech}

table.insert(DRT["bob-chemical-processing-2"].effects, {type="unlock-recipe", recipe="carbon-dioxide-sepreation"})