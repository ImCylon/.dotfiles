--[[--
File              : sumneko_lua.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 15.01.2022
Last Modified Date: 15.01.2022
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]

return {
	settings = {

		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = {
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.stdpath("config") .. "/lua"] = true,
				},
			},
		},
	},
}
