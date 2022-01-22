--[[--
File              : mappings.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 13.07.2021
Last Modified Date: 21.01.2022
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap

---------- map leader key to space
--keymap( "", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
---------- common
keymap(
	"n",
	"<leader>sv",
	"<cmd>source ~/.config/nvim/init.lua | source ~/.config/nvim/lua/imcylon/plugins/appearance.lua | echo 'RELOAD NVIM!!'<CR>",
	opts
)
keymap("n", "<leader>ww", "<cmd>w!<CR>", opts)
keymap("n", "<leader>wa", "<cmd>wa!<CR>", opts)
keymap("n", "<leader>wq", "<cmd>wqa!<CR>", opts)
keymap("n", "<leader>qq", "<cmd>q!<CR>", opts)
keymap("n", "<leader>wa", "<cmd>wa!<CR>", opts)
keymap("n", "<leader>ss", '<cmd>source % | echo "RELOAD!!"<CR>', opts)
keymap("n", "<leader>x", "<cmd>NvimTreeToggle<CR>", opts)
keymap("n", "<leader>f", "<cmd>Telescope find_files<CR>", opts)
--'<cmd>NvimTreeToggle<CR>', opts)
keymap("n", "<leader>vd", "<cmd>VimwikiDiaryIndex<CR>", opts)
keymap("n", "<leader>vi", "<cmd>VimwikiIndex<CR>", opts)
keymap("i", "kj", "<ESC>", opts)
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)
---------- moving
keymap("i", "<c-a>", "<Esc>I", opts)
keymap("i", "<c-e>", "<End>", opts)
keymap("n", "k", "gk", opts)
keymap("n", "j", "gj", opts)
---------- editing
keymap("n", "Y", "y$", opts)
keymap("n", "<a-Up>", "<cmd>m .-2<CR>", opts)
keymap("n", "<a-Down>", "<cmd>m .+1<CR>", opts)
keymap("n", "<a-k>", "<cmd>m .-2<CR>", opts)
keymap("n", "<a-j>", "<cmd>m .+1<CR>", opts)
keymap("v", "<a-k>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "<a-j>", ":m '>+1<CR>gv=gv", opts)
keymap("i", "<c-d>", "<Esc>ddi", opts)
keymap("v", "p", '"_dP', opts)
--------- splits
keymap("n", "<leader>T", "<c-w>w", opts)
keymap("n", "W", "<c-w>w", opts)
keymap("n", "<leader>j", "<c-w>j", opts)
keymap("n", "<leader>k", "<c-w>k", opts)
keymap("n", "<leader>h", "<c-w>h", opts)
keymap("n", "<leader>l", "<c-w>l", opts)
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize _2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize_+2<CR>", opts)
---------- tab
keymap("n", "<leader>>", "<cmd>BufferLineCycleNext<CR>", opts)
keymap("n", "<leader><", "<cmd>BufferLineCyclePrev<CR>", opts)
keymap("n", "<TAB>", "<cmd>BufferLineCycleNext<CR>", opts)
keymap("n", "<S-TAB>", "<cmd>BufferLineCyclePrev<CR>", opts)
keymap("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<CR>", opts)
keymap("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<CR>", opts)
keymap("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<CR>", opts)
keymap("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<CR>", opts)
keymap("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<CR>", opts)
keymap("n", "<leader>6", "<cmd>BufferLineGoToBuffer 6<CR>", opts)
keymap("n", "<leader>7", "<cmd>BufferLineGoToBuffer 7<CR>", opts)
keymap("n", "<leader>8", "<cmd>BufferLineGoToBuffer 8<CR>", opts)
keymap("n", "<leader>9", "<cmd>BufferLineGoToBuffer 9<CR>", opts)
keymap("n", "<leader>0", "<cmd>BufferLineGoToBuffer 0<CR>", opts)
keymap("n", "<leader>b", "<cmd>bd<CR>", opts)
keymap("n", "<leader>m", "<cmd>tabnew %<CR>", opts)
---------- quickfix
keymap("n", "<leader>bb", "<cmd>bd<CR>", opts)
---------- command
keymap("c", "<c-a>", "<Home>", opts)
keymap("c", "<c-e>", "<End>", opts)
---------- LSP
keymap("n", "<leader>pd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "<leader>pD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
keymap("n", "<leader>pt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
keymap("n", "<leader>pi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
keymap("n", "U", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
keymap("n", "<leader>pr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
keymap("n", "<leader>ps", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", opts)
keymap("n", "<leader>pS", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", opts)
keymap("n", "<leader>pR", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
keymap("n", "<leader>pf", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
---------- plug manager
keymap("n", "<leader>pu", "<cmd>PackerUpdate<CR>", opts)
---------- git-blame
keymap("n", "<leader>G", "<cmd>Gitsigns toggle_current_line_blame<CR>", opts)
---------- gitsigns
keymap("n", "<leader>gs", "<cmd>Gitsings stage_hunk<CR>", opts)
keymap("v", "<leader>gs", "<cmd>Gitsings stage_hunk<CR>", opts)
keymap("n", "<leader>gu", "<cmd>Gitsings undo_stage_hunk<CR>", opts)
keymap("n", "<leader>gr", "<cmd>Gitsings reset_hunk<CR>", opts)
keymap("n", "<leader>gR", "<cmd>Gitsings reset_buffer<CR>", opts)
-- keymap('n', '<leader>gb', '<cmd>Gitsings blame_line<CR>', opts)
keymap("n", "<leader>gp", "<cmd>Gitsings preview_hunk<CR>", opts)
---------- hop.nvim
keymap("n", "<leader><space>", "<cmd>HopWord<CR>", opts)
keymap("n", "<leader>e", "<cmd>HopLine<CR>", opts)
---------- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
---------- center cursor
keymap("n", "zz", "<cmd>luado ZZ()<CR>zz", opts)
---------- floaterm
keymap("n", "<leader>t", "<cmd>FloatermToggle<CR>", opts)
---------- vimtex
keymap("n", "<leader>cl", "<cmd>VimtexCompile<CR>", opts)
---------- Browser Search
keymap("n", "<leader>gg", "<cmd>BrowserSearch<CR>", opts)
---------- spell
keymap("n", "<leader>sp", "<cmd>set spell spelllang=pt<CR>", opts)
keymap("n", "<leader>se", "<cmd>set spell spelllang=en_us<CR>", opts)
keymap("n", "<leader>sn", "<cmd>set nospell<CR>", opts)
