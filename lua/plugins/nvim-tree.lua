return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  opts = {
    sort = {
      sorter = "case_sensitive",
    },
    view = {
      width = 30,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = false,
    },
  },
  keys = {
    { "<C-n>", "<cmd>NvimTreeToggle<CR>", desc = "nvimtree toggle window" },
  },
  dependency = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    -- optionally enable 24-bit colour
    vim.opt.termguicolors = true
    require("nvim-tree").setup {
      filters = {
        dotfiles = false,
      },
      update_focused_file = {
        enable = true,
      },
    }
  end,
}
