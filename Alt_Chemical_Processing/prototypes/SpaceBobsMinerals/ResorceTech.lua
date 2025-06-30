local Scraping = mods["space-age"] and mods["scrap-reprocessor"] and mods["bobplates"] and mods["bobrevamp"]

if Scraping then
	data:extend({
		{
			type = "technology",
			name = "acp-scrap-reprocessing",
			icon_size = 256,
			icon = "__scrap-reprocessor__/graphics/icons/chemical-stager-icon-technology.png",
			effects = {
				{
					type = "unlock-recipe",
					recipe = "acp_electronic-scrap-processing"
				},
				{
					type = "unlock-recipe",
					recipe = "acp_metallic-scrap-processing"
				},
				{
					type = "unlock-recipe",
					recipe = "acp_architectural-scrap-processing"
				}
			},
			prerequisites = {"sr-scrap-reprocessing"},
			research_trigger = {type = "craft-fluid", fluid = "sr-mineral-slurry", amount = 10000},
		}
	})
end