--[[--
File              : blankline.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 14.01.2022
Last Modified Date: 15.01.2022
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]--


require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}

vim.opt.listchars:append("space:⋅")
vim.opt.list = true
vim.opt.listchars:append("eol:↴")
