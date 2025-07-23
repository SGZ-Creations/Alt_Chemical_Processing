---@class data.ItemPrototype
local Item = data.raw["item"]
---@class data.RecipePrototype
local Recipe = data.raw["recipe"]
---@class data.EntityPrototype
local Collector = data.raw["asteroid-collector"]
---@class data.SettingsStartup
local SS = settings.startup
---@class data.QualityPrototype
local Quality = data.raw["quality"]


if mods["space-age"] then
	if SS["WarmAquilo"].value then
		data.raw.planet["aquilo"].entities_require_heating = false
	end
	if SS["QualityArms"].value == true then
		Collector["asteroid-collector"].arm_count_quality_scaling = 0
		Collector["asteroid-collector"].arm_count_base = SS["CollectorArms"].value
		Collector["asteroid-collector"].collection_radius = SS["CollectorRadius"].value
		for name, quality in pairs(Quality) do
			quality.asteroid_collector_collection_radius_bonus = 0
		end
	end
end

if mods["space-age"] then
	if not mods["BigBags"] then
		Item["metallic-asteroid-chunk"].stack_size = SS["ACP-metallic-asteroid-chunk"].value
		Item["carbonic-asteroid-chunk"].stack_size = SS["ACP-carbonic-asteroid-chunk"].value
		Item["oxide-asteroid-chunk"].stack_size = SS["ACP-oxide-asteroid-chunk"].value
		Item["promethium-asteroid-chunk"].stack_size = SS["ACP-promethium-asteroid-chunk"].value
	elseif mods["BigBags"] then -- BigBag overwrites my settings making them useless & confusing. but still need to create the stack_size to be available for Bigbags to not default back.
		Item["metallic-asteroid-chunk"].stack_size = 50
		Item["carbonic-asteroid-chunk"].stack_size = 50
		Item["oxide-asteroid-chunk"].stack_size = 50
		Item["promethium-asteroid-chunk"].stack_size = 50
	end
end

if mods["space-age"]and not mods["BigBags"] then
	Item["nuclear-fuel"].stack_size = SS["FuelStacks"].value
elseif mods["BigBags"] then -- BigBag overwrites my settings making them useless & confusing. but still need to create the stack_size to be available for Bigbags to not default back.
	Item["nuclear-fuel"].stack_size = 50
end

if mods["space-age"] then
	if SS["BigMiner"].value then
		Recipe["big-mining-drill"].ingredients = {
			{type = "item", name = "advanced-circuit", amount = 10},
			{type = "item", name = "electric-engine-unit", amount = 10},
			{type = "item", name = "tungsten-carbide", amount = 20},
			{type = "item", name = "electric-mining-drill", amount = 5},
		}
		Recipe["big-mining-drill"].results = {{type = "item", name = "big-mining-drill", amount = 2}}
	end
end

--[[
if mods["space-age"] then
	data.raw["inserter"]["stack-insert"].wait_for_full_hand = SS["InsertSleep"].value
end
- Added StackInserter deep sleep Setting. This setting is highly suggested to keep off/default as I was told it can fuck badly with your stack inserters. 
]]