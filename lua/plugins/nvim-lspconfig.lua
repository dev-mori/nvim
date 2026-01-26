return {
  "neovim/nvim-lspconfig",
  -- nvim-lspconfig は「各言語サーバの既定設定集」として残しつつ、
  -- 有効化・上書きは Neovim 標準 API で行う
  config = function()
    -- Ruby
    vim.lsp.config("ruby_lsp", {
      cmd = { "ruby-lsp" },
      filetypes = { "ruby" },
      -- 旧: root_dir = lspconfig.util.root_pattern("Gemfile", ".git")
      -- 新: root_markers で指定
      root_markers = { "Gemfile", ".git" },
      init_options = {
        formatting = "auto",
      },
      single_file_support = true,
    })
    vim.lsp.enable("ruby_lsp")

    -- TypeScript / JavaScript
    vim.lsp.config("ts_ls", {
      filetypes = {
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
      },
      root_markers = { "package.json", "tsconfig.json", ".git" },
      single_file_support = true,
      -- （必要に応じて settings や init_options をここに追加）
    })
    vim.lsp.enable("ts_ls")

    -- Python
    vim.lsp.config("pyright", {
      filetypes = { "python" },
      root_markers = { "pyproject.toml", "setup.py", ".git" },
      single_file_support = true,
      -- （必要に応じて settings や init_options をここに追加）
    })
    vim.lsp.enable("pyright")

    -- 参考: 共通キーマップ等は on_attach を直接渡す代わりに LspAttach で
    -- 定義すると既定 on_attach を上書きせずに共存できます（on_attach 自体は非推奨ではありません）
    -- vim.api.nvim_create_autocmd("LspAttach", {
    --   callback = function(args)
    --     local bufnr = args.buf
    --     vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
    --     -- ほか必要なマップ
    --   end,
    -- })
  end,
}
