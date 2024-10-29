return {
  "xiyaowong/transparent.nvim",
  config = function()
    require("transparent").setup({
      enable = true,
      extra_groups = {
        "NvimTree",
      },
      exclude = {},
    })
  end,
}
-- :TransparentEnable to enable transparency
