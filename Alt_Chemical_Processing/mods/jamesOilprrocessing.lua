local DRR = data.raw.recipe
if mods["bobplates"] and mods["James-Oil-Processing"] then
	DRR["petroleum-gas-sweetening"].results = {
		{type = "fluid", name = "bob-hydrogen-sulfide", amount = 30},
		{type = "fluid", name = "petroleum-gas", amount = 20},
	}
end