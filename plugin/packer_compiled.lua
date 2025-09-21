-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/codeman/.cache/dimitry/packer_hererocks/2.1.1753364724/share/lua/5.1/?.lua;/home/codeman/.cache/dimitry/packer_hererocks/2.1.1753364724/share/lua/5.1/?/init.lua;/home/codeman/.cache/dimitry/packer_hererocks/2.1.1753364724/lib/luarocks/rocks-5.1/?.lua;/home/codeman/.cache/dimitry/packer_hererocks/2.1.1753364724/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/codeman/.cache/dimitry/packer_hererocks/2.1.1753364724/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["autoclose.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/autoclose.nvim",
    url = "https://github.com/m4xshen/autoclose.nvim"
  },
  ["base16-gruvbox-dark-hard"] = {
    config = { "\27LJ\2\nH\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0)colorscheme base16-gruvbox-dark-hard\bcmd\bvim\0" },
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/base16-gruvbox-dark-hard",
    url = "https://github.com/wincent/base16-nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["darkvoid.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/darkvoid.nvim",
    url = "https://github.com/aliqyan-21/darkvoid.nvim"
  },
  ["gruber-darker"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\30colorscheme gruber-darker\bcmd\bvim\0" },
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/gruber-darker",
    url = "https://github.com/blazkowolf/gruber-darker.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  horizon = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\24colorscheme horizon\bcmd\bvim\0" },
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/horizon",
    url = "https://github.com/lunarvim/horizon.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lightline.vim"] = {
    config = { "\27LJ\2\nm\0\1\4\0\b\0\0166\1\0\0009\1\1\0019\1\2\1'\3\3\0B\1\2\2\a\1\4\0X\1\3€'\1\5\0L\1\2\0X\1\5€6\1\0\0009\1\1\0019\1\6\1'\3\a\0D\1\2\0K\0\1\0\6%\vgetreg\14[No Name]\5\b%:t\vexpand\afn\bvim»\4\1\0\5\0\22\0#6\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\3\0005\1\r\0005\2\a\0004\3\3\0005\4\5\0>\4\1\0035\4\6\0>\4\2\3=\3\b\0024\3\4\0005\4\t\0>\4\1\0035\4\n\0>\4\2\0035\4\v\0>\4\3\3=\3\f\2=\2\14\0015\2\15\0=\2\16\1=\1\4\0003\0\17\0007\0\18\0006\0\0\0009\0\19\0009\0\20\0'\2\21\0+\3\2\0B\0\3\1K\0\1\0—\1                function! g:LightlineFilename()\n                return v:lua.LightlineFilenameInLua()\n                endfunction\n                \14nvim_exec\bapi\27LightlineFilenameInLua\0\23component_function\1\0\1\rfilename\22LightlineFilename\vactive\1\0\2\23component_function\0\vactive\0\nright\1\3\0\0\17fileencoding\rfiletype\1\2\0\0\fpercent\1\2\0\0\rlineinfo\tleft\1\0\2\nright\0\tleft\0\1\4\0\0\rreadonly\rfilename\rmodified\1\3\0\0\tmode\npaste\14lightline\6g\rshowmode\6o\bvim\0" },
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/lightline.vim",
    url = "https://github.com/itchyny/lightline.vim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0" },
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["supermaven-nvim"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\20supermaven-nvim\frequire\0" },
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/supermaven-nvim",
    url = "https://github.com/supermaven-inc/supermaven-nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-wakatime"] = {
    loaded = true,
    path = "/home/codeman/.local/share/dimitry/site/pack/packer/start/vim-wakatime",
    url = "https://github.com/wakatime/vim-wakatime"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: horizon
time([[Config for horizon]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\24colorscheme horizon\bcmd\bvim\0", "config", "horizon")
time([[Config for horizon]], false)
-- Config for: gruber-darker
time([[Config for gruber-darker]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\30colorscheme gruber-darker\bcmd\bvim\0", "config", "gruber-darker")
time([[Config for gruber-darker]], false)
-- Config for: supermaven-nvim
time([[Config for supermaven-nvim]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\20supermaven-nvim\frequire\0", "config", "supermaven-nvim")
time([[Config for supermaven-nvim]], false)
-- Config for: base16-gruvbox-dark-hard
time([[Config for base16-gruvbox-dark-hard]], true)
try_loadstring("\27LJ\2\nH\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0)colorscheme base16-gruvbox-dark-hard\bcmd\bvim\0", "config", "base16-gruvbox-dark-hard")
time([[Config for base16-gruvbox-dark-hard]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0", "config", "rose-pine")
time([[Config for rose-pine]], false)
-- Config for: lightline.vim
time([[Config for lightline.vim]], true)
try_loadstring("\27LJ\2\nm\0\1\4\0\b\0\0166\1\0\0009\1\1\0019\1\2\1'\3\3\0B\1\2\2\a\1\4\0X\1\3€'\1\5\0L\1\2\0X\1\5€6\1\0\0009\1\1\0019\1\6\1'\3\a\0D\1\2\0K\0\1\0\6%\vgetreg\14[No Name]\5\b%:t\vexpand\afn\bvim»\4\1\0\5\0\22\0#6\0\0\0009\0\1\0+\1\1\0=\1\2\0006\0\0\0009\0\3\0005\1\r\0005\2\a\0004\3\3\0005\4\5\0>\4\1\0035\4\6\0>\4\2\3=\3\b\0024\3\4\0005\4\t\0>\4\1\0035\4\n\0>\4\2\0035\4\v\0>\4\3\3=\3\f\2=\2\14\0015\2\15\0=\2\16\1=\1\4\0003\0\17\0007\0\18\0006\0\0\0009\0\19\0009\0\20\0'\2\21\0+\3\2\0B\0\3\1K\0\1\0—\1                function! g:LightlineFilename()\n                return v:lua.LightlineFilenameInLua()\n                endfunction\n                \14nvim_exec\bapi\27LightlineFilenameInLua\0\23component_function\1\0\1\rfilename\22LightlineFilename\vactive\1\0\2\23component_function\0\vactive\0\nright\1\3\0\0\17fileencoding\rfiletype\1\2\0\0\fpercent\1\2\0\0\rlineinfo\tleft\1\0\2\nright\0\tleft\0\1\4\0\0\rreadonly\rfilename\rmodified\1\3\0\0\tmode\npaste\14lightline\6g\rshowmode\6o\bvim\0", "config", "lightline.vim")
time([[Config for lightline.vim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
