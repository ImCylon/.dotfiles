--[[--
File              : appearance.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 13.07.2021
Last Modified Date: 18.01.2022
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]
--

vim.opt.background = "dark"
vim.api.nvim_command("colorscheme dracula")
vim.cmd("hi Normal guibg=NONE")
vim.cmd("hi Comment guibg=NONE guifg=#7C7C7C")
vim.cmd("hi GitsignsCurrentLineBlame guifg=#707070")
-- vim.cmd'hi GitsignsCurrentLineBlame guifg=#666666'
---------- Cursors
vim.cmd("hi iCursor guibg=Orange")
vim.cmd("hi nCursor guibg=Orange")
vim.cmd("hi CursorLine guibg=Grey23")
vim.cmd("hi CursorColumn guibg=Grey23")
vim.cmd("hi ColorColumn guibg=Orange")
vim.cmd("hi Visual guibg=Grey44 guifg=NONE")
---------- Search
vim.cmd("hi Search guibg=Grey35 guifg=NONE gui=underline,bold")
vim.cmd("hi IncSearch guibg=Grey35 guifg=#EEFFFF gui=underline,bold")
---------- hop
vim.api.nvim_command("highlight default HopNextKey guibg=#FFFFFF guifg=#000000 gui=bold cterm=bold")
vim.api.nvim_command("highlight default HopNextKey1 guibg=#FFFFFF guifg=#000000 gui=bold cterm=bold")
vim.api.nvim_command("highlight default HopNextKey2 guibg=#FFFFFF guifg=#000000 gui=bold cterm=bold")
---------- Gitsigns
vim.cmd("hi DiffAdd guibg=NONE guifg=green ctermbg=none")
vim.cmd("hi DiffChange guibg=NONE guifg=yellow ctermbg=none")
vim.cmd("hi DiffDelete guibg=NONE guifg=red ctermbg=none")
