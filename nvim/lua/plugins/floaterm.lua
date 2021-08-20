--[[--
File              : floaterm.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 13.07.2021
Last Modified Date: 11.08.2021
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]--
local set_keymap = require('common').set_keymap

vim.g.floaterm_autoclose = 2

set_keymap('n', '<leader>tt', '<cmd>FloatermNew<CR>')
