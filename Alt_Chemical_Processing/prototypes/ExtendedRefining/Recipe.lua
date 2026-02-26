---@class data.SettingsStartup
local SS = settings.startup
---@class data.RecipePrototype 
local Recipe = data.raw["recipe"]

if mods["ev-refining"] and mods["space-age"] then
	if Recipe["steel-dust-smelting"] then
		Recipe["steel-dust-smelting"].category = "SmeltingOrFoundry"
	end
end