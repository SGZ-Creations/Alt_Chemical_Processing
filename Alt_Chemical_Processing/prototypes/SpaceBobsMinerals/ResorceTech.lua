---@class data.TechnologyPrototype
local Tech = data.raw["technology"]


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

if mods["bobplates"] and mods["space-age"] then
    table.insert(Tech["foundry"].effects, {type="unlock-recipe", recipe="VulcanusOres"})
    table.insert(Tech["biochamber"].effects, {type="unlock-recipe", recipe="Glebaores"})
    table.insert(Tech["cryogenic-plant"].effects, {type="unlock-recipe", recipe="AquiloOres"})
end