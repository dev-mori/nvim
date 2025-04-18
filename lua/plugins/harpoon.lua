return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<C-a>", function() require("harpoon"):list():add() end, desc = "harpoon list add" },
    { "<C-e>", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end, desc = "harpoon toggle menu" },
    { "<leader>ha", function() require("harpoon"):list():select(1) end, desc = "harpoon select 1" },
    { "<leader>hs", function() require("harpoon"):list():select(2) end, desc = "harpoon select 2" },
    { "<leader>hd", function() require("harpoon"):list():select(3) end, desc = "harpoon select 3" },
    { "<leader>hf", function() require("harpoon"):list():select(4) end, desc = "harpoon select 4" },
    { "<Tab>", function() require("harpoon"):list():next({ ui_nav_wrap = true }) end, desc = "harpoon list next" },
    { "<S-Tab>", function() require("harpoon"):list():prev({ ui_nav_wrap = true }) end, desc = "harpoon list prev" },
  }
}
