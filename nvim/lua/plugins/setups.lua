--[[--
File              : setups.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 10.08.2021
Last Modified Date: 10.08.2021
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]--

-- just setup
require('colorizer').setup()
--require('tabline').setup({})
require('pears').setup(function(conf)
    conf.remove_pair_on_outer_backspace(false)
    conf.expand_on_enter(false)
    conf.preset('tag_matching')
end)

require('range-highlight').setup({
    highlight = 'Visual',
})

require('go').setup({ linter = 'golint' })
