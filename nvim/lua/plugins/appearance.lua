--[[--
File              : appearance.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 13.07.2021
Last Modified Date: 13.07.2021
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]--
vim.opt.background = 'dark'
vim.api.nvim_command('colorscheme dracula')
vim.cmd'hi Normal guibg=NONE'
---------- Cursors
vim.cmd'hi CursorLine guibg=#151515'
vim.cmd'hi CursorColumn guibg=#151515'
vim.cmd'hi ColorColumn guibg=Grey23'
---------- Search
vim.cmd'hi Search guibg=NONE guifg=NONE gui=underline,bold'
vim.cmd'hi IncSearch guibg=#263238 guifg=#EEFFFF gui=underline,bold'
---------- hop
vim.api.nvim_command('highlight default HopNextKey guibg=#FFFFFF guifg=#000000 gui=bold cterm=bold')
vim.api.nvim_command('highlight default HopNextKey1 guibg=#FFFFFF guifg=#000000 gui=bold cterm=bold')
vim.api.nvim_command('highlight default HopNextKey2 guibg=#FFFFFF guifg=#000000 gui=bold cterm=bold')
