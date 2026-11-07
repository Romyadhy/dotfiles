local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- NOTE: PowerShell Config Start
config.default_prog = { "pwsh.exe", "-NoLogo" }

config.initial_cols = 80
config.initial_rows = 25
-- config.color_scheme = "Dracula (Official)"
config.color_scheme = "tokyonight_night"
-- config.color_scheme = "Dracula (base16)"
-- config.color_scheme = "Dracula (Gogh)"
-- config.color_scheme = "duskfox"

-- config.color_scheme = "Black Metal (Bathory) (base16)"
-- config.window_background_image = "C:/Users/ASUS/OneDrive/Pictures/SavedPict/japanwlpp.jpg"
--
config.enable_kitty_graphics = true

-- NOTE: sanity wezterm settings
config.warn_about_missing_glyphs = false
config.window_close_confirmation = "NeverPrompt"
config.audible_bell = "Disabled"

-- config.window_background_image = "C:/Users/ASUS/OneDrive/Pictures/WALPAPER/wallpaperflare.com_wallpaper (2).jpg"
config.window_background_image = "C:/Users/ASUS/OneDrive/Pictures/WALPAPER/mushashi5.jpg"
config.window_background_opacity = 0.97
-- config.window_background_image = "C:/Users/ASUS/Downloads/picture/macba3.jpg"
config.window_background_image_hsb = {
	brightness = 0.08,
	hue = 1.0,
	saturation = 1.0,
}

config.animation_fps = 1
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"

config.window_decorations = "RESIZE"
config.enable_tab_bar = true
config.tab_bar_at_bottom = true

config.use_fancy_tab_bar = false
config.window_padding = {
	left = 20,
	right = 20,
	top = 20,
	bottom = 0,
}

-- config.scrollback_lines = 10000
config.default_cursor_style = "BlinkingBar"
config.cursor_blink_rate = 800
config.cursor_blink_ease_in = "Linear"
config.cursor_blink_ease_out = "Linear"
config.cursor_thickness = 2.0

-- NOTE: Font with Nerd Font so icons work in terminal too
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 13.0
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

-- NOTE: Hide tab bar when only one tab open (cleaner look)
config.hide_tab_bar_if_only_one_tab = true

-- NOTE: Split screen
config.keys = {
	-- Split vertically
	{
		key = '"',
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.SplitVertical({
			domain = "CurrentPaneDomain",
		}),
	},

	-- Split horizontally
	{
		key = "%",
		mods = "CTRL|SHIFT|ALT",
		action = wezterm.action.SplitHorizontal({
			domain = "CurrentPaneDomain",
		}),
	},

	-- Navigate panes
	{
		key = "h",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},

	{
		key = "j",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},

	{
		key = "k",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},

	{
		key = "l",
		mods = "CTRL|SHIFT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},

	-- Close current pane
	{
		key = "x",
		mods = "CTRL",
		action = wezterm.action.CloseCurrentPane({
			confirm = true,
		}),
	},
}
return config
