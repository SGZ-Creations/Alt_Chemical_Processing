---@class data.unit-spawnerPrototype 
local Unit = data.raw["unit-spawner"]
---@class data.AmmoPrototype 
local Ammo = data.raw.ammo
---@class data.SettingsStartup
local SS = settings.startup
---@class data.RecipePrototype 
local Recipe = data.raw["recipe"]

if mods["space-age"] and mods["bobenemies"] then
	if SS["bobmods-enemies-enableartifacts"] and SS["bobmods-enemies-enablenewartifacts"] then
		table.insert(Recipe["biter-egg"].results, {type= "item", name="bob-alien-artifact", amount=5})
		table.insert(Recipe["biter-egg"].results, {type= "item", name="bob-alien-artifact-red", amount=5})
		table.insert(Recipe["biter-egg"].results, {type= "item", name="bob-alien-artifact-orange", amount=5})
		table.insert(Recipe["biter-egg"].results, {type= "item", name="bob-alien-artifact-yellow", amount=5})
		table.insert(Recipe["biter-egg"].results, {type= "item", name="bob-alien-artifact-green", amount=5})
		table.insert(Recipe["biter-egg"].results, {type= "item", name="bob-alien-artifact-blue", amount=5})
		table.insert(Recipe["biter-egg"].results, {type= "item", name="bob-alien-artifact-purple", amount=5})
	end
end