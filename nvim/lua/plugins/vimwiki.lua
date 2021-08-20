--[[--
File              : vimwiki.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 11.08.2021
Last Modified Date: 11.08.2021
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]--
local vim = vim

vim.g.vimwiki_list = {
    {
        path = '/home/imcylon/Documents/vimwiki/',
        syntax = 'markdown',
        ext = '.md',
    },
}
vim.g.vimwiki_global_ext = 0
