--[[--
File              : options.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 13.07.2021
Last Modified Date: 15.01.2022
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]--

vim.cmd('set mousehide')                -- Hide mouse when characters are typed
vim.cmd('filetype plugin indent on')    -- Detect the type of file that is edited
vim.cmd('syntax enable')                -- Syntax highlight

---------- systematic
vim.opt.encoding = 'utf-8'              -- String-encoding
vim.opt.fileencoding = 'utf-8'          -- Encoding for the current buffer
vim.opt.fileencodings = { 'utf-8' }     -- Encoding for existing file
vim.opt.clipboard = "unnamedplus"       -- Allows nvim to access the system clipboard
vim.opt.pumheight = 10                  -- Pop Up Menu height
vim.opt.conceallevel = 0                -- So that `` is visible in markdown files
vim.opt.backup = false                  -- Backup of the original file is made
vim.opt.writebackup = false             -- Make a backup before overwriting a file
vim.opt.swapfile = false                -- Swapfile for the buffer
vim.opt.updatetime = 300                -- Swap file will be written to disk
vim.opt.inccommand= 'split'             -- Show the effects of :substitute :smagic :snomagic
---------- buffer
vim.opt.expandtab = true                -- Use the appropriate number of spaces to insert a TAB
vim.opt.tabstop = 2                     -- Number of spaces that a TAB in file counts for
vim.opt.softtabstop = 2                 -- Counts for while performing editing operations
vim.opt.autoindent = true               -- Copy indent from current line when starting a new line
vim.opt.smartindent = true              -- Do smart autoindenting when starting a new line
vim.opt.smartcase = true                -- Override the 'ignorecase' option if the search pattern contains upper case
vim.opt.shiftwidth = 2                  -- Number of spaces to use for each step of indent
vim.opt.guicursor = 'n-v-c-sm:block-nCursor,i-ci-ve:ver25-iCursor,r-cr-o:hor20'
---------- window
vim.opt.number = true                   -- Show the line numbers
vim.opt.relativenumber = true           -- Show the line numbers relative
vim.opt.scrolloff = 999                 -- Minimal number of screen lines to keep above and below the cursor
vim.opt.sidescrolloff = 120             -- Minimal number of screen columns to keep the left and to the right of the cursor
vim.opt.sidescroll = 1                  -- Minimal number of columns to scroll horizontally
---------- editing
vim.opt.wrap = false                    -- Changes how text is displayed
vim.opt.whichwrap = 'b,s,<,>,[,]'       -- Cursor is able to move from end of line to next line
vim.opt.backspace = { 'indent', 'eol', 'start' }    -- Backspace behaviors
vim.opt.list = true                     -- Show tabs with listchars
vim.opt.ignorecase = true               -- Search with no ignore case
vim.opt.hlsearch = true                 -- Highlight all its matches
vim.opt.incsearch = true                -- Show where the pattern, as it was typed so far
vim.opt.completeopt =  { "menuone", "noselect" }      -- Mostly just for cmp
vim.opt.hidden = true                   -- Buffer becomes hidden when it is abandoned
vim.opt.cursorline = true               -- Show cursor line
vim.opt.cursorcolumn = true             -- Show cursor column
vim.opt.ruler = true                    -- Show ruler line
vim.opt.colorcolumn = { 120 }            -- Display color column when line is longer than 80
vim.opt.signcolumn = 'yes'              -- Show sign column (column of the line number)
vim.opt.mouse = 'a'                     -- Enable mouse under all modes
vim.opt.showtabline = 2                 -- Always show tabs
vim.opt.showmatch = true                -- Show bracket match
vim.opt.cmdheight = 2                   -- Number of screen lines to use for the command-line
vim.opt.wildmenu = true                 -- Enable "enhanced mode" of command-line completion
vim.opt.splitright = true               -- Split to right
vim.opt.splitbelow = true               -- Split to below
vim.opt.termguicolors = true            -- Set term gui colors
vim.opt.shortmess:append('c')           -- status line e.g. CTRL+G
vim.opt.guifont = 'monospace'

if not vim.fn.has('gui_running') then
    t_Co = 256
end

if vim.fn.has('persistent_undo') then
    vim.cmd'set undodir=~/.cache/nvim/undodir'
    vim.cmd'set undofile'
end
