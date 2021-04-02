--[[
	Part of the 'More uranium-235' mod.
	
	Homepage: https://toxicantidote.net/2021/04/factorio-more-u-235-mod/
	Github: https://github.com/toxicantidote/factorio_more_u235
	
	See LICENSE.txt in the root mod folder for licensing details.
--]]
data:extend({
  {
    type = "double-setting",
    name = "more-u235-chance",
    setting_type = "startup",
    minimum_value = 5,
    default_value = 20,
	maximum_value = 95
  }
})
