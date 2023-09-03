set rtp+=.
set rtp+=./misc/plenary

lua << EOF
local onedark = require("onedark")
onedark.setup({
    cache_path = vim.fn.expand(vim.fn.stdpath("cache") .. "/onedark_test/"),
    colors = {
        dark_red = "require('onedark.helpers').darken('red', 10, 'onedark')",
        light_blue = "require('onedark.helpers').lighten('blue', 10, 'onelight')",
        bright_green = "require('onedark.helpers').brighten('green', 10, 'onedark')",
        basic_red = "require('onedark.helpers').darken('#FF0000', 5)",
    },
    highlights = {
        DarkHighlight = {
            fg = "${dark_red}",
        },
        LightHighlight = {
            fg = "${light_blue}",
        },
        BrightHighlight = {
            fg = "${bright_green}",
        },
        BasicRedHighlight = {
            fg = "${basic_red}",
        },
    },
    filetypes = {
        all = false,
    },
    plugins = {
        all = false,
    },
})
vim.cmd [[colorscheme onedark]]
EOF

runtime! plugin/plenary.vim
command HelpersSpec PlenaryBustedFile tests/helpers_spec.lua

