return {
  'nvim-telescope/telescope.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "telescope find files" },
    { "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "telescope live grep" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "telescope buffers" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "telescope help tags" },
    { "<leader>fs", "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input('Grep For > ')})<cr>", desc = "telescope grep string" },
  },
  config = function()
    -- https://elanmed.dev/blog/global-find-and-replace-in-neovim
    local telescope = require("telescope")
    local actions = require("telescope.actions")
    local action_state = require("telescope.actions.state")

    local custom_actions = {}

    function custom_actions.fzf_multi_select(prompt_bufnr)
      local function get_table_size(t)
        local count = 0
        for _ in pairs(t) do
          count = count + 1
        end
        return count
      end

      local picker = action_state.get_current_picker(prompt_bufnr)
      local num_selections = get_table_size(picker:get_multi_selection())

      if num_selections > 1 then
        actions.send_selected_to_qflist(prompt_bufnr)
        actions.open_qflist()
      else
        actions.file_edit(prompt_bufnr)
      end
    end

    require('telescope').setup {
      defaults = {
        mappings = {
          n = {
            ["<cr>"] = custom_actions.fzf_multi_select,
          },
        },
      },
    }
  end,
}
