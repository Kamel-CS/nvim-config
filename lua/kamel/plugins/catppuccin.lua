return {
  'catppuccin/nvim',
  config = function()
    -- Set the colorscheme
    vim.cmd('colorscheme catppuccin')

    -- Optional: Customize the theme flavor
    vim.g.catppuccin_flavour = "mocha"  -- Choose from macchiato, mocha, etc.
    vim.g.catppuccin_transparent_background = true  -- Optional transparency
  end
}
