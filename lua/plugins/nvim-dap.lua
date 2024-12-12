return {
  "mfussenegger/nvim-dap",
  dependencies = {
    { "rcarriga/nvim-dap-ui" },
    { "mfussenegger/nvim-dap-python" },
    { "nvim-neotest/nvim-nio" },
  },
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
  config = function()
    local dap = require('dap')
    local dapui = require('dapui')
    local dap_python = require('dap-python')

    -- nvim-dap-uiの設定
    dapui.setup()

    -- -- セッション開始・終了時のUI開閉
    -- dap.listeners.after.event_initialized["dapui_config"] = function()
    --   dapui.open()
    -- end
    -- dap.listeners.before.event_terminated["dapui_config"] = function()
    --   dapui.close()
    -- end
    -- dap.listeners.before.event_exited["dapui_config"] = function()
    --   dapui.close()
    -- end
    -- -- Pythonのデバッグ設定
    -- dap_python.setup(vim.fn.trim(vim.fn.system("poetry env info --path")) .. "/bin/python")
    -- dap_python.test_runner = 'pytest'
    --
    -- -- pytest用のデバッグ構成
    -- dap.configurations.python = {
    --   {
    --     type = "python",
    --     request = "launch",
    --     name = "Launch Tests",
    --     program = "${file}",
    --     args = { "-m", "poetry", "run", "pytest", "-v" },
    --     cwd = vim.fn.getcwd(),
    --     pythonPath = function()
    --       return vim.fn.trim(vim.fn.system("poetry env info --path")) .. "/bin/python"
    --     end,
    --   },
    -- }
  end,
}
