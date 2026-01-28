Lab = data.raw.lab
if mods["ScienceCostTweakerM"] and mods["bobtech"] then
    table.insert(Lab["lab"].inputs, "logistics-science-pack")
	table.insert(Lab["bob-lab-2"].inputs, "logistics-science-pack")
end