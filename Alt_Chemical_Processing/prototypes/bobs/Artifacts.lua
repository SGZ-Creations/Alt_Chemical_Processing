---@class LuaSettings
local SS = settings.startup

if SS["bobmods-enemies-enableartifacts"] then
	if mods["bobenemies"] and mods["SaltedFish"] and mods["Power-Armour-Replacer"] then
		data:extend({
			{
				type = "recipe",
				category = "",
				name = "carbon-dioxide-sepreation",
				icon = "__bobplates__/graphics/icons/oxygen.png",
				enabled = false,
				--subgroup = "",
				--order = "",
				allow_productivity = true,
				allow_decomposition = true,
				energy_required = 10.0,
				ingredients = {
					{type="fluid", name="bob-carbon-dioxide", amount=25},
					{type="item", name="sulfur", amount=25},
					{type="item", name="salt", amount=25},
				},
				results = {
					{type="item", name="artifact", amount=10},
				},
			},
		})
	end
end