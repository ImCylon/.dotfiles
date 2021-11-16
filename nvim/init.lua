--[[--
File              : init.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 14.08.2021
Last Modified Date: 10.11.2021
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]--

local vim = vim

---------- options
require('options')
---------- packages
require('packs')
---------- mappings
require('mappings')
---------- abrev
require('abrev')
---------- plugins
require('plugins.appearance')
require('plugins.compe')
require('plugins.emmet')
require('plugins.floaterm')
require('plugins.gitsigns')
require('plugins.header')
require('plugins.hop')
require('plugins.lspconfig')
require('plugins.lualine')
require('plugins.nvim-tree')
require('plugins.prettier')
require('plugins.setups')
require('plugins.startify')
require('plugins.telescope')
require('plugins.treesitter')
require('plugins.vimtex')
require('plugins.vimwiki')
require('plugins.vsnip')

function ZZ()
    if (vim.api.nvim_get_option('scrolloff') == 999) then
        vim.api.nvim_set_option('scrolloff',1)
    return (vim.cmd"set scrolloff=1")
        else
        vim.cmd"set scrolloff=999"
    return (vim.api.nvim_set_option('scrolloff',999))
    end
end
