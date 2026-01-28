local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- Font settings
config.font_size = 12
config.font = wezterm.font_with_fallback({
	{ family = "JetBrains Mono" },
	{ family = "Symbols Nerd Font Mono" },
})
config.font_rules = {
	{
		font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
	},
	{
		italic = true,
		font = wezterm.font("JetBrains Mono", { italic = true }),
	},
}

-- Colors
config.color_scheme = "Catppuccin Mocha"

-- Appearance
config.cursor_blink_rate = 0
config.window_background_opacity = 0.95
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
config.macos_window_background_blur = 20

-- Miscellaneous settings
config.max_fps = 120
config.prefer_egl = true

return config
