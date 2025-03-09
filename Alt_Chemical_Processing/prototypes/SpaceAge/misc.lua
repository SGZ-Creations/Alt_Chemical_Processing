local DRI = data.raw.item
local SS = settings.startup

if mods["space-age"]and not mods["BigBags"] then
	DRI["metallic-asteroid-chunk"].stack_size = SS["ACP-metallic-asteroid-chunk"].value
	DRI["carbonic-asteroid-chunk"].stack_size = SS["ACP-carbonic-asteroid-chunk"].value
	DRI["oxide-asteroid-chunk"].stack_size = SS["ACP-oxide-asteroid-chunk"].value
	DRI["promethium-asteroid-chunk"].stack_size = SS["ACP-promethium-asteroid-chunk"].value
elseif mods["BigBags"] then -- BigBag overwrites my setting making them useless & confusing. but still need to create the stack_size to be avalibe for Bigbags to not default back.
	DRI["metallic-asteroid-chunk"].stack_size = 50
	DRI["carbonic-asteroid-chunk"].stack_size = 50
	DRI["oxide-asteroid-chunk"].stack_size = 50
	DRI["promethium-asteroid-chunk"].stack_size = 50
end
