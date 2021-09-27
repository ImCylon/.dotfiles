--[[--
File              : mappings.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 13.07.2021
Last Modified Date: 27.09.2021
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]--

local set_keymap = require('common').set_keymap
local vim = vim

---------- map leader key to space
vim.g.mapleader = ' '
---------- common
set_keymap('n', '<leader>sv', '<cmd>source ~/.config/nvim/init.lua | source ~/.config/nvim/lua/plugins/appearance.lua | echo \'RELOAD NVIM!!\'<CR>')
set_keymap('n', '<leader>rr', '<cmd>RnvimrToggle<CR>')
set_keymap('n', '<leader>ww', '<cmd>w!<CR>')
set_keymap('n', '<leader>wa', '<cmd>wa!<CR>')
set_keymap('n', '<leader>wq', '<cmd>wqa!<CR>')
set_keymap('n', '<leader>qq', '<cmd>q!<CR>')
set_keymap('n', '<leader>wa', '<cmd>wa!<CR>')
set_keymap('n', '<leader>ss', '<cmd>source % | echo "RELOAD!!"<CR>')
set_keymap('n', '<leader>ne', '<cmd>NvimTreeFindFile <CR>')
set_keymap('n', '<leader>nc', '<cmd>NvimTreeClose<CR>')
set_keymap('n', '<leader>ft', '<cmd>FloatermToggle<CR>')
set_keymap('n', '<leader>vv', '<cmd>VimwikiIndex<CR>')
set_keymap('i', 'kj', '<ESC>')
set_keymap('i', 'jk', '<ESC>')
set_keymap('i', 'jk', '<ESC>')
---------- moving
set_keymap('i', '<c-a>', '<Esc>I')
set_keymap('i', '<c-e>', '<End>')
set_keymap('n', 'k', 'gk')
set_keymap('n', 'j', 'gj')
---------- editing
set_keymap('n', 'Y', 'y$')
set_keymap('n', '<a-Up>', '<cmd>m .-2<CR>')
set_keymap('n', '<a-Down>', '<cmd>m .+1<CR>')
set_keymap('n', '<a-k>', '<cmd>m .-2<CR>')
set_keymap('n', '<a-j>', '<cmd>m .+1<CR>')
set_keymap('v', '<a-k>', '<cmd> \'<,\'>move-2<CR>gv=gv')
set_keymap('v', '<a-j>', '<cmd> \'<,\'>move\'>+<CR>gv=gv')
set_keymap('i', '<c-d>', '<Esc>ddi')
---------- splits
set_keymap('n', '<leader>s', '<c-w>w')
set_keymap('n', '<leader>j', '<c-w>j')
set_keymap('n', '<leader>k', '<c-w>k')
set_keymap('n', '<leader>h', '<c-w>h')
set_keymap('n', '<leader>l', '<c-w>l')
---------- tab
set_keymap('n', '<leader>>', '<cmd>BufferNext<CR>')
set_keymap('n', '<leader><', '<cmd>BufferPrevious<CR>')
set_keymap('n', '<TAB>', '<cmd>BufferNext<CR>')
set_keymap('n', '<S-TAB>', '<cmd>BufferPrevious<CR>')
set_keymap('n', '<leader>1', '<cmd>BufferGoto 1<CR>')
set_keymap('n', '<leader>2', '<cmd>BufferGoto 2<CR>')
set_keymap('n', '<leader>3', '<cmd>BufferGoto 3<CR>')
set_keymap('n', '<leader>4', '<cmd>BufferGoto 4<CR>')
set_keymap('n', '<leader>5', '<cmd>BufferGoto 5<CR>')
set_keymap('n', '<leader>6', '<cmd>BufferGoto 6<CR>')
set_keymap('n', '<leader>7', '<cmd>BufferGoto 7<CR>')
set_keymap('n', '<leader>8', '<cmd>BufferGoto 8<CR>')
set_keymap('n', '<leader>9', '<cmd>BufferGoto 9<CR>')
set_keymap('n', '<leader>0', '<cmd>BufferLast<CR>')
set_keymap('n', '<leader>bb', '<cmd>BufferClose<CR>')
---------- quickfix
set_keymap('n', '<leader>cc', '<cmd>cclose<CR>')
set_keymap('n', '<leader>;', '<cmd>cprev<CR>')
set_keymap('n', '<leader>\'', '<cmd>cnext<CR>')
---------- command
set_keymap('c', '<c-a>', '<Home>')
set_keymap('c', '<c-e>', '<End>')
---------- LSP
set_keymap('n', '<leader>ld', '<cmd>lua vim.lsp.buf.definition()<CR>')
set_keymap('n', '<leader>lD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
set_keymap('n', '<leader>lt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
set_keymap('n', '<leader>li', '<cmd>lua vim.lsp.buf.implementation()<CR>')
set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
set_keymap('n', 'U', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
set_keymap('n', '<leader>lr', '<cmd>lua vim.lsp.buf.references()<CR>')
set_keymap('n', '<leader>ls', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
set_keymap('n', '<leader>lS', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
set_keymap('n', '<leader>lR', '<cmd>lua vim.lsp.buf.rename()<CR>')
set_keymap('n', '<leader>lf', '<cmd>lua vim.lsp.buf.formatting()<CR>')
---------- plug manager
set_keymap('n', '<leader>pi', '<cmd>PaqInstall<CR>')
set_keymap('n', '<leader>pu', '<cmd>PaqUpdate<CR>')
set_keymap('n', '<leader>pc', '<cmd>PaqClean<CR>')
---------- git-blame
set_keymap('n', '<leader>gb', '<cmd>GitBlameToggle<CR>')
---------- gitsigns
set_keymap('n', '<leader>hs', '<cmd>Gitsings stage_hunk<CR>')
set_keymap('v', '<leader>hs', '<cmd>Gitsings stage_hunk<CR>')
set_keymap('n', '<leader>hu', '<cmd>Gitsings undo_stage_hunk<CR>')
set_keymap('n', '<leader>hr', '<cmd>Gitsings reset_hunk<CR>')
set_keymap('v', '<leader>hr', '<cmd>Gitsings reset_hunk<CR>')
set_keymap('n', '<leader>hR', '<cmd>Gitsings reset_buffer<CR>')
set_keymap('n', '<leader>hp', '<cmd>Gitsings preview_hunk<CR>')
set_keymap('n', '<leader>hb', '<cmd>Gitsings blame_line<CR>')
---------- hop.nvim
set_keymap('n', '<leader><space>', '<cmd>HopWord<CR>')
set_keymap('n', '<leader>e', '<cmd>HopLine<CR>')
---------- center cursor
set_keymap('n', 'zz', '<cmd>luado ZZ()<CR>zz')
---------- spell
set_keymap('n', '<leader>sp', '<cmd>set spell spelllang=pt<CR>')
set_keymap('n', '<leader>se', '<cmd>set spell spelllang=en_us<CR>')
set_keymap('n', '<leader>sn', '<cmd>set nospell<CR>')
