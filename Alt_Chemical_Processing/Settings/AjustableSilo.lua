if mods["space-age"] then
	if mods["bobrevamp"] and mods["bobplates"] and mods["bobtech"] then
		data:extend({
			{
				type = "bool-setting",
				name = "SimpleSilo",
				setting_type = "startup",
				default_value = false,
				order = "6Aac"
			},
		})
	end
end