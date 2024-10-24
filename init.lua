vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Luaファイルのパスを取得する関数
local function load_lua_files_from(dir)
  local path = vim.fn.stdpath('config') .. '/lua/' .. dir
  local files = vim.fn.glob(path .. '/*.lua', true, true)
  for _, file in ipairs(files) do
    local module = dir .. '.' .. vim.fn.fnamemodify(file, ':t:r')
    require(module)
  end
end

-- lua/config ディレクトリ内のすべての Lua ファイルを読み込む
load_lua_files_from('config')
