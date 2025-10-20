-- https://github.com/mason-org/mason-lspconfig.nvim/issues/576
return {
  "williamboman/mason-lspconfig.nvim",
  version = "v1.32.0",
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
