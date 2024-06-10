-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}
config.pane_focus_follows_mouse = true
config.tab_and_split_indices_are_zero_based = true

-- Font Settings
config.font = wezterm.font 'FiraCode Nerd Font'
config.font_size = 13.0
config.adjust_window_size_when_changing_font_size = false

-- Custom keymaps
config.keys = {
    {
        key = '%',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
    },
    {
        key = '"',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
    },
    {
        key = 'c',
        mods = 'CTRL|ALT',
        action = wezterm.action.SpawnTab 'DefaultDomain',
    },
    {
        key = 'x',
        mods = 'CTRL',
        action = wezterm.action.CloseCurrentPane { confirm = true },
    },
    {
        key = '&',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.CloseCurrentTab { confirm = true },
    },
    {
        key = 'n',
        mods = 'CTRL',
        action = wezterm.action.ActivateTabRelative(1),
    },
    {
        key = 'p',
        mods = 'CTRL',
        action = wezterm.action.ActivateTabRelative(-1),
    },
    {
        key = 'l',
        mods = 'CTRL',
        action = wezterm.action.ActivatePaneDirection 'Right',
    },
    {
        key = 'h',
        mods = 'CTRL',
        action = wezterm.action.ActivatePaneDirection 'Left',
    },
    {
        key = 'j',
        mods = 'CTRL',
        action = wezterm.action.ActivatePaneDirection 'Down',
    },
    {
        key = 'k',
        mods = 'CTRL',
        action = wezterm.action.ActivatePaneDirection 'Up',
    },
}

config.color_scheme = 'Tokyo Night Moon'

-- and finally, return the configuration to wezterm
return config
