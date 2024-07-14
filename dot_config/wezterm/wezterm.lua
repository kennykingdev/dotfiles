local wezterm = require("wezterm")
local disable_default_super_key_bindings = require("disable_default_super_key_bindings")

return {
	font = wezterm.font("FiraCode Nerd Font Mono", {
		weight = "Regular",
	}),
	adjust_window_size_when_changing_font_size = false,
	hide_tab_bar_if_only_one_tab = true,
	scrollback_lines = 10000,
	enable_scroll_bar = true,
	switch_to_last_active_tab_when_closing_tab = true,
	window_padding = {
		left = "5px",
		right = "5px",
		top = "5px",
		bottom = "5px",
	},
	keys = disable_default_super_key_bindings.keys,
	color_scheme = "carbonfox",
	window_background_opacity = 0.90,
}
