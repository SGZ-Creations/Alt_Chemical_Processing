if mods["terrapalus"] and mods["lignumis-assets"] and mods["reskins-bobs"]then
	if data.raw["inserter"]["bioluminescent-burner-inserter"] then
		data.raw["inserter"]["bioluminescent-burner-inserter"].hand_base_picture.filename = "__lignumis-assets__/graphics/entity/burner-inserter/burner-inserter-hand-open.png"
		data.raw["inserter"]["bioluminescent-burner-inserter"].hand_base_picture.width = 72
		data.raw["inserter"]["bioluminescent-burner-inserter"].hand_base_picture.height = 164
	end
end