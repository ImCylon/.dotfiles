--[[--
File              : init.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 18.01.2022
Last Modified Date: 18.01.2022
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]

local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("imcylon.plugins.lsp.lsp-installer")
require("imcylon.plugins.lsp.null-ls")
require("imcylon.plugins.lsp.handlers").setup()
