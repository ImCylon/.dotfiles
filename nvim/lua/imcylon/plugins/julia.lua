--[[--
File              : julia.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 19.01.2022
Last Modified Date: 19.01.2022
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]

require("lspconfig").julials.setup({})
vim.cmd("autocmd BufWritePre *.jl JuliaFormatterFormat()")
