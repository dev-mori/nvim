local map = vim.keymap.set

-- better up/down
map({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { desc = "Down", expr = true, silent = true })
map({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })
map({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { desc = "Up", expr = true, silent = true })

-- Move to window using the <ctrl> hjkl keys
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- buffers
map("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
map("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", "<leader>bv", "<cmd>vnew<cr>", { desc = "New Buffer Vertical" })

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- escape from insert
map("i", "jk", "<esc>", { desc = "Escape from insert", silent = true })

-- save file
map({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save File" })

-- better indenting
map("v", "<", "<gv")
map("v", ">", ">gv")

-- Terminal Mappings
map("t", "jk", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
map("t", "<C-h>", "<cmd>wincmd h<cr>", { desc = "Go to Left Window" })
map("t", "<C-j>", "<cmd>wincmd j<cr>", { desc = "Go to Lower Window" })
map("t", "<C-k>", "<cmd>wincmd k<cr>", { desc = "Go to Upper Window" })
map("t", "<C-l>", "<cmd>wincmd l<cr>", { desc = "Go to Right Window" })

-- windows
map("n", "<leader>ww", "<C-W>p", { desc = "Other Window", remap = true })
map("n", "<leader>wd", "<C-W>c", { desc = "Delete Window", remap = true })
map("n", "<leader>wh", "<C-W>s", { desc = "Split Window Below", remap = true })
map("n", "<leader>wv", "<C-W>v", { desc = "Split Window Right", remap = true })
map("n", "<leader>wm", function() LazyVim.toggle.maximize() end, { desc = "Maximize Toggle" })

-- tabs
map("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
map("n", "<leader><tab>o", "<cmd>tabonly<cr>", { desc = "Close Other Tabs" })
map("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
map("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader><tab>d", "<cmd>tabclose<cr>", { desc = "Close Tab" })
map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

-- paste without register
map("x", "p", '"_dP', { desc = "Paste without Register" })

-- quickfix list
-- map("n", "<leader>cc", ":cclose<CR>", { desc = "Close quickfix list", noremap = true, silent = true })
map("n", "<leader>cn", ":cnext<CR>", { desc = "Next quickfix item", noremap = true, silent = true })
map("n", "<leader>cp", ":cprev<CR>", { desc = "Previous quickfix item", noremap = true, silent = true })
map("n", "<leader>cf", ":cfirst<CR>", { desc = "First quickfix item", noremap = true, silent = true })
map("n", "<leader>cl", ":clast<CR>", { desc = "Last quickfix item", noremap = true, silent = true })
map("n", "<leader>cdo", ":cdo ", { desc = "Execute command on each quickfix entry", noremap = true, silent = false })
map("n", "<leader>cdn", ":cdo normal ", { desc = "Execute command on each quickfix entry", noremap = true, silent = false })
map("n", "<leader>cfdo", ":cfdo ", { desc = "Execute command on each quickfix file", noremap = true, silent = false })
map("n", "<leader>cfdn", ":cfdo normal ", { desc = "Execute command on each quickfix file", noremap = true, silent = false })
