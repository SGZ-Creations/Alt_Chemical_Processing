---@class data.RecipePrototype
local Recipe = data.raw.recipe
---@class LuaSettings
local SS = settings.startup

if mods["More-Asteroid-Resources-Forked"]then
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