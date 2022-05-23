local fueltech = table.deepcopy(data.raw.technology["rocket-fuel"])
fueltech.name = "rocket-fuel-bob_alt"
fueltech.effects = {{type = "unlock-recipe", recipe = "rocket-fuel-from-solid-fuel"},{type = "unlock-recipe", recipe = "rocket-fuel-from-enriched-fuel"}}
fueltech.prerequisites = {"rocket-fuel", "hydrazine", "solid-fuel"}
fueltech.unit = 
    {
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