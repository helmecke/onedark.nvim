if exists('g:loaded_onedark') | finish | endif

command! OnedarkCache lua require("onedark").cache()
command! OnedarkClean lua require("onedark").clean()
command! OnedarkColors lua require("onedark.utils.colorizer").show()
command! OnedarkExportToAlacritty lua require("onedark.extra.alacritty").show_in_buffer('OneDark Alacritty')
command! OnedarkExportToKitty lua require("onedark.extra.kitty").show_in_buffer('OneDark Kitty')
command! OnedarkExportToWezterm lua require("onedark.extra.wezterm").show_in_buffer('OneDark Wezterm')
command! OnedarkExportToWindowsTerminal lua require("onedark.extra.windows_terminal").show_in_buffer('OneDark Windows Terminal')
command! OnedarkExportToFoot lua require("onedark.extra.foot").show_in_buffer('OneDark Foot')

let g:loaded_onedark = 1
