set rtp+=.
set rtp+=./misc/plenary

lua << EOF
local onedark = require("onedark")
onedark.setup({
    cache_path = vim.fn.expand(vim.fn.stdpath("cache") .. "/onedark_test"),
})

local util = require("onedark.utils")
local cache_path = require("onedark.config").config.cache_path

-- Create timestamp hashes to compare to
vim.g.onedark_hash = util.hash(util.join_paths(cache_path, "cache"))
vim.g.onedark_compiled = util.hash(util.join_paths(cache_path, "onedark_compiled"))
vim.g.onelight_compiled = util.hash(util.join_paths(cache_path, "onelight_compiled"))

vim.cmd [[colorscheme onedark]]
EOF

runtime! plugin/plenary.vim
command CacheSpec PlenaryBustedFile tests/cache_spec.lua

