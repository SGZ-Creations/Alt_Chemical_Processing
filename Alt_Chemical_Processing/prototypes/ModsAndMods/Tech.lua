---@class data.TechnologyPrototype
Tech = data.raw.technology
---@class data.SettingsStartup
local SS = settings.startup

if mods["god-module"] then
	if mods["space-age"] then
		if SS["god-module-recipe-require-quality"].value == true and SS["god-module-easier-craft"].value == false then
			table.insert(Tech["god-module"].prerequisites, "quality-module-3")
		elseif SS["god-module-recipe-require-quality"].value == true and SS["god-module-easier-craft"].value == true then
			table.insert(Tech["god-module"].prerequisites, "quality-module-2")
		end
	end
end