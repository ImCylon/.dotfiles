--[[--
File              : colorizer.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 15.01.2022
Last Modified Date: 15.01.2022
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]--

local status_ok, colorizer = pcall(require, "colorizer")
if not status_ok then
  return
end

DEFAULT_OPTIONS = {
  RGB      = true;         -- #RGB hex codes
  RRGGBB   = true;         -- #RRGGBB hex codes
  names    = true;         -- "Name" codes like Blue
  RRGGBBAA = false;        -- #RRGGBBAA hex codes
  rgb_fn   = false;        -- CSS rgb() and rgba() functions
  hsl_fn   = false;        -- CSS hsl() and hsla() functions
  css      = false;        -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
  css_fn   = false;        -- Enable all CSS *functions*: rgb_fn, hsl_fn
  -- Available modes: foreground, background
  mode     = 'background'; -- Set the display mode.
}
