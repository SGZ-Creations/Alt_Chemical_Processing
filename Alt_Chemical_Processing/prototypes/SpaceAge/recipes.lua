---@class data.SettingsStartup
local SS = settings.startup
---@class data.RecipePrototype 
local Recipe = data.raw["recipe"]

if mods["space-age"]then
	Recipe["ice-melting"].ingredients = {{type = "item", name = "ice", amount = SS["IceCubes"].value}}
	Recipe["ice-melting"].results = {{type = "fluid", name = "water", amount = SS["WaterAmount"].value}}
	Recipe["ice-melting"].category = "chemistry-or-cryogenics"
	data:extend({
		{
			type = "recipe",
			name = "ice-cubes",
			category = "chemistry-or-cryogenics",
			icon = "__space-age__/graphics/icons/fluid/ice-melting.png",
			order = "d[other-chemisty]-d[ice-melting]",
			subgroup = "fluid-recipes",
			enabled = false,
			energy_required = 10,
			ingredients = {{type = "fluid", name = "water", amount =SS["WaterAmount"].value}},
			results = {{type = "item", name = "ice", amount =SS["IceCubes"].value}}
		}
	})
end

if mods["space-age"] then
	if SS["seed-spoilage"].value then
		data:extend({
			{
				type = "recipe",
				name = "spoiled-seed",
				enabled = false,
				energy_required = 10,
				ingredients = {{type = "item", name = "tree-seed", amount = 10}},
				results = {{type = "item", name = "spoilage", amount = 1}}
			},
		})
	end
	data:extend({
		{
			type = "recipe",
			name = "fed-fish",
			category = "organic",
			enabled = false,
			energy_required = 10,
			ingredients = {
				{type = "item", name = "yumako", amount = 5},
				{type = "item", name = "jellynut", amount = 5},
			},
			results = {{type = "item", name = "raw-fish", amount = 5}}
		},
	})
	if SS["carbon-steel"].value then
		data:extend({
			{
				type = "recipe",
				name = "foundry-carbon-steel",
				category = "metallurgy",
				subgroup = "vulcanus-processes",
				order = "ac[carbon-steel]",
				allow_productivity = true,
				enabled = false,
				ingredients =
				{
					{type = "item", name = "iron-ore", amount = 100},
					{type = "item", name = "carbon", amount = 75},
				},
				energy_required = 10,
				results = {{type="item", name="steel-plate", amount=200}},
			},
			{
				type = "recipe",
				name = "foundry-carbon-steel-plate",
				category = "metallurgy",
				subgroup = "vulcanus-processes",
				order = "ad[carbon-steel]",
				allow_productivity = true,
				enabled = false,
				ingredients =
				{
					{type = "item", name = "iron-plate", amount = 100},
					{type = "item", name = "carbon", amount = 75},
				},
				energy_required = 10,
				results = {{type="item", name="steel-plate", amount=200}},
			},
		})
	end
	if SS["LavaCraft"].value then
		data:extend({
			{
				type = "recipe",
				name = "slow-lava",
				category = "metallurgy",
				subgroup = "vulcanus-processes",
				order = "aa[fluid]-c[vulcanus]-b[lava]",
				enabled = false,
				allow_productivity = true,
				energy_required = 120,
				ingredients = {{type = "item", name = "stone", amount = 1000}},
				results = {{type="fluid", name="lava", amount= SS["SSlowLava"].value}},
			},
			{
				type = "recipe",
				name = "fast-lava",
				category = "metallurgy",
				subgroup = "vulcanus-processes",
				order = "ab[fluid]-c[vulcanus]-b[lava]",
				allow_productivity = true,
				enabled = false,
				energy_required = 90,
				ingredients = {{type = "item", name = "stone", amount = 1000}},
				results = {{type="fluid", name="lava", amount= SS["SFastLava"].value}},
			},
			{
				type = "recipe",
				name = "lava-calcite",
				category = "metallurgy",
				subgroup = "vulcanus-processes",
				order = "calcite",
				enabled = false,
				allow_productivity = true,
				energy_required = 10,
				ingredients = {{type = "fluid", name = "lava", amount = 100}},
				results = {{type="item", name="calcite", amount= 25}},
			},
		})
	end
	if mods["Configurable_Landfill"]then
		data:extend({
			{
				type = "recipe",
				name = "casted-space-foundation",
				category = "metallurgy",
				subgroup = "space-platform",
				order = "a[space-platform-foundation]",
				enabled = false,
				allow_productivity = true,
				energy_required = 10,
				ingredients = {
					{type = "fluid", name = "molten-iron", amount = 1000},
					{type = "fluid", name = "molten-copper", amount = 200}
				},
				results = {{type="item", name="space-platform-foundation", amount= SS["space-platform-foundation-results"].value}},
			},
		})
	elseif not mods["Configurable_Landfill"] then
		data:extend({
			{
				type = "recipe",
				name = "casted-space-foundation",
				category = "metallurgy",
				subgroup = "space-platform",
				order = "a[space-platform-foundation]",
				enabled = false,
				allow_productivity = true,
				energy_required = 10,
				ingredients = {
					{type = "fluid", name = "molten-iron", amount = 1000},
					{type = "fluid", name = "molten-copper", amount = 200}
				},
				results = {{type="item", name="space-platform-foundation", amount= 1}},
			},
		})
	end
	if SS["CryoRecycle"].value then
		data:extend({
			{
				type = "recipe",
				name = "recycle-craft-cryo",
				category = "cryogenics",
				subgroup = "science-pack",
				order = "k",
				enabled = false,
				allow_productivity = true,
				energy_required = 10,
				ingredients = {{type = "item", name = "cryogenic-science-pack", amount = 5}},
				results = {{type="item", name="cryogenic-science-pack", amount= 1}},
			},
		})
	end
end