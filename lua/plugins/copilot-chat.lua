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
    mappings = {
      complete = {
        insert = '',
      }
    }
  },
  keys = {
    { "<leader>co", "<cmd>CopilotChatToggle<CR>", desc = "Toggle CopilotChat" },
  },
}
