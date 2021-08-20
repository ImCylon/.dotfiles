--[[--
File              : completion.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 18.07.2021
Last Modified Date: 18.07.2021
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]--

vim.cmd [[

let g:completion_trigger_keyword_length = 1 " default = 1
autocmd BufEnter * lua require'plugins.completion'.on_attach()

]]

-- require'lspconfig'.sumneko_lua.on_attach()

