---@class data.TechnologyPrototype
local Tech = data.raw["technology"]
---@class LuaSettings
local SS = settings.startup

if mods["boblogistics"] and not mods["bobplates"] then
    table.insert(Tech["logistic-science-pack"].effects, {type="unlock-recipe", recipe="basic-logistics-science"})
end

if SS["bobmods-enemies-enableartifacts"] then
	if mods["bobenemies"] and mods["reskins-bobs"] and mods["SaltedFish"] then
        table.insert(Tech["bob-artifact-processing"].effects, {type="unlock-recipe", recipe="ArtifactRed"})
        table.insert(Tech["bob-artifact-processing"].effects, {type="unlock-recipe", recipe="ArtifactOrange"})
        table.insert(Tech["bob-artifact-processing"].effects, {type="unlock-recipe", recipe="ArtifactYellow"})
        table.insert(Tech["bob-artifact-processing"].effects, {type="unlock-recipe", recipe="ArtifactGreen"})
        table.insert(Tech["bob-artifact-processing"].effects, {type="unlock-recipe", recipe="ArtifactBlue"})
        table.insert(Tech["bob-artifact-processing"].effects, {type="unlock-recipe", recipe="ArtifactPurple"})
    end
end
if mods["bobplates"] and mods["bobrevamp"] then
    local fueltech = table.deepcopy(Tech["rocket-fuel"])

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

    table.insert(Tech["bob-chemical-processing-2"].effects, {type="unlock-recipe", recipe="carbon-dioxide-sepreation"})

    if mods["space-age"]then
        table.insert(Tech["bob-chemical-processing-2"].effects, {type="unlock-recipe", recipe="CalciumChloride"})
        table.insert(Tech["bob-tungsten-processing"].effects, {type="unlock-recipe", recipe="tungsten-conversion-1"})
        table.insert(Tech["bob-tungsten-processing"].effects, {type="unlock-recipe", recipe="tungsten-conversion-2"})
        table.insert(Tech["tungsten-steel"].effects, {type="unlock-recipe", recipe="bob-foundry-tungsten-plate"})
        if SS["BigMiner"].value then
            if mods["bobmining"]then
                Tech["big-mining-drill"].prerequisites = {"bob-drills-5", "foundry"}
            end
        end
    end
end