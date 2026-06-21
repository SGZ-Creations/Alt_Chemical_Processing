local Loader = data.raw["loader-1x1"]
local SS = settings.startup

if (mods["Krastorio2"] or mods["Krastorio2-spaced-out"]) then
	if SS["kr-loaders"].value == true then
		--if SS["DisableLoaderPowerComsuption"].value == true then
			Loader["kr-loader"].energy_per_item = nil
			Loader["kr-fast-loader"].energy_per_item = nil
			Loader["kr-express-loader"].energy_per_item = nil
			Loader["kr-advanced-loader"].energy_per_item = nil
			Loader["kr-superior-loader"].energy_per_item = nil

			Loader["kr-loader"].energy_source = nil
			Loader["kr-fast-loader"].energy_source = nil
			Loader["kr-express-loader"].energy_source = nil
			Loader["kr-advanced-loader"].energy_source = nil
			Loader["kr-superior-loader"].energy_source = nil
		--end
	end
end