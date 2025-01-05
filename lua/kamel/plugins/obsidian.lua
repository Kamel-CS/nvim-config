return {
  "epwalsh/obsidian.nvim",
  version = "*",  -- latest release
  lazy = true,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",  -- Required dependency
  },
  opts = {
    dir = "~/Obsidian/my-vault/", -- Main vault directory
    templates = {
      subdir = "templates", -- Relative path to your templates folder inside the vault
      date_format = "%Y-%m-%d-%a",
      time_format = "%H:%M",
    },
    disable_frontmatter = true,  -- Disable automatic front matter

    -- Add daily notes configuration here
    daily_notes = {
      folder = "daily",                -- Folder to store daily notes (relative to vault)
      date_format = "%Y-%m-%d-%a",        -- Format for daily note filenames
      template = "templates/daily.md",
    },
  },
  config = function(_, opts)
    -- Initialize the plugin with the options above
    require("obsidian").setup(opts)

    local keymap = vim.keymap  -- Localized for easy keymap setup

    -- Custom keybindings for Obsidian-related actions
    keymap.set("n", "<leader>oo", "<cmd>ObsidianOpen<cr>", { desc = "Open the current note in Obsidian app" })
    keymap.set("n", "<leader>on", "<cmd>ObsidianNew<cr>", { desc = "Create a new note" })
    keymap.set("n", "<leader>oq", "<cmd>ObsidianQuickSwitch<cr>", { desc = "Quickly switch between notes" })
    keymap.set("n", "<leader>ol", "<cmd>ObsidianFollowLink<cr>", { desc = "Follow the link under the cursor" })
    keymap.set("n", "<leader>os", "<cmd>ObsidianSearch<cr>", { desc = "Search for notes in the vault" })
    keymap.set("n", "<leader>ot", "<cmd>ObsidianTemplate<cr>", { desc = "Insert a template into current note" })

    -- Add keybinding for daily notes
    keymap.set("n", "<leader>od", "<cmd>ObsidianToday<cr>", { desc = "Open today's daily note" })
  end,
}
