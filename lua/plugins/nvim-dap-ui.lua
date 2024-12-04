return {
  "rcarriga/nvim-dap-ui",
  dependencies = {
    "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"
  },
  keys = {
    { "<leader>du", "<cmd>lua require('dapui').toggle()<CR>", desc = "dapui toggle" },
    -- { "<leader>dui", "<cmd>lua require('dapui').toggle_breakpoint()<CR>", desc = "dapui toggle breakpoint" },
    -- { "<leader>duh", "<cmd>lua require('dapui').hover()<CR>", desc = "dapui hover" },
    -- { "<leader>duf", "<cmd>lua require('dapui').float_element()<CR>", desc = "dapui float element" },
    -- { "<leader>duF", "<cmd>lua require('dapui').float_element({ scope = 'stack' })<CR>", desc = "dapui float element stack" },
    -- { "<leader>duw", "<cmd>lua require('dapui').workspace_view.toggle()<CR>", desc = "dapui workspace view toggle" },
    -- { "<leader>duW", "<cmd>lua require('dapui').workspace_view.workspace()<CR>", desc = "dapui workspace view workspace" },
    -- { "<leader>duR", "<cmd>lua require('dapui').run_last()<CR>", desc = "dapui run last" },
  },
}
