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
			ingredients = {{type = "item", name = "iron-ore", amount = 1000}},
			results = {{type = "item", name = "utility-science-pack", amount = 5}}
		}
	})
end