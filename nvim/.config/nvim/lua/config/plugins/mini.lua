return {
  {
    'echasnovski/mini.nvim',
    version = false,
    config = function()
      require('mini.icons').setup()

      require('mini.statusline').setup({ use_icons = true })

      require('mini.files').setup()
      vim.keymap.set("n", "\\", "<cmd>lua MiniFiles.open()<cr>")

      require('mini.ai').setup()

      require('mini.pairs').setup()
    end
  },
}
