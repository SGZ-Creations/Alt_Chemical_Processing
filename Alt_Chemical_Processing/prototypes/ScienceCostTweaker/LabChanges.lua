Lab = data.raw.lab
if mods["ScienceCostTweakerM"] then
	Lab["bob-lab-2"].inputs = nil
end
if mods["ScienceCostTweakerM"] and mods["bobtech"] then
    table.insert(Lab["lab"].inputs, "logistic-science-pack")
	table.insert(Lab["bob-lab-2"].inputs, "automation-science-pack")--1
	table.insert(Lab["bob-lab-2"].inputs, "logistic-science-pack")--2
	table.insert(Lab["bob-lab-2"].inputs, "chemical-science-pack")--3
	table.insert(Lab["bob-lab-2"].inputs, "military-science-pack")--4
	table.insert(Lab["bob-lab-2"].inputs, "production-science-pack")--5
	table.insert(Lab["bob-lab-2"].inputs, "utility-science-pack")--6
	table.insert(Lab["bob-lab-2"].inputs, "space-science-pack")--7
	table.insert(Lab["bob-lab-2"].inputs, "bob-advanced-science-pack")--8
	table.insert(Lab["bob-lab-2"].inputs, "sct-bio-science-pack")--9
end