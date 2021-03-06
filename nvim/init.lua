--[[--
File              : init.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 14.01.2022
Last Modified Date: 30.01.2022
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]

require("imcylon.abrev")
require("imcylon.mappings")
require("imcylon.options")
require("imcylon.packs")

-- Settins plugins
require("imcylon.plugins.alpha")
require("imcylon.plugins.appearance")
require("imcylon.plugins.autopairs")
require("imcylon.plugins.blankline")
require("imcylon.plugins.bufferline")
require("imcylon.plugins.cmp")
require("imcylon.plugins.colorizer")
require("imcylon.plugins.comment")
require("imcylon.plugins.floaterm")
require("imcylon.plugins.gitsigns")
require("imcylon.plugins.header")
require("imcylon.plugins.hop")
require("imcylon.plugins.illuminate")
require("imcylon.plugins.impatient")
require("imcylon.plugins.julia")
require("imcylon.plugins.lsp")
require("imcylon.plugins.lsp.null-ls")
require("imcylon.plugins.lualine")
require("imcylon.plugins.nvim-tree")
require("imcylon.plugins.range-highlight")
require("imcylon.plugins.slime")
require("imcylon.plugins.tabnine")
require("imcylon.plugins.telescope")
require("imcylon.plugins.treesitter")
require("imcylon.plugins.vim-browser-search")
require("imcylon.plugins.vimwiki")

-- centralizer scroolloff
function ZZ()
	if vim.api.nvim_get_option("scrolloff") == 999 then
		vim.api.nvim_set_option("scrolloff", 1)
		return (vim.cmd("set scrolloff=1"))
	else
		vim.cmd("set scrolloff=999")
		return (vim.api.nvim_set_option("scrolloff", 999))
	end
end
