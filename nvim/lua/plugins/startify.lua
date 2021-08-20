--[[--
File              : startify.lua
Author            : I'mCylon <imcylonrs@gmail.com>
Date              : 14.07.2021
Last Modified Date: 14.07.2021
Last Modified By  : I'mCylon <imcylonrs@gmail.com>
--]]--

vim.g.startify_lists = {{
        type = 'sessions',
        header = {'   Sessions'}
    -- }, {
    --     type = 'files',
    --     header = {'   Files'}
    }, {
        type = 'dir',
        header = {'   Recent  Files ' .. vim.fn.getcwd()}
    }, {
        type = 'bookmarks',
        header = {'   Bookmarks'}
    }, {
        type = 'commands',
        header = {'   Commands'}
    }
}

vim.g.startify_bookmarks = {
    { z = '~/.zshrc' },
    { n = '~/.config/nvim/init.lua' },
    { w = '~/Public/vimwiki/index.md' },
    { a = '~/../projects/SciIzi/comsci/langs/assembly' },
    { c = '~/../projects/SciIzi/comsci/langs/c' },
    { cpp = '~/../projects/SciIzi/comsci/langs/cpp' },
    { d = '~/../projects/SciIzi/comsci/langs/dart' },
    { e = '~/../projects/SciIzi/comsci/langs/elixir' },
    { f = '~/../projects/SciIzi/comsci/langs/fortran' },
    { g = '~/../projects/SciIzi/comsci/langs/golang' },
    { h = '~/../projects/SciIzi/comsci/langs/haskell' },
    { jv = '~/../projects/SciIzi/comsci/langs/java' },
    { js = '~/../projects/SciIzi/comsci/langs/js' },
    { jl = '~/../projects/SciIzi/comsci/langs/julia' },
    { lt = '~/../projects/SciIzi/comsci/langs/latex' },
    { lua = '~/../projects/SciIzi/comsci/langs/lua' },
    { ns = '~/../projects/SciIzi/comsci/langs/nosql' },
    { pr = '~/../projects/SciIzi/comsci/langs/perl' },
    { php = '~/../projects/SciIzi/comsci/langs/php' },
    { py = '~/../projects/SciIzi/comsci/langs/python' },
    { qt = '~/../projects/SciIzi/comsci/langs/qt' },
    { rl = '~/../projects/SciIzi/comsci/langs/rlang' },
    { rb = '~/../projects/SciIzi/comsci/langs/ruby' },
    { sh = '~/../projects/SciIzi/comsci/langs/shell' },
    { sql = '~/../projects/SciIzi/comsci/langs/sql' },
    { vim = '~/../projects/SciIzi/comsci/langs/vim' },
 }

vim.g.startify_commands = {{
    up = {"Update Plugins", ":PaqUpdate"}
    },{
    cp = {"Update Plugins", ":PaqUpdate"},
    },
}
