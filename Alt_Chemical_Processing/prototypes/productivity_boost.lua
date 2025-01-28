local productivity_recipes = {
    "rocket-fuel-from-solid-fuel",
    "rocket-fuel-from-enriched-fuel",
	"carbon-dioxide-sepreation"
}

for _, module in pairs(data.raw.module) do
	if module.limitation
		and module.effect
		and module.effect.productivity
		and module.effect.productivity.bonus and module.effect.productivity.bonus > 0
	then
		local limitation = module.limitation
		for _, recipe in pairs(productivity_recipes) do
			table.insert(limitation, recipe)
		end
	end
end