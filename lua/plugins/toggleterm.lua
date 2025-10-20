return {
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = {
    --[[ things you want to change go here]]
  },
  keys = {
    { "<leader>v", "<cmd>ToggleTerm 1 direction=vertical size=40 name=v<cr>", desc = "toggleterm vertical" },
    { "<leader>h", "<cmd>ToggleTerm 2 direction=horizontal name=h<cr>", desc = "toggleterm horizontal" },
    { "<leader>i", "<cmd>ToggleTerm 3 direction=float name=i<cr>", desc = "toggleterm float" },
    {
      "<leader>co",
      function()
        local codex_term = require("toggleterm.terminal").Terminal:new({
          cmd = "codex",
          direction = "vertical",
          count = 5,
          hidden = true,
          close_on_exit = false,
        })
        codex_term:toggle(54)
      end,
      desc = "toggleterm codex",
    },
    {
      "<leader>g",
      function() require("toggleterm.terminal").Terminal:new({ cmd = "lazygit", direction = "float", count = 4, hidden = true }):toggle() end,
      desc = "toggleterm lazygit",
    },
  },
}
