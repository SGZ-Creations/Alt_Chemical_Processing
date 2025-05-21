local ITEM = data.raw["item"]
local RECIPE = data.raw["recipe"]
local SS = settings.startup
---@settings
if mods["space-age"] then
	if SS["WarmAquilo"].value then
		data.raw.planet["aquilo"].entities_require_heating = false
	end
	if mods["Power-Armour-Replacer"] then
		data.raw["recipe"]["spidertron"].category = "electronics-or-handcrafting"
	end
end

if mods["space-age"] then
	if not mods["BigBags"] then
		data.raw.item["metallic-asteroid-chunk"].stack_size = SS["ACP-metallic-asteroid-chunk"].value
		data.raw.item["carbonic-asteroid-chunk"].stack_size = SS["ACP-carbonic-asteroid-chunk"].value
		data.raw.item["oxide-asteroid-chunk"].stack_size = SS["ACP-oxide-asteroid-chunk"].value
		data.raw.item["promethium-asteroid-chunk"].stack_size = SS["ACP-promethium-asteroid-chunk"].value
	elseif mods["BigBags"] then -- BigBag overwrites my settings making them useless & confusing. but still need to create the stack_size to be avalibe for Bigbags to not default back.
		ITEM["metallic-asteroid-chunk"].stack_size = 50
		ITEM["carbonic-asteroid-chunk"].stack_size = 50
		ITEM["oxide-asteroid-chunk"].stack_size = 50
		ITEM["promethium-asteroid-chunk"].stack_size = 50
	end
end


if mods["space-age"]and not mods["BigBags"] then
	data.raw.item["nuclear-fuel"].stack_size = SS["FuelStacks"].value
elseif mods["BigBags"] then -- BigBag overwrites my settings making them useless & confusing. but still need to create the stack_size to be avalibe for Bigbags to not default back.
	ITEM["nuclear-fuel"].stack_size = 50
end

if mods["space-age"] then
	if SS["BigMiner"].value then
		RECIPE["big-mining-drill"].ingredients = {
			{type = "item", name = "advanced-circuit", amount = 10},
			{type = "item", name = "electric-engine-unit", amount = 10},
			{type = "item", name = "tungsten-carbide", amount = 20},
			{type = "item", name = "electric-mining-drill", amount = 5},
		}
		RECIPE["big-mining-drill"].results = {{type = "item", name = "big-mining-drill", amount = 2}}
	end
end