--[[--
File              : browser-search.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 14.01.2022
Last Modified Date: 15.01.2022
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]--

local status_ok, browser_search = pcall(require, "vim-browser-search")
if not status_ok then
  return
end

vim.g.browser_search_engines = {
  duckduckgo = 'https://duckduckgo.com/?q=%s',
  github = 'https://github.com/search?q=%s',
  google = 'https://google.com/search?q=%s',
  translate = 'https://translate.google.com/?sl=auto&tl=it&text=%s',
  stackoverflow = 'https://stackoverflow.com/search?q=%s',
  wikipedia = 'https://en.wikipedia.org/wiki/%s',
  youtube = 'https://www.youtube.com/results?search_query=%s&page=&utm_source=opensearch',
}
