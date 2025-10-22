---@class data.RecipePrototype
local Recipe = data.raw.recipe
---@class LuaSettings
local SS = settings.startup


if mods["metal-and-stars"] then
	table.insert(Recipe[""].resuilt)

	if SS["WarmNix"].value then
		data.raw.planet["Nix"].entities_require_heating = false
	end
end