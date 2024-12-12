local api = vim.api

api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
  command = "checktime",
})
