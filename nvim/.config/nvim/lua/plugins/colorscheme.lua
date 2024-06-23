local carbonfox = {
  "EdenEast/nightfox.nvim",
  lazy = false,
  opts = {
    options = {
      transparent = true,
    },
    styles = {
      comments = "italic", -- is this italic?
    },
  },
  config = function()
    vim.cmd('colorscheme carbonfox')
  end
}

local flexoki = {
  'kepano/flexoki-neovim',
  lazy = false,
  name = 'flexoki',
  config = function()
    vim.cmd('colorscheme flexoki-dark')
  end
}

return carbonfox
