--[[--
File              : packs.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 14.01.2022
Last Modified Date: 19.01.2022
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]

local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packs.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	-- My plugins here
	use("wbthomason/packer.nvim") -- Have packer manage itself
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("nvim-lua/plenary.nvim") -- Useful lua functions used ny lots of plugins
	use("windwp/nvim-autopairs") -- Autopairs, integrates with both cmp and treesitter
	use("numToStr/Comment.nvim") -- Easily comment stuff
	use("kyazdani42/nvim-web-devicons") -- Add file type to nvim
	use("kyazdani42/nvim-tree.lua") -- File explorer tree
	use("akinsho/bufferline.nvim") -- A snazzy bufferline
	use("moll/vim-bbye") -- Delete/close buffer without closing windows
	use("goolord/alpha-nvim") -- Vim startify/dashboard
	use("voldikss/vim-floaterm") -- Float term
	use("lewis6991/impatient.nvim") -- Speed up loading Lua modules
	use("alpertuna/vim-header") -- Easily adds brief author info and license headers
	use("nvim-lualine/lualine.nvim") -- A simple nvim statusline
	use("voldikss/vim-browser-search") -- Perfom a quick web search
	use("RRethy/vim-illuminate") -- Highlight hover word
	use("winston0410/cmd-parser.nvim") -- Command-line parser for nvim(require for range-highlight)
	use("winston0410/range-highlight.nvim") -- Range highlight in commandline
	use("norcalli/nvim-colorizer.lua") -- Fastest nvim colorizer
	use("lukas-reineke/indent-blankline.nvim") -- Indent guides for nvim
	use("suan/vim-instant-markdown") -- Markdown preview
	use("phaazon/hop.nvim") -- Nvim motions on speed
	use("tpope/vim-surround") -- Delete/change/add pairs
	use("vimwiki/vimwiki") -- Personal Wiki for Vim
	use("terryma/vim-multiple-cursors") -- multiple cursor
	-- use "ahmedkhalf/project.nvim"             -- Project management for nvim
	-- use "folke/which-key.nvim"                -- Create key bindings that stick

	-- Colorschemes
	use({ "dracula/vim", as = "dracula" }) -- Theme

	-- cmp plugins
	use("hrsh7th/nvim-cmp") -- The completion plugin
	use("hrsh7th/cmp-buffer") -- Buffer completions
	use("hrsh7th/cmp-path") -- Path completions
	use("hrsh7th/cmp-cmdline") -- Cmdline completions
	use("saadparwaiz1/cmp_luasnip") -- Snippet completions
	use("hrsh7th/cmp-nvim-lsp") -- Lsp completions
	use("hrsh7th/cmp-nvim-lua") -- Nvim-lua completions
	use({ "tzachar/cmp-tabnine", run = "./install.sh" }) --, requires = "hrsh7th/nvim-cmp" })

	-- snippets
	use("L3MON4D3/LuaSnip") -- Snippet engine
	use("rafamadriz/friendly-snippets") -- A bunch of snippets to use

	-- LSP
	use("neovim/nvim-lspconfig") -- Enable LSP
	use("williamboman/nvim-lsp-installer") -- Simple to use language server installer
	use("tamago324/nlsp-settings.nvim") -- Language server settings defined in json for
	use("jose-elias-alvarez/null-ls.nvim") -- For formatters and linters

	-- Julia
	use("JuliaEditorSupport/julia-vim") -- Vim support fot Julia, Unicode
	use("jpalardy/vim-slime") -- Live REPL
	use("kdheepak/JuliaFormatter.vim") -- A nvim plugin for formatting Julia code using JuliaFormatter.jl

	-- Telescope
	use("nvim-telescope/telescope.nvim")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("JoosepAlviste/nvim-ts-context-commentstring")

	-- Git
	use("lewis6991/gitsigns.nvim")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	-- if PACKER_BOOTSTRAP then
	--  require("packer").sync()
	-- end
end)
-- Estudar a instalaçao
-- Pocco81/DAPInstall.nvim
-- Tastyep/structlog.nvim
-- lervag/vimtex
-- mfussenegger/nvim-dap
-- mhinz/vim-startify
-- nvim-telescope/telescope-fzf-native.nvim
-- nvim-treesitter/nvim-treesitter-textobjects
-- ojroques/nvim-buildme
-- prettier/vim-prettier
-- projects/personal/hover.nvim
-- rcarriga/nvim-notify
-- rhysd/conflict-marker.vim
