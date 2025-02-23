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

-- Code snippet from: https://github.com/wezterm/wezterm/issues/1742#issuecomment-1075333507
-- Finds currently in use cursor theme and cursor size, applies them to the wezterm config
local success, stdout, stderr = wezterm.run_child_process({"gsettings", "get", "org.gnome.desktop.interface", "cursor-theme"})
if success then
  config.xcursor_theme = stdout:gsub("'(.+)'\n", "%1")
end

local success, stdout, stderr = wezterm.run_child_process({"gsettings", "get", "org.gnome.desktop.interface", "cursor-size"})
if success then
  config.xcursor_size = tonumber(stdout)
end
-- Code snippet end

return config