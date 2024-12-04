return {
  "mfussenegger/nvim-dap",
  keys = {
    { "<leader>dc", "<cmd>lua require('dap').continue()<CR>", desc = "dap continue" },
    { "<leader>dd", "<cmd>lua require('dap').step_over()<CR>", desc = "dap step over" },
    { "<leader>di", "<cmd>lua require('dap').step_into()<CR>", desc = "dap step into" },
    { "<leader>do", "<cmd>lua require('dap').step_out()<CR>", desc = "dap step out" },
    { "<leader>db", "<cmd>lua require('dap').toggle_breakpoint()<CR>", desc = "dap toggle breakpoint" },
    { "<leader>dB", "<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", desc = "dap set breakpoint" },
    { "<leader>dl", "<cmd>lua require('dap').list_breakpoints()<CR>", desc = "dap list breakpoints" },
    { "<leader>dr", "<cmd>lua require('dap').repl.toggle()<CR>", desc = "dap repl toggle" },
    { "<leader>ds", "<cmd>lua require('dap').run_last()<CR>", desc = "dap run last" },
  },
}
