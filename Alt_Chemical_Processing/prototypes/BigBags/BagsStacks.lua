---@class data.ItemPrototype
local Item = data.raw["item"]
---@class data.SettingsStartup
local SS = settings.startup


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

if mods["metal-and-stars"] then
	if not mods["BigBags"] then
		Item["mirandite-asteroid-chunk"].stack_size = SS["ACP-mirandite-asteroid-chunk"].value
	elseif mods["BigBags"] then -- BigBag overwrites my settings making them useless & confusing. but still need to create the stack_size to be available for Bigbags to not default back.
		Item["mirandite-asteroid-chunk"].stack_size = 50
	end
	--elseif Item["mirandite-asteroid-chunk"] == nil then return end
end