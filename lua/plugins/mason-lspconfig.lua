return {
  "williamboman/mason-lspconfig.nvim",
  config = function()
    require("mason-lspconfig").setup {
      ensure_installed = {
        "ts_ls",
        "pyright",
      },
      automatic_installation = true,
    }
  end,
}
