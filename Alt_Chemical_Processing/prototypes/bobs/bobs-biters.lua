local DRA = data.raw.ammo
local DRR = data.raw.recipe
local DRUS = data.raw["unit-spawner"]
local SS = settings.startup

if mods["space-age"] and mods["bobenemies"] then
	--DRA["capture-robot-rocket"].ammo_type.target_filter["spitter-spawner"].hidden = true
	--DRA["capture-robot-rocket"].ammo_type.target_filter, "biter-spawner" = hidden true
	if SS["bobmods-enemies-enableartifacts"] and SS["bobmods-enemies-enablenewartifacts"] then
		table.insert(DRR["biter-egg"].results, {type= "item", name="bob-alien-artifact", amount=5})
		table.insert(DRR["biter-egg"].results, {type= "item", name="bob-alien-artifact-red", amount=5})
		table.insert(DRR["biter-egg"].results, {type= "item", name="bob-alien-artifact-orange", amount=5})
		table.insert(DRR["biter-egg"].results, {type= "item", name="bob-alien-artifact-yellow", amount=5})
		table.insert(DRR["biter-egg"].results, {type= "item", name="bob-alien-artifact-green", amount=5})
		table.insert(DRR["biter-egg"].results, {type= "item", name="bob-alien-artifact-blue", amount=5})
		table.insert(DRR["biter-egg"].results, {type= "item", name="bob-alien-artifact-purple", amount=5})
		--vanilla version with bob prefix. vanilla version turned dummy.
		table.insert(DRA["capture-robot-rocket"].ammo_type.target_filter, "bob-spitter-spawner")
		DRUS["bob-spitter-spawner"].captured_spawner_entity = "captive-biter-spawner"
		--vanilla version with bob prefix. vanilla version turned dummy.
		table.insert(DRA["capture-robot-rocket"].ammo_type.target_filter, "bob-biter-spawner")
		DRUS["bob-biter-spawner"].captured_spawner_entity = "captive-biter-spawner"

		table.insert(DRA["capture-robot-rocket"].ammo_type.target_filter, "bob-0-biter-spawner")
		DRUS["bob-0-biter-spawner"].captured_spawner_entity = "captive-biter-spawner"

		table.insert(DRA["capture-robot-rocket"].ammo_type.target_filter, "bob-0-spitter-spawner")
		DRUS["bob-0-spitter-spawner"].captured_spawner_entity = "captive-biter-spawner"

		table.insert(DRA["capture-robot-rocket"].ammo_type.target_filter, "bob-super-spawner")
		DRUS["bob-super-spawner"].captured_spawner_entity = "captive-biter-spawner"
	end
end