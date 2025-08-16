if mods["bobeenmies"] then
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