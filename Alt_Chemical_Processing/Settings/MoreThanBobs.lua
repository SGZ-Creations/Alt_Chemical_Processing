if mods["bobenemies"]and mods["reskins-bobs"] and mods["SaltedFish"] then
	data:extend({
		{
			type = "bool-setting",
			name = "OptionalArtifactCrafting",
			setting_type = "startup",
			default_value = false,
			order = "6Aad"
		},
	})
end

data:extend({
	{
		type = "bool-setting",
		name = "6ItmsRecipe",
		setting_type = "startup",
		default_value = false,
		order = "6Aae"
	},
})