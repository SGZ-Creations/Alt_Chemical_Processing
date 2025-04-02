local DRT = data.raw["technology"]

if mods["boblogistics"] and not mods["bobplates"] then
    table.insert(DRT["logistic-science-pack"].effects, {type="unlock-recipe", recipe="basic-logistics-science"})
end

if mods["bobplates"] and mods["bobrevamp"] then
    local fueltech = table.deepcopy(DRT["rocket-fuel"])

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
            ingredients =  {
                {"automation-science-pack",2},
                {"logistic-science-pack",2},
                {"chemical-science-pack",1},
            },
            time = 30
        }
    data:extend{fueltech}

    table.insert(DRT["bob-chemical-processing-2"].effects, {type="unlock-recipe", recipe="carbon-dioxide-sepreation"})

    if mods["space-age"]then
        data:extend({
            {
                type = "technology",
                name = "tungsten-conversions",
                icon = "__space-age__/graphics/technology/tungsten-steel.png",
                icon_size = 64,
                effects = {
                    {
                        type = "unlock-recipe",
                        recipe = "tungsten-conversion-1"
                    },
                    {
                        type = "unlock-recipe",
                        recipe = "tungsten-conversion-2"
                    },
                },
                prerequisites = {"bob-tungsten-processing"},
                research_trigger = {type="mine-entity", entity="bob-tungsten-ore"},
                order = "Armour01"
            }
        })
        table.insert(DRT["tungsten-steel"].effects, {type="unlock-recipe", recipe="bob-foundry-tungsten-plate"})
    end
end