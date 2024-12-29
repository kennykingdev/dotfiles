-- local oxocarbon = {
--   "nyoom-engineering/oxocarbon.nvim",
--   lazy = false,
--   config = function()
--     vim.cmd("colorscheme oxocarbon")
--   end,
-- }

local carbonfox = {
  "EdenEast/nightfox.nvim",
  lazy = false,
  opts = {
    options = {
      transparent = true,
    },
  },
  config = function()
    vim.cmd("colorscheme carbonfox")
  end,
}

-- local flexoki = {
--   'kepano/flexoki-neovim',
--   lazy = false,
--   name = 'flexoki',
--   config = function()
--     vim.cmd('colorscheme flexoki-dark')
--   end
-- }

return carbonfox
