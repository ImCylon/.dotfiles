--[[--
File              : packs.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 13.07.2021
Last Modified Date: 14.08.2021
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]--

local vim = vim

-- TODO
-- install
-- formatter, lslkind,

vim.cmd('packadd paq-nvim')
local paq = require('paq-nvim').paq
paq({ 'savq/paq-nvim', opt = true })
-- lib
paq('nvim-lua/plenary.nvim')
paq('nvim-lua/popup.nvim')
-- themes
paq('dracula/vim')
paq('kyazdani42/nvim-web-devicons')
paq('ryanoasis/vim-devicons')
-- file
paq('mhinz/vim-startify') -- stardup page
paq('nvim-telescope/telescope.nvim') -- fuzzy picker
paq('crispgm/telescope-heading.nvim') -- markdown heading
paq('rmagatti/auto-session') -- auto session
paq('rmagatti/session-lens') -- session lens for telescope
paq('voldikss/vim-floaterm') -- float term
paq('kevinhwang91/rnvimr') -- ranger
paq('kyazdani42/nvim-tree.lua') -- file explorer
-- view
paq('terryma/vim-multiple-cursors')
paq('alpertuna/vim-header')
paq('hoob3rt/lualine.nvim') -- status line
paq('romgrk/barbar.nvim')
paq('dstein64/nvim-scrollview') -- scroll bar
paq('google/vim-searchindex') -- search index
paq('wincent/ferret') -- find and replace
paq('Yggdroot/indentLine') -- indent line
paq('RRethy/vim-illuminate') -- highlight hover word
paq('lewis6991/gitsigns.nvim') -- git signs
paq('airblade/vim-gitgutter') -- git signs
paq('f-person/git-blame.nvim') -- toggle git blame info
paq('rhysd/conflict-marker.vim') -- git conflict
paq('norcalli/nvim-colorizer.lua') -- color codes rendering
paq('tversteeg/registers.nvim') -- show registers
paq('winston0410/cmd-parser.nvim') -- dependency of range-highlight
paq('winston0410/range-highlight.nvim') -- highlight range lines
--pac-edit
paq('psliwka/vim-smoothie') -- smoothy scroll
paq('phaazon/hop.nvim') -- jump to anywhere within 2 strokes
paq('tpope/vim-repeat') -- repeat that support plugin
paq('tpope/vim-surround') -- toggle surround
paq('tpope/vim-commentary') -- toggle comment
paq({
    'prettier/vim-prettier', -- prettier formatter
    run = 'yarn install',
    branch = 'release/0.x',
})
paq('christoomey/vim-system-copy') -- copy to system clipboard
paq('steelsojka/pears.nvim') -- auto symbol pairs
-- language
paq({
    'nvim-treesitter/nvim-treesitter', -- treesitter
    run = ':TSUpdate',
})
paq('rhysd/vim-clang-format') -- format C family
paq('dart-lang/dart-vim-plugin') -- suppot for dart
paq('JuliaEditorSupport/julia-vim') -- support for julia
paq('suan/vim-instant-markdown') -- markdown live preview
paq('lervag/vimtex') -- support for TeX
paq('ojroques/nvim-buildme') -- build or run a project
paq('ray-x/lsp_signature.nvim') -- lsp signature hint when type
paq('nvim-treesitter/playground') -- treesitter playground
paq('nvim-treesitter/nvim-treesitter-textobjects') -- treesitter textobj e.g., class, function
paq('neovim/nvim-lspconfig') -- lsp client config
paq('kabouzeid/nvim-lspinstall') -- install server lsp
paq('glepnir/lspsaga.nvim') -- lsp client config
paq('hrsh7th/nvim-compe') -- completion
paq('hrsh7th/vim-vsnip') -- snippets
paq('hrsh7th/vim-vsnip-integ') -- vsnip integration for nvim-compe
paq('codota/tabnine-vim') -- AI completion
paq({
    'tzachar/compe-tabnine',
    run = './install.sh',
})
paq('GoldsteinE/compe-latex-symbols')
paq('tamago324/compe-zsh')
paq('mattn/emmet-vim') -- html/css snippets
paq('crispgm/nvim-go') -- go dev
paq('rust-lang/rust.vim') -- rust lang support
paq('nathangrigg/vim-beancount') -- beancount ftplugin
paq('vimwiki/vimwiki') -- vimwiki
paq('junegunn/vader.vim') -- vim plugin testing
