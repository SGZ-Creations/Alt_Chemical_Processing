if script.active_mods["space_age"] then
	if script_trigger_research["build-entity"]["tree-plant"] then
		game.player.force.technologies["GotSeeds"].researched = true
	end
end