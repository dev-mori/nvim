return {
  "folke/which-key.nvim",
  -- https://github.com/folke/which-key.nvim/issues/809
  -- bug回避のためversion指定
  version = "3.10.0",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}
