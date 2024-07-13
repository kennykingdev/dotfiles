local wezterm = require("wezterm")
local act = wezterm.action

return {
	keys = {
		{ key = "-", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "0", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "1", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "2", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "3", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "4", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "5", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "6", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "7", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "8", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "9", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "=", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "[", mods = "SHIFT|SUPER", action = act.DisableDefaultAssignment },
		{ key = "]", mods = "SHIFT|SUPER", action = act.DisableDefaultAssignment },
		{ key = "c", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "f", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "k", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "m", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "n", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "r", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "t", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "v", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "w", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "{", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "{", mods = "SHIFT|SUPER", action = act.DisableDefaultAssignment },
		{ key = "}", mods = "SUPER", action = act.DisableDefaultAssignment },
		{ key = "}", mods = "SHIFT|SUPER", action = act.DisableDefaultAssignment },
	},
}
