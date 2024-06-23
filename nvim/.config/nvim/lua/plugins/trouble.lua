return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  config = function()
    local toggle = require("trouble").toggle
    local map = vim.keymap.set

    map("n", "<leader>xx", function()
      toggle()
    end)
    map("n", "<leader>xw", function()
      toggle("workspace_diagnostics")
    end)
    map("n", "<leader>xd", function()
      toggle("document_diagnostics")
    end)
    map("n", "<leader>xq", function()
      toggle("quickfix")
    end)
    map("n", "<leader>xl", function()
      toggle("loclist")
    end)
    map("n", "gR", function()
      toggle("lsp_references")
    end)
  end,
}
