local SS = settings.startup
--[[
	local DRR = data.raw.recipe
	table.insert(DRR["utillity-science-pack"].ingredients {
		{type = "item", name = "iron-ore", amount = 1000},
	})
]]


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
	if SS["seed-spoilage"] then
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
	if SS["carbon-steel"]then
		data:extend({
			{
				type = "recipe",
				name = "foundry-carbon-steel",
				category = "metallurgy",
				subgroup = "vulcanus-processes",
				order = "a[carbon-steel]",
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
				order = "b[carbon-steel]",
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
end