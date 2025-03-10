local SS = settings.startup
if mods["Wood_Gasification_updated"]and mods["space-age"] then
	data:extend({
		{
			type = "recipe",
			name = "nutrient-yumako-seed",
			order = "ab[yumako-seed]",
			subgroup = "agriculture-processes",
			--icon = "",
			enabled = false,
			energy_required = 2,
			ingredients = {
				{type = "item", name = "yumako-seed", amount = 10},
			},
			results = {
				{type = "item", name = "nutrients", amount = 5},
			}
		},
		{
			type = "recipe",
			name = "nutrient-jellynut-seed",
			order = "ab[yumako-seed]",
			subgroup = "agriculture-processes",
			--icon = "",
			enabled = false,
			energy_required = 2,
			ingredients = {
				{type = "item", name = "jellynut-seed", amount = 10},
			},
			results = {
				{type = "item", name = "nutrients", amount = 5},
			}
		},
	})
	if SS["yumako-jellynut"].value == true then
		data:extend({
			{
				type = "recipe",
				name = "no-pressure-yumako",
				category = "R-greenhouse",
				order = "ab[2-yumako]",
				subgroup = "agriculture-processes",
				icon = "__space-age__/graphics/icons/yumako-processing.png",
				enabled = false,
				show_amount_in_title = true,
				energy_required = 10,
				ingredients = {
					{type = "fluid", name = "water", amount = 100},
					{type = "item", name = "yumako-seed", amount = 2},
				},
				results = {
					{type = "item", name = "yumako-seed", amount = 10, probability = 0.25},
					{type = "item", name = "spoilage", amount = 10, probability = 0.5},
					{type = "item", name = "yumako", amount = 10},
				}
			},
			{
				type = "recipe",
				name = "no-pressure-jellynut",
				category = "R-greenhouse",
				order = "ab[3-jellynut]",
				subgroup = "agriculture-processes",
				icon = "__space-age__/graphics/icons/jellynut-processing.png",
				enabled = false,
				show_amount_in_title = true,
				energy_required = 10,
				ingredients = {
					{type = "fluid", name = "water", amount = 100},
					{type = "item", name = "jellynut-seed", amount = 2},
				},
				results = {
					{type = "item", name = "jellynut-seed", amount = 10, probability = 0.25},
					{type = "item", name = "spoilage", amount = 10, probability = 0.5},
					{type = "item", name = "jellynut", amount = 10},
				}
			},
		})
	end
end