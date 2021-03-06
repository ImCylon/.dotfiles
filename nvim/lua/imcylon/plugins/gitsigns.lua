--[[--
File              : gitsigns.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 15.01.2022
Last Modified Date: 29.01.2022
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]

local status_ok, gitsigns = pcall(require, "gitsigns")
if not status_ok then
	return
end

gitsigns.setup({
	signs = {
		add = { hl = "GitSignsAdd", text = "+▎", numhl = "GitSignsAddNr", linehl = "GitSignsAddLn" },
		change = { hl = "GitSignsChange", text = "~▎", numhl = "GitSignsChangeNr", linehl = "GitSignsChangeLn" },
		delete = { hl = "GitSignsDelete", text = "契", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
		topdelete = { hl = "GitSignsDelete", text = "契", numhl = "GitSignsDeleteNr", linehl = "GitSignsDeleteLn" },
		changedelete = {
			hl = "GitSignsChange",
			text = "-▎",
			numhl = "GitSignsChangeNr",
			linehl = "GitSignsChangeLn",
		},
	},
	signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`
	numhl = false, -- Toggle with `:Gitsigns toggle_numhl`
	linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
	word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
	keymaps = {
		["n ]c"] = { expr = true, "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'" },
		["n [c"] = { expr = true, "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'" },
		["n <leader>gn"] = { expr = true, "&diff ? ']c' : '<cmd>Gitsigns next_hunk<CR>'" },
		["n <leader>gv"] = { expr = true, "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<CR>'" },
		["n <leader>gs"] = "<cmd>Gitsigns stage_hunk<CR>",
		["v <leader>gs"] = ":Gitsigns stage_hunk<CR>",
		["n <leader>gu"] = "<cmd>Gitsigns undo_stage_hunk<CR>",
		["n <leader>gr"] = "<cmd>Gitsigns reset_hunk<CR>",
		["v <leader>gr"] = ":Gitsigns reset_hunk<CR>",
		["n <leader>gR"] = "<cmd>Gitsigns reset_buffer<CR>",
		["n <leader>gp"] = "<cmd>Gitsigns preview_hunk<CR>",
		["n <leader>gb"] = "<cmd>Gitsigns toggle_current_line_blame<CR>",
		["n <leader>gB"] = '<cmd>lua require"gitsigns".blame_line{full=true}<CR>',
		["n <leader>gS"] = "<cmd>Gitsigns stage_buffer<CR>",
		["n <leader>gU"] = "<cmd>Gitsigns reset_buffer_index<CR>",
	},
	watch_gitdir = {
		interval = 1000,
		follow_files = true,
	},
	attach_to_untracked = true,
	current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
	current_line_blame_opts = {
		virt_text = true,
		virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
		delay = 1000,
		ignore_whitespace = false,
	},
	current_line_blame_formatter_opts = {
		relative_time = false,
	},
	sign_priority = 6,
	update_debounce = 100,
	status_formatter = nil, -- Use default
	max_file_length = 40000,
	use_internal_diff = true, -- If luajit is present
	preview_config = {
		-- Options passed to nvim_open_win
		border = "single",
		style = "minimal",
		relative = "cursor",
		row = 0,
		col = 1,
	},
	yadm = {
		enable = false,
	},
})
