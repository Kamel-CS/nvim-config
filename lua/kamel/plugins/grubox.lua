-- ~/.config/nvim/plugins/gruvbox.lua
return {
  'morhetz/gruvbox',  -- Gruvbox plugin
  config = function()
    -- Set the colorscheme to gruvbox
    vim.cmd('colorscheme gruvbox')

    -- Optional: Customize Gruvbox settings
    vim.g.gruvbox_contrast_dark = 'hard'  -- Set dark contrast (you can change 'hard' to 'medium' or 'soft')
    vim.g.gruvbox_invert_selection = 0   -- Disable inversion of selection highlights (optional)
  end
}
