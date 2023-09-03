set rtp+=.
set rtp+=./misc/plenary

lua << EOF
local onedark = require("onedark")
onedark.setup({
    cache_path = vim.fn.expand(vim.fn.stdpath("cache") .. "/onedark_test/"),
    styles = {
        variables = "bold"
    },
    options = {
        terminal_colors = true,
        cursorline = true,
        highlight_inactive_windows = true,
    },
    filetypes = {
        all = false,
        javascript = true,
    },
    plugins = {
        all = false,
        op_nvim = true,
        treesitter = true,
    },
    colors = {
        onedark = {
            red = "#e06c75", -- Overwrite red to onedark's red
            oli_color = "#ff00ff",
            diff_add = "#ff0000"
        },
        onelight = {
            oli_color = "#f0f0f0",
        }
    },
    highlights = {
        Cursor = {},
        Constant = {
            fg = "${blue}",
            blend = 100,
        },
        Directory = {
            style = "bold",
        },
        ["@keyword"] = {
            fg = "${purple}"
        },
        Repeat = {
            fg = "${blue}"
        },
        Statement = {
            fg = "${oli_color}"
        },
        TestHighlightGroup = {
            fg = "${red}",
            style = "italic"
        },
        TestHighlightGroup2 = { link = "Statement" },
        ConditionalByBackground = { fg = { dark = "#FF0000", light = "#FFFFFF" } },
        ConditionalByBackgroundByVariable = { bg = { dark = "${red}", light = "${blue}" } },
        ConditionalByTheme = { bg = { onedark = "${red}", onelight = "${blue}" } },
        TestHighlightGroup3 = {
          reverse = true,
        },
        Title = {
          underline = true,
          extend = true
        }
    },
})
vim.cmd [[colorscheme onedark]]
EOF

runtime! plugin/plenary.vim
command ConfigSpec PlenaryBustedFile tests/config_spec.lua

