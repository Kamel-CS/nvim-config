return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
      require("toggleterm").setup{
        size = 18,  -- Size for horizontal or vertical modes (not used in float mode)
        open_mapping = [[<c-/>]],  -- Keybind to toggle the terminal
        direction = 'float',  -- Set to float for overlay terminal
        start_in_insert = true,  -- Automatically start in insert mode
        shade_terminals = true,  -- Adds shading to make the terminal stand out
        close_on_exit = true,  -- Closes terminal window when process exits
        persist_size = true,  -- Keeps the terminal size consistent across sessions

        -- Floating window options for blurred background and border
        float_opts = {
          border = 'curved',  -- Use 'shadow' border for a nice visual effect (can try 'curved', 'single', etc.)
          width = math.floor(vim.o.columns * 0.8),  -- 80% of the editor width
          height = math.floor(vim.o.lines * 0.8),   -- 80% of the editor height
          winblend = 20,  -- Sets the transparency (0 is opaque, higher is more transparent)
          -- For true background blur, you will need a terminal emulator or Neovim theme supporting it
          -- This is a visual tweak for transparency in the Neovim interface
        },
      }
    end
  }
}
