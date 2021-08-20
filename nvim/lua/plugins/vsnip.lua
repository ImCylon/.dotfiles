--[[--
File              : vsnip.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 14.07.2021
Last Modified Date: 10.08.2021
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]--

local vim = vim

vim.g.vsnip_snippet_dir = '/home/imcylon/.config/nvim/snippets'

-- Expand
vim.api.nvim_command([[imap <expr> <C-j> vsnip#expandable() ? '<Plug>(vsnip-expand)' : '<C-j>']])
vim.api.nvim_command([[smap <expr> <C-j> vsnip#expandable() ? '<Plug>(vsnip-expand)' : '<C-j>']])
