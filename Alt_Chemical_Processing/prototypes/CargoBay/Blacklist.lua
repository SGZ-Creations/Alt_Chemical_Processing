---@class LuaSettings
local SS = settings.startup

if mods["cargo-bay-inserters"]and mods["rubia"] then
	if SS["RubiaCargoBayCrash"].value == true then --Due to Rubia version 0.69.130 the mod will force crash your game unless you modify it by adding: "--" to the require code in control stage & data-update to force load your game Starting to be the same D*** as SE author.
		data.raw["mod-data"]["cargo-bay-inserters"].data.surface_name_blacklist["rubia"] = nil
	end
end