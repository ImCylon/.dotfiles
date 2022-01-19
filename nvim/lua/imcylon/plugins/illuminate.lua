--[[--
File              : illuminate.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 14.01.2022
Last Modified Date: 15.01.2022
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]--


local status_ok, illuminate = pcall(require, "illuminate")
if not status_ok then
  return
end

vim.cmd'hi link illuminatedWord Visual'
