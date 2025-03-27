local SS = settings.startup
--[[
	local DRR = data.raw.recipe
	table.insert(DRR["utillity-science-pack"].ingredients {
		{type = "item", name = "iron-ore", amount = 1000},
	})
]]

data.raw.recipe["ice-melting"].ingredients = {{type = "item", name = "ice", amount = SS["IceCubes"].value}}
data.raw.recipe["ice-melting"].results = {{type = "fluid", name = "water", amount = SS["WaterAmount"].value}}

if SS["iron-utillity"].value then
	data:extend({
		{
			type = "recipe",
			name = "iron-ore-utillity",
			enabled = false,
			energy_required = 10,
            allow_productivity = true,
			ingredients = {{type = "item", name = "iron-ore", amount = 1000}},
			results = {{type = "item", name = "utility-science-pack", amount = 5}}
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
				ingredients = {
					{type = "item", name = "stone", amount = 1000},
				},
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
				ingredients = {
					{type = "item", name = "stone", amount = 1000},
				},
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
				ingredients = {
					{type = "fluid", name = "lava", amount = 100},
				},
				results = {{type="item", name="calcite", amount= 25}},
			},
		})
	end
end