local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.font = wezterm.font_with_fallback {
    {
        family = 'FiraCode Nerd Font',
        harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
    },
    'Noto Color Emoji',
    'Noto Sans CJK',
}
config.font_size = 12

config.enable_scroll_bar = true

config.color_scheme = 'Ayu Dark (Gogh)'

return config