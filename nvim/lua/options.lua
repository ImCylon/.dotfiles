--[[--
File              : options.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 13.07.2021
Last Modified Date: 19.08.2021
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]--

-- local cmd = vim.cmd
-- local opt = vim.opt
-- local has = vim.fn.has
vim.cmd('filetype plugin indent on')
vim.cmd('syntax enable')
---------- systematic
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.opt.fileencodings = { 'utf-8' }
vim.opt.backup = false      -- no .bak
vim.opt.writebackup = false -- no backup write file
vim.opt.swapfile = false    -- no .swap
vim.opt.updatetime = 300    -- time (in ms) to write to swap file
---------- buffer
vim.opt.expandtab = true    -- expand tab
vim.opt.tabstop = 4         -- tab stop
vim.opt.softtabstop = 0     -- soft tab stop
vim.opt.autoindent = true   -- auto indent for new line
vim.opt.smartindent = true   -- auto indent for new line
vim.opt.shiftwidth = 4      -- auto indent shift width
---------- window
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 999
vim.opt.sidescrolloff = 80
vim.opt.sidescroll = 1
---------- editing
vim.opt.wrap = false
vim.opt.whichwrap = 'b,s,<,>,[,]'   -- cursor is able to move from end of line to next line
vim.opt.backspace = { 'indent', 'eol', 'start' }    -- backspace behaviors
vim.opt.list = true         -- show tabs with listchars
vim.opt.ignorecase = true   -- search with no ignore case
vim.opt.hlsearch = true     -- highlight search
vim.opt.incsearch = true    -- no incremental search
vim.opt.completeopt =  "menuone,noselect"
vim.opt.hidden = true
vim.opt.cursorline = true   -- show cursor line
vim.opt.cursorcolumn = true   -- show cursor column
vim.opt.ruler = true        -- show ruler line
vim.opt.colorcolumn = { 80 }   -- display color column when line is longer than 80
vim.opt.signcolumn = 'yes'  -- show sign column (column of the line number)
vim.opt.mouse = 'nv'    -- enable mouse under normal and visual mode
vim.cmd('set mousehide')    -- hide mouse when characters are typed
vim.opt.showmatch = true    -- show bracket match
vim.opt.cmdheight = 2   -- height of :command line
vim.opt.wildmenu = true -- wildmenu, auto complete for commands
-- vim.opt.wildignorecase = true
-- vim.opt.wildmode = "list,full"
-- vim.opt.wildmode = {'full','full'}
vim.opt.splitright = true   -- split to right
vim.opt.splitbelow = true   -- split to below
vim.opt.shortmess:append('c') -- status line e.g. CTRL+G

if not vim.fn.has('gui_running') then
    vim.opt.t_Co = 256
end

if vim.fn.has('termguicolors') then
     vim.cmd('let &t_8f = "\\<Esc>[38;2;%lu;%lu;%lum"')
     vim.cmd('let &t_8b = "\\<Esc>[48;2;%lu;%lu;%lum"')
     vim.opt.termguicolors = true
end

if vim.fn.has('persistent_undo') then
    vim.cmd'set undodir=~/.cache/nvim/undodir'
    vim.cmd'set undofile'
end
