local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local act = wezterm.action

config.max_fps = 144
config.default_cursor_style = "BlinkingBlock"
config.animation_fps = 1
config.cursor_blink_rate = 500

return {
  -- Esquema de cores
  color_scheme = "Catppuccin Mocha", -- Nome de um tema pré-instalado

  -- Fonte
  font = wezterm.font("FiraCode Nerd Font"), -- Escolha uma fonte monoespaçada
  font_size = 12,

  -- Aparência da janela
  window_background_opacity = 0.8, -- Transparência (0.0 a 1.0)
  window_padding = { left = 10, right = 10, top = 10, bottom = 10 },
  enable_tab_bar = false, -- Remove a barra de abas se desejar

  -- Cursor
  default_cursor_style = "BlinkingBar", -- Ou "SteadyBlock", "BlinkingUnderline", etc.

  -- Atalhos personalizados (exemplo: ajustar tamanho da fonte)
  keys = {
    { key = "+", mods = "CTRL|SHIFT", action = "IncreaseFontSize" },
    { key = "-", mods = "CTRL|SHIFT", action = "DecreaseFontSize" },
    { key = "h", mods = "CTRL|SHIFT", action = wezterm.action.SplitPane({ direction = "Right", size =  { Percent = 50 } }) },
    { key = "j", mods = "CTRL|SHIFT", action = wezterm.action.SplitPane({ direction = "Down", size =  { Percent = 50 } }) },
    {
      key = "U",
      mods = "CTRL|SHIFT",
      action = act.AdjustPaneSize({ "Left", 5 }),
    },
    {
      key = "I",
      mods = "CTRL|SHIFT",
      action = act.AdjustPaneSize({ "Down", 5 }),
    },
    {
      key = "O",
      mods = "CTRL|SHIFT",
      action = act.AdjustPaneSize({ "Up", 5 }),
    },
    {
      key = "P",
      mods = "CTRL|SHIFT",
      action = act.AdjustPaneSize({ "Right", 5 }),
    },
    { key = "9", mods = "CTRL", action = act.PaneSelect },
    { key = "L", mods = "CTRL", action = act.ShowDebugOverlay },
  },
}
