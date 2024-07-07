return {
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    opts = {
      --[[ things you want to change go here]]
    },
    keys = {
      { "<leader>v", "<cmd>ToggleTerm direction=vertical size=40<cr>", desc = "toggleterm vertical" },
      { "<leader>h", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "toggleterm horizontal" },
      { "<leader>i", "<cmd>ToggleTerm direction=float<cr>", desc = "toggleterm float" },
    },
  },
}
