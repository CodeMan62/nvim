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
local package_path_str = "/home/codeman/.cache/nvim/packer_hererocks/2.1.1762795099/share/lua/5.1/?.lua;/home/codeman/.cache/nvim/packer_hererocks/2.1.1762795099/share/lua/5.1/?/init.lua;/home/codeman/.cache/nvim/packer_hererocks/2.1.1762795099/lib/luarocks/rocks-5.1/?.lua;/home/codeman/.cache/nvim/packer_hererocks/2.1.1762795099/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/codeman/.cache/nvim/packer_hererocks/2.1.1762795099/lib/lua/5.1/?.so"
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
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["SmoothCursor.nvim"] = {
    config = { "\27LJ\2\na\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\nfancy\1\0\1\nfancy\0\1\0\1\venable\2\nsetup\17smoothcursor\frequire\0" },
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/SmoothCursor.nvim",
    url = "https://github.com/gen740/SmoothCursor.nvim"
  },
  ["autoclose.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/autoclose.nvim",
    url = "https://github.com/m4xshen/autoclose.nvim"
  },
  ["avante.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/avante.nvim",
    url = "https://github.com/yetone/avante.nvim"
  },
  ["brightburn.vim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/brightburn.vim",
    url = "https://github.com/erikbackman/brightburn.vim"
  },
  ["bufferline.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot.lua"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/copilot.lua",
    url = "https://github.com/zbirenbaum/copilot.lua"
  },
  ["darkvoid.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/darkvoid.nvim",
    url = "https://github.com/aliqyan-21/darkvoid.nvim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nˆ\2\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\1\nsigns\0\17changedelete\1\0\1\ttext\6~\14topdelete\1\0\1\ttext\bâ€¾\vdelete\1\0\1\ttext\6_\vchange\1\0\1\ttext\6~\badd\1\0\5\14topdelete\0\17changedelete\0\badd\0\vchange\0\vdelete\0\1\0\1\ttext\6+\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["gruber-darker"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\30colorscheme gruber-darker\bcmd\bvim\0" },
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/gruber-darker",
    url = "https://github.com/blazkowolf/gruber-darker.nvim"
  },
  harpoon = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  horizon = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\24colorscheme horizon\bcmd\bvim\0" },
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/horizon",
    url = "https://github.com/lunarvim/horizon.nvim"
  },
  ["img-clip.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/img-clip.nvim",
    url = "https://github.com/HakonHarnes/img-clip.nvim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["leetcode.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/leetcode.nvim",
    url = "https://github.com/kawre/leetcode.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason-registry"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/mason-registry",
    url = "https://github.com/mason-org/mason-registry"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/mason-org/mason.nvim"
  },
  ["neoscroll.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["render-markdown.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/render-markdown.nvim",
    url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\nu\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vstyles\1\0\1\fitalics\1\1\0\2\vstyles\0\23disable_background\2\nsetup\14rose-pine\frequire\0" },
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["snacks.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/snacks.nvim",
    url = "https://github.com/folke/snacks.nvim"
  },
  ["supermaven-nvim"] = {
    config = { "\27LJ\2\n¡\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\fkeymaps\1\0\1\fkeymaps\0\1\0\3\22accept_suggestion\n<Tab>\16accept_word\n<C-l>\21clear_suggestion\n<C-]>\nsetup\20supermaven-nvim\frequire\0" },
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/supermaven-nvim",
    url = "https://github.com/supermaven-inc/supermaven-nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-solarized8"] = {
    loaded = true,
    path = "/home/codeman/.local/share/nvim/site/pack/packer/start/vim-solarized8",
    url = "https://github.com/lifepillar/vim-solarized8"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\nu\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vstyles\1\0\1\fitalics\1\1\0\2\vstyles\0\23disable_background\2\nsetup\14rose-pine\frequire\0", "config", "rose-pine")
time([[Config for rose-pine]], false)
-- Config for: supermaven-nvim
time([[Config for supermaven-nvim]], true)
try_loadstring("\27LJ\2\n¡\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\fkeymaps\1\0\1\fkeymaps\0\1\0\3\22accept_suggestion\n<Tab>\16accept_word\n<C-l>\21clear_suggestion\n<C-]>\nsetup\20supermaven-nvim\frequire\0", "config", "supermaven-nvim")
time([[Config for supermaven-nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nˆ\2\0\0\5\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\14\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\3=\3\15\2B\0\2\1K\0\1\0\nsigns\1\0\1\nsigns\0\17changedelete\1\0\1\ttext\6~\14topdelete\1\0\1\ttext\bâ€¾\vdelete\1\0\1\ttext\6_\vchange\1\0\1\ttext\6~\badd\1\0\5\14topdelete\0\17changedelete\0\badd\0\vchange\0\vdelete\0\1\0\1\ttext\6+\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: SmoothCursor.nvim
time([[Config for SmoothCursor.nvim]], true)
try_loadstring("\27LJ\2\na\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\nfancy\1\0\1\nfancy\0\1\0\1\venable\2\nsetup\17smoothcursor\frequire\0", "config", "SmoothCursor.nvim")
time([[Config for SmoothCursor.nvim]], false)
-- Config for: horizon
time([[Config for horizon]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\24colorscheme horizon\bcmd\bvim\0", "config", "horizon")
time([[Config for horizon]], false)
-- Config for: gruber-darker
time([[Config for gruber-darker]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\30colorscheme gruber-darker\bcmd\bvim\0", "config", "gruber-darker")
time([[Config for gruber-darker]], false)

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
