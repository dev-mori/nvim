local opt = vim.opt

opt.clipboard = "unnamedplus"
opt.expandtab = true
opt.foldlevel = 99
opt.ignorecase = true
opt.smartcase = true -- Don't ignore case with capitals
opt.list = true -- Show some invisible characters (tabs...
opt.scroll = 7 -- Jump 7 lines when scrolling
opt.scrolloff = 10 -- Lines of context
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- Size of an indent
opt.showmode = false -- Dont show mode since we have a statusline
opt.sidescrolloff = 8 -- Columns of context
opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
opt.smartindent = true -- Insert indents automatically
opt.splitright = true -- Put new windows right current
opt.splitbelow = true
opt.tabstop = 2 -- Number of spaces tabs count for
opt.softtabstop = 2
opt.undofile = true
opt.undolevels = 10000
opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode
opt.winminwidth = 5 -- Minimum window width
opt.wildmenu = true
opt.cursorline = true
opt.cursorlineopt = "number"
opt.foldmethod = "syntax"
opt.incsearch = true
opt.autoread = true
opt.completeopt = "menu,menuone,noselect,noinsert,popup" -- for copilot chat if neovim < 0.11.0
-- opt.number = true -- Show line numbers
-- opt.relativenumber = true -- Relative line numbers

-- if vim.fn.has("nvim-0.10") == 1 then
--   opt.smoothscroll = true
--   opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()"
--   opt.foldmethod = "expr"
--   opt.foldtext = ""
-- else
--   opt.foldmethod = "indent"
--   opt.foldtext = "v:lua.require'lazyvim.util'.ui.foldtext()"
-- end
