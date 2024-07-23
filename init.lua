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

if vim.fn.has("wsl") == 1 then
    if vim.fn.executable("wl-copy") == 0 then
        print("wl-clipboard not found, clipboard integration won't work")
    else
        vim.g.clipboard = {
            name = "wl-clipboard (wsl)",
            copy = {
                ["+"] = 'wl-copy --foreground --type text/plain',
                ["*"] = 'wl-copy --foreground --primary --type text/plain',
            },
            paste = {
                ["+"] = (function()
                    return vim.fn.systemlist('wl-paste --no-newline|sed -e "s/\r$//"', {''}, 1) -- '1' keeps empty lines
                end),
                ["*"] = (function() 
                    return vim.fn.systemlist('wl-paste --primary --no-newline|sed -e "s/\r$//"', {''}, 1)
                end),
            },
            cache_enabled = true
        }
    end
end
