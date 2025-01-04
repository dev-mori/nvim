local api = vim.api

api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
  command = "checktime",
})

api.nvim_create_user_command("FindAndReplace", function(opts)
  vim.api.nvim_command(string.format("cdo s/%s/%s", opts.fargs[1], opts.fargs[2]))
  vim.api.nvim_command("cfdo update")
end, { nargs = "*" })

api.nvim_set_keymap(
  "n",
  "<leader>r",
  ":FindAndReplace ",
  { noremap = true }
)
