---@class LuaSettings
local SS = settings.startup
---@class data.RecipePrototype
local Recipe = data.raw["recipe"]
local Scraping = mods["space-age"] and mods["scrap-reprocessor"] and mods["bobplates"] and mods["bobrevamp"]
--[[
if mods["space-age"] and mods["bobplates"] then
	Recipe["scrap-recycling"].results = {
		{type = "item", name = "ice",								amount = SS["Ice"].value, 							probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "steel-plate",						amount = SS["Steel"].value, 						probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "battery",							amount = SS["Battery"].value, 						probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "bob-silver-zinc-battery",			amount = SS["SilverZincBattery"].value, 			probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "bob-lithium-ion-battery",			amount = SS["LithiumIonBattery"].value, 			probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "bob-advanced-processing-unit",		amount = SS["AdvanceedProcessingUnit"].value, 		probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "processing-unit",					amount = SS["ProcessingUnit"].value, 				probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "advanced-circuit",					amount = SS["AdvancedCircuit"].value, 				probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "electronic-circuit",				amount = SS["ElectronicCircuit"].value, 			probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "low-density-structure",				amount = SS["LowDensity"].value, 					probability = 0.05, show_details_in_recipe_tooltip = false},
		{type = "item", name = "holmium-ore",						amount = SS["HolmiumOre"].value, 					probability = 0.05, show_details_in_recipe_tooltip = false},
	}
end]]


if Scraping then
	data:extend({
		{
			type = "recipe",
			name = "acp_electronic-scrap-recycling",
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
				{type = "item", name = "sr-electronic-scrap", amount = 10},
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
			name = "acp_metallic-scrap-recycling",
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
				{type = "item", name = "sr-metallic-scrap", amount = 10},
				{type = "fluid", name = "water", amount = 8}
			},
			results = {
				{type = "item", name = "", amount_min = 1, amount_max = 10, probability = 0.25, show_details_in_recipe_tooltip = false},
			},
			allow_productivity = true
		},
		{
			type = "recipe",
			name = "acp_architectural-scrap-recycling",
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
				{type = "item", name = "sr-architectural-scrap", amount = 10},
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