Lab = data.raw.lab
if mods["ScienceCostTweakerM"] and mods["bobtech"] then
    table.insert(Lab["lab"].inputs, "logistic-science-pack")
	table.insert(Lab["bob-lab-2"].inputs, "logistic-science-pack")
end