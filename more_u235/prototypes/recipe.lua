--[[
	Part of the 'More uranium-235' mod.
	
	See LICENSE.txt in the root mod folder for licensing details.
--]]
data:extend(
	{
		
		  {
			type = "recipe",
			name = "uranium-processing",
			energy_required = 18,
			enabled = false,
			category = "centrifuging",
			ingredients =
                {
                    {"uranium-ore", 10}
                },
			icon = "__base__/graphics/icons/uranium-processing.png",
			icon_size = 64, icon_mipmaps = 4,
			subgroup = "raw-material",
			order = "k[uranium-processing]",
			results =
                {
                    {"uranium-235", 2},
                    {"uranium-238", 3},
                }
		  },
		  {
			type = "recipe",
			name = "kovarex-enrichment-process",
			energy_required = 90,
			enabled = false,
			category = "centrifuging",
			ingredients = {{"uranium-235", 40}, {"uranium-238", 5}},
			icon = "__base__/graphics/icons/kovarex-enrichment-process.png",
			icon_size = 64, icon_mipmaps = 4,
			subgroup = "intermediate-product",
			order = "r[uranium-processing]-c[kovarex-enrichment-process]",
			main_product = "",
			results =
                {
                    {"uranium-235", 45},
                },
			allow_decomposition = false
		  },
	}
)
