---@class data.TechnologyPrototype
local Tech = data.raw["technology"]
local SS = settings.startup

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
    table.insert(Tech["kovarex-enrichment-process"].effects, {type="unlock-recipe", recipe="ThoriumPlutoniumEnrichment"})
    if not mods["TIMSABA"]then
        if mods["space-age"]then
            table.insert(Tech["bob-chemical-processing-2"].effects, {type="unlock-recipe", recipe="CalciumChloride"})
        end
    end
end