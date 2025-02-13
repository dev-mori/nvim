return {
  "keaising/im-select.nvim",
  config = function()
    require("im_select").setup({
      default_command = "im-select",
      set_default_events = {"VimEnter", "InsertEnter", "InsertLeave"},
      set_previous_events = {},
    })
  end,
}
