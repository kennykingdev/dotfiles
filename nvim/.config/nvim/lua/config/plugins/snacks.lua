return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      -- bigfile adds a new filetype bigfile to Neovim that triggers when the file is larger than the configured size. This automatically prevents things like LSP and Treesitter attaching to the buffer.
      bigfile = { enabled = true },
      -- dashboard = { enabled = true },
      input = { enabled = true },
      notifier = {
        enabled = true,
        style = "minimal",
        width = {
          max = 0.6
        }
      },
      quickfile = { enabled = true },
      -- scroll = { enabled = true },
      statuscolumn = { enabled = true },
      -- words = { enabled = true },
    },
    keys = {
      { "<leader>bd", function() Snacks.bufdelete() end, desc = "[B]uffer [D]elete" },
      { "<leader>gg", function() Snacks.lazygit() end,   desc = "[G]it Lazy[G]it" }
    }
  },
}
