--[[
	Part of the 'More uranium-235' mod.
	
	Homepage: https://toxicantidote.net/2021/04/factorio-more-u-235-mod/
	Github: https://github.com/toxicantidote/factorio_more_u235
	
	See LICENSE.txt in the root mod folder for licensing details.
--]]
data:extend(
	{
		
		  {
			type = "recipe",
			name = "uranium-processing",
			energy_required = 12,
			enabled = false,
			category = "centrifuging",
			ingredients = {{"uranium-ore", 10}},
			icon = "__base__/graphics/icons/uranium-processing.png",
			icon_size = 64, icon_mipmaps = 4,
			subgroup = "raw-material",
			order = "k[uranium-processing]",
			results =
			{
			  {
				name = "uranium-235",
				probability = (settings.startup["more-u235-chance"].value / 100),
				amount = 1
			  },
			  {
				name = "uranium-238",
				probability = (1.0 - (settings.startup["more-u235-chance"].value / 100)),
				amount = 1
			  }
			}
		  },
		  {
			type = "recipe",
			name = "kovarex-enrichment-process",
			energy_required = 60,
			enabled = false,
			category = "centrifuging",
			ingredients = {{"uranium-235", 40}, {"uranium-238", 5}},
			icon = "__base__/graphics/icons/kovarex-enrichment-process.png",
			icon_size = 64, icon_mipmaps = 4,
			subgroup = "intermediate-product",
			order = "r[uranium-processing]-c[kovarex-enrichment-process]",
			main_product = "",
			results = {{"uranium-235", math.floor((100 - settings.startup["more-u235-chance"].value) / 2)}, {"uranium-238", math.floor(settings.startup["more-u235-chance"].value) / 2}},
			allow_decomposition = false
		  },
	}
)
