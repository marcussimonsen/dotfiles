-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

local color_schemes = {
    'Tokyo Night Moon',
    'Tokyo Night Day',
}
-- Function for changing color scheme on the fly
local function set_color_scheme(index, window)
    wezterm.GLOBAL.color_scheme_index = index
    window:set_config_overrides({ color_scheme = color_schemes[index] })
end

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

-- Font Settings
config.font = wezterm.font 'FiraCode Nerd Font'
config.font_size = 13.0
config.adjust_window_size_when_changing_font_size = false

config.enable_wayland = true

-- Custom keymaps
local keymaps = {
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
    -- Disable these default keymaps
    {
        key = 'w',
        mods = 'CTRL|SHIFT',
        action = wezterm.action.DisableDefaultAssignment,
    },
    {
        key = 'Tab',
        mods = 'CTRL',
        action = wezterm.action.DisableDefaultAssignment,
    },
}

-- Set color scheme shortcuts
for i = 1, #color_schemes do
    table.insert(keymaps, {
        key = 'F' .. tostring(i),
        mods = 'CTRL|SHIFT',
        action = wezterm.action_callback(function(window) set_color_scheme(i, window) end)
    })
end

for i = 1, 10 do
    table.insert(keymaps, {
        key = tostring(i % 10),
        mods = 'CTRL',
        action = wezterm.action.ActivateTab(i - 1),
    })
end

config.keys = keymaps

config.color_scheme = color_schemes[1]

-- and finally, return the configuration to wezterm
return config
