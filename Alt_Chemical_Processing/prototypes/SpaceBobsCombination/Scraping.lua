---@class LuaSettings
local SS = settings.startup
---@class data.RecipePrototype
local Recipe = data.raw["recipe"]
---@class data.ItemPrototype
local Item = data.raw.item
local Scraping = mods["space-age"] and mods["scrap-reprocessor"] and mods["bobplates"] and mods["bobrevamp"]

if mods["space-age"] and mods["bobplates"] then
	Recipe["scrap-recycling"].results = {
		{type = "item", name = "ice",								amount = SS["ScrapIce"].value, 							probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "holmium-ore",						amount = SS["ScrapHolmiumOre"].value, 					probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "steel-plate",						amount = SS["ScrapSteel"].value, 						probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "low-density-structure",				amount = SS["ScrapLowDensity"].value, 					probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "electronic-circuit",				amount = SS["ScrapElectronicCircuit"].value, 			probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "advanced-circuit",					amount = SS["ScrapAdvancedCircuit"].value, 				probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "processing-unit",					amount = SS["ScrapProcessingUnit"].value, 				probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "bob-advanced-processing-unit",		amount = SS["ScrapAdvancedProcessingUnit"].value, 		probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "battery",							amount = SS["ScrapBattery"].value, 						probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "bob-silver-zinc-battery",			amount = SS["ScrapSilverZincBattery"].value, 			probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "bob-lithium-ion-battery",			amount = SS["ScrapLithiumIonBattery"].value, 			probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "bob-glass", 						amount = SS["ScrapGlass"].value,						probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "bob-tin-plate", 					amount = SS["ScrapTin"].value, 							probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "bob-silver-plate", 					amount = SS["ScrapSilver"].value, 						probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "bob-lead-plate", 					amount = SS["ScrapLead"].value, 						probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "bob-gold-plate", 					amount = SS["ScrapGold"].value, 						probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "bob-zinc-plate", 					amount = SS["ScrapZinc"].value, 						probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "bob-silicon-plate",					amount = SS["ScrapSilicon"].value, 						probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "bob-nickel-plate", 					amount = SS["ScrapNickel"].value, 						probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "bob-aluminium-plate", 				amount = SS["ScrapAluminium"].value, 					probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "bob-titanium-plate", 				amount = SS["ScrapTitanium"].value, 					probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "bob-cobalt-steel-alloy", 			amount = SS["ScrapCobaltSteel"].value, 					probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "bob-heat-shield-tile", 				amount = SS["ScrapHeatShield"].value,					probability = 0.05, show_details_in_recipe_tooltip = false},
	}
	if Item["bob-gem-ore"] then
		table.insert(Recipe["scrap-recycling"].results,	{type = "item", name = "bob-gem-ore",amount = SS["ScrapGemsOre"].value, probability = 0.05, show_details_in_recipe_tooltip = false})
	end
end

if Scraping then
	data:extend({
		{
			type = "recipe",
			name = "acp_electronic-scrap-processing",
			icons = {
				{icon = "__quality__/graphics/icons/recycling.png"},
				{icon = "__space-age__/graphics/icons/scrap.png", scale = 0.4},
				{icon = "__base__/graphics/icons/processing-unit.png", shift = {4, 4}, scale = 0.2},
				{icon = "__quality__/graphics/icons/recycling-top.png"}
			},
			category = "reprocessor",
			subgroup = "fulgora-processes",
			order = "a[trash]-c[electronic-scrap-reprocessing]",
			surface_conditions = {{property = "magnetic-field", min = 99, max = 99}},
			enabled = false,
			auto_recycle = false,
			energy_required = 1,
			ingredients = {
				{type = "item", name = "sr-electronic-scrap", amount = 1},
				{type = "fluid", name = "water", amount = 8}
			},
			results = {
				{type = "item", name = "bob-advanced-processing-unit",      amount_min = 5, amount_max = 10, probability = 0.1, show_details_in_recipe_tooltip = false},
				{type = "item", name = "electronic-circuit",      			amount_min = 40, amount_max = 50, probability = 0.1, show_details_in_recipe_tooltip = false},
				{type = "item", name = "bob-silver-zinc-battery",			amount_min = 4, amount_max = 8, probability = 0.2, show_details_in_recipe_tooltip = false},
				{type = "item", name = "bob-lithium-ion-battery",			amount_min = 8, amount_max = 16, probability = 0.2, show_details_in_recipe_tooltip = false},
			},
			allow_productivity = true
		},
		{
			type = "recipe",
			name = "acp_metallic-scrap-processing",
			icons = {
				{icon = "__quality__/graphics/icons/recycling.png"},
				{icon = "__space-age__/graphics/icons/scrap.png"},
				{icon = "__base__/graphics/icons/steel-plate.png", shift = {4, 4}, scale = 0.2},
				{icon = "__quality__/graphics/icons/recycling-top.png"}
			},
			category = "reprocessor",
			subgroup = "fulgora-processes",
			order = "a[trash]-d[metallic-scrap-reprocessing]",
			surface_conditions = {{property = "magnetic-field", min = 99, max = 99}},
			enabled = false,
			auto_recycle = false,
			energy_required = 1,
			ingredients = {
				{type = "item", name = "sr-metallic-scrap", amount = 1},
				{type = "fluid", name = "water", amount = 8}
			},
			results = {
				{type = "item", name = "bob-glass", amount_min = 2, amount_max = 10, probability = 0.20, show_details_in_recipe_tooltip = false},
				{type = "item", name = "bob-tin-plate", amount_min = 3, amount_max = 10, probability = 0.15, show_details_in_recipe_tooltip = false},
				{type = "item", name = "bob-silver-plate", amount_min = 1, amount_max = 10, probability = 0.25, show_details_in_recipe_tooltip = false},
				{type = "item", name = "bob-lead-plate", amount_min = 1, amount_max = 10, probability = 0.25, show_details_in_recipe_tooltip = false},
				{type = "item", name = "bob-gold-plate", amount_min = 2, amount_max = 10, probability = 0.20, show_details_in_recipe_tooltip = false},
				{type = "item", name = "bob-zinc-plate", amount_min = 1, amount_max = 10, probability = 0.25, show_details_in_recipe_tooltip = false},
				{type = "item", name = "bob-silicon-plate", amount_min = 3, amount_max = 10, probability = 0.15, show_details_in_recipe_tooltip = false},
				{type = "item", name = "bob-nickel-plate", amount_min = 2, amount_max = 10, probability = 0.20, show_details_in_recipe_tooltip = false},
				{type = "item", name = "bob-aluminium-plate", amount_min = 2, amount_max = 10, probability = 0.20, show_details_in_recipe_tooltip = false},
				{type = "item", name = "bob-titanium-plate", amount_min = 2, amount_max = 10, probability = 0.20, show_details_in_recipe_tooltip = false},
				{type = "item", name = "bob-cobalt-steel-alloy", amount_min = 1, amount_max = 10, probability = 0.25, show_details_in_recipe_tooltip = false},
			},
			allow_productivity = true
		},
		{
			type = "recipe",
			name = "acp_architectural-scrap-processing",
			icons = {
				{icon = "__quality__/graphics/icons/recycling.png"},
				{icon = "__space-age__/graphics/icons/scrap.png"},
				{icon = "__base__/graphics/icons/low-density-structure.png", shift = {4, 4}, scale = 0.2},
				{icon = "__quality__/graphics/icons/recycling-top.png"}
			},
			category = "reprocessor",
			subgroup = "fulgora-processes",
			order = "a[trash]-e[architectural-scrap-reprocessing]",
			surface_conditions = {{property = "magnetic-field", min = 99, max = 99}},
			enabled = false,
			auto_recycle = false,
			energy_required = 1,
			ingredients = {
				{type = "item", name = "sr-architectural-scrap", amount = 1},
				{type = "fluid", name = "water", amount = 8}
			},
			results = {
				{type = "item", name = "bob-rtg", amount_min = 1, amount_max = 10, probability = 0.25, show_details_in_recipe_tooltip = false},
				{type = "item", name = "bob-heat-shield-tile", amount_min = 1, amount_max = 10, probability = 0.25, show_details_in_recipe_tooltip = false},
			},
			allow_productivity = true
		},
	})
end