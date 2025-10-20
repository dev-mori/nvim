return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require('lspconfig')
    lspconfig.ruby_lsp.setup({
      cmd = { "ruby-lsp" },
      filetypes = { "ruby" },
      -- root_dir = lspconfig.util.root_pattern("Gemfile", ".git"),
      root_dir = function(fname)
        return lspconfig.util.root_pattern("Gemfile", ".git")(fname) or vim.fn.getcwd()
      end,
      init_options = {
        formatting = "auto",
      },
      single_file_support = true,
    })

    lspconfig.ts_ls.setup({
      filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
      root_dir = lspconfig.util.root_pattern("package.json", "tsconfig.json", ".git"),
      single_file_support = true,
    })
  end,
}
