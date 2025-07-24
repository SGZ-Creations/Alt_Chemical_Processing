---@class data.RecipePrototype
local Recipe = data.raw.recipe
---@class LuaSettings
local SS = settings.startup

if mods["More-Asteroid-Resources-Forked"] then
	Recipe["trace-metallic-crushing"].results = {
		{type = "item", name = "iron-ore", amount = SS["MetallicIron"].value},
		{type = "item", name = "copper-ore", amount = SS["MetallicCopper"].value},
		{type = "item", name = "holmium-ore", amount = SS["MetallicHolmium"].value},
		{type = "item", name = "tungsten-ore", amount = SS["MetallicTungsten"].value}
	}
	Recipe["trace-carbonic-crushing"].results = {
		{type = "item", name = "carbon", amount = SS["CarbonicCarbon"].value},
		{type = "item", name = "sulfur", amount = SS["CarbonicSulfur"].value},
		{type = "item", name = "stone", amount = SS["CarbonicStone"].value},
		{type = "item", name = "uranium-ore", amount = SS["CarbonicUranium"].value}
	}
	Recipe["trace-oxide-crushing"].results = {
		{type = "item", name = "ice", amount = SS["OxideIce"].value},
		{type = "item", name = "calcite", amount = SS["OxideCalcite"].value},
		{type = "item", name = "stone", amount = SS["OxideStone"].value},
		{type = "item", name = "lithium", amount = SS["OxideLithium"].value}
	}
end


if mods["space-age"] and mods["bobplates"] then
	table.insert(Recipe["metallic-asteroid-crushing"].results, {type = "item", name = "bob-tin-ore", amount = 3})
	table.insert(Recipe["metallic-asteroid-crushing"].results, {type = "item", name = "bob-rutile-ore", amount = 3})

	table.insert(Recipe["carbonic-asteroid-crushing"].results, {type = "item", name = "bob-bauxite-ore", amount = 3})
	table.insert(Recipe["carbonic-asteroid-crushing"].results, {type = "item", name = "bob-nickel-ore", amount = 3})

	table.insert(Recipe["oxide-asteroid-crushing"].results, {type = "item", name = "bob-lead-ore", amount = 3})
	table.insert(Recipe["oxide-asteroid-crushing"].results, {type = "item", name = "bob-quartz", amount = 3})

	table.insert(Recipe["advanced-metallic-asteroid-crushing"].results, {type = "item", name = "bob-tin-ore", amount = 5})
	table.insert(Recipe["advanced-metallic-asteroid-crushing"].results, {type = "item", name = "bob-rutile-ore", amount = 5})
	table.insert(Recipe["advanced-metallic-asteroid-crushing"].results, {type = "item", name = "bob-cobalt-ore", amount = 5})
	table.insert(Recipe["advanced-metallic-asteroid-crushing"].results, {type = "item", name = "bob-silver-ore", amount = 5})

	table.insert(Recipe["advanced-carbonic-asteroid-crushing"].results, {type = "item", name = "bob-bauxite-ore", amount = 5})
	table.insert(Recipe["advanced-carbonic-asteroid-crushing"].results, {type = "item", name = "bob-nickel-ore", amount = 5})
	table.insert(Recipe["advanced-carbonic-asteroid-crushing"].results, {type = "item", name = "bob-gold-ore", amount = 5})
	table.insert(Recipe["advanced-carbonic-asteroid-crushing"].results, {type = "item", name = "bob-thorium-ore", amount = 5})

	table.insert(Recipe["advanced-oxide-asteroid-crushing"].results, {type = "item", name = "bob-lead-ore", amount = 5})
	table.insert(Recipe["advanced-oxide-asteroid-crushing"].results, {type = "item", name = "bob-quartz", amount = 5})
	table.insert(Recipe["advanced-oxide-asteroid-crushing"].results, {type = "item", name = "bob-zinc-ore", amount = 5})
end

if mods["More-Asteroid-Resources-Forked"] and mods["bobplates"] then
	table.insert(Recipe["trace-metallic-crushing"].results, {type = "item", name = "bob-tin-ore", amount = 10})
	table.insert(Recipe["trace-metallic-crushing"].results, {type = "item", name = "bob-rutile-ore", amount = 10})
	table.insert(Recipe["trace-metallic-crushing"].results, {type = "item", name = "bob-cobalt-ore", amount = 10})
	table.insert(Recipe["trace-metallic-crushing"].results, {type = "item", name = "bob-silver-ore", amount = 10})

	table.insert(Recipe["trace-carbonic-crushing"].results, {type = "item", name = "bob-bauxite-ore", amount = 10})
	table.insert(Recipe["trace-carbonic-crushing"].results, {type = "item", name = "bob-nickel-ore", amount = 10})
	table.insert(Recipe["trace-carbonic-crushing"].results, {type = "item", name = "bob-gold-ore", amount = 10})
	table.insert(Recipe["trace-carbonic-crushing"].results, {type = "item", name = "bob-thorium-ore", amount = 10})

	table.insert(Recipe["trace-oxide-crushing"].results, {type = "item", name = "bob-lead-ore", amount = 10})
	table.insert(Recipe["trace-oxide-crushing"].results, {type = "item", name = "bob-quartz", amount = 10})
	table.insert(Recipe["trace-oxide-crushing"].results, {type = "item", name = "bob-zinc-ore", amount = 10})
end