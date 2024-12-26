return {
  {
    'hiphish/rainbow-delimiters.nvim',
    config = function()
      require('rainbow-delimiters.setup').setup({
        highlight = {
          'RainbowDelimiterViolet',
          'RainbowDelimiterCyan',
          'RainbowDelimiterBlue',
          'RainbowDelimiterGreen',
          'RainbowDelimiterYellow',
          'RainbowDelimiterOrange',
          -- 'RainbowDelimiterRed',
        },
      })
    end,
  }
}
