return {
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim', build = 'make'
      },
      'nvim-telescope/telescope-ui-select.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('telescope').load_extension('fzf')
      require('telescope').load_extension('ui-select')

      require('telescope').setup({
        defaults = require('telescope.themes').get_dropdown(),
      })

      -- Telescope related keymaps
      local map = vim.keymap.set

      map("n", "<leader>ff",
        require('telescope.builtin').find_files,
        { desc = "[F]ind [F]iles" })

      map("n", "<leader>fg",
        require('telescope.builtin').live_grep,
        { desc = "[F]ind [G]rep" })

      map("n", "<leader>fb",
        require('telescope.builtin').buffers,
        { desc = "[F]ind [B]uffers" })

      map("n", "<leader>fh",
        require('telescope.builtin').help_tags,
        { desc = "[F]ind [H]elp tags" })
    end
  },
}
