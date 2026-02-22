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
		Item["mirandite-asteroid-chunk"].stack_size = SS["ACPMiranditeAC"].value
	elseif mods["BigBags"] then -- BigBag overwrites my settings making them useless & confusing. but still need to create the stack_size to be available for Bigbags to not default back.
		Item["mirandite-asteroid-chunk"].stack_size = 50
	end
end

if mods["slp-dyson-sphere-reworked"] then
	if not mods["BigBags"] then
		Item["slp-plasma-chunk"].stack_size = SS["ACP_SlpPlasmaC"].value
	elseif mods["BigBags"] then -- BigBag overwrites my settings making them useless & confusing. but still need to create the stack_size to be available for Bigbags to not default back.
		Item["slp-plasma-chunk"].stack_size = 50
	end
end

if mods["planetaris-hyarion"] then
	if not mods["BigBags"] then
		Item["bismuth-asteroid-chunk"].stack_size = SS["ACP_BismuthAC"].value
	elseif mods["BigBags"] then -- BigBag overwrites my settings making them useless & confusing. but still need to create the stack_size to be available for Bigbags to not default back.
		Item["bismuth-asteroid-chunk"].stack_size = 50
	end
end

if mods["secretas"] then
	if not mods["BigBags"] then
		Item["auric-asteroid-chunk"].stack_size = SS["ACP_AuricAC"].value
	elseif mods["BigBags"] then -- BigBag overwrites my settings making them useless & confusing. but still need to create the stack_size to be available for Bigbags to not default back.
		Item["auric-asteroid-chunk"].stack_size = 50
	end
end