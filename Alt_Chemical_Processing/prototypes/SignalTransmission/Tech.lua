local Tech = data.raw["technology"]

if mods["aai-signal-transmission"] and mods["pypostprocessing"] then
	Tech["aai-signal-transmission"].prerequisites = {"automation-science-pack"}
	Tech["aai-signal-transmission"].unit.ingredients = {{"automation-science-pack", 1}}
end