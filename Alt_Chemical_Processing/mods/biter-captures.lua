local DRA = data.raw.ammo
local DRUS = data.raw["unit-spawner"]
if mods["ArmouredBiters"]then
	table.insert(DRA["capture-robot-rocket"].ammo_type.target_filter, "armoured-biter-spawner")
	DRUS["armoured-biter-spawner"].captured_spawner_entity = "captive-biter-spawner"
end