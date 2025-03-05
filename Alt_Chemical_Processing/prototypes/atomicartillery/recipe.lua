local SS = settings.startup

if mods["AtomicArtillery2"] then
	if SS["NawArtilleryRecipe"].value then
		data:extend({
			{
				type = "recipe",
				name = "atomic-artillery-bullet",
				enabled = false,
				energy_required = 20,
				ingredients =
				{
					{type = "item", name = "atomic-bomb", amount = 1},
					{type = "item", name = "artillery-shell", amount = 1},
				},
				results = {{type = "item", name = "atomic-artillery-shell", amount = 1}}
			}
		})
		--[[
		local DRR = data.raw.recipe
		table.insert(DRR["atomic-artillery-shell"].ingredients {
			{type = "item", name = "atomic-bomb", amount = 1},
			{type = "item", name = "artillery-shell", amount = 4},
			{type = "item", name = "processing-unit", amount = 3},
			{type = "item", name = "radar", amount = 1}
		})
		]]
	end
end