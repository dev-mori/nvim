return {
  "CopilotC-Nvim/CopilotChat.nvim",
  branch = "main",
  dependencies = {
    "zbirenbaum/copilot.lua",
    "nvim-lua/plenary.nvim",
  },
  build = "make tiktoken",
  opts = {
    debug = true,
  },
  keys = {
    { "<leader>co", "<cmd>CopilotChatToggle<CR>", desc = "Toggle CopilotChat" },
  },
}
