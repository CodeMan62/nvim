require("theman.remap")

require("theman.set")

-- Patch nvim-treesitter to prevent playground plugin errors
-- The define_modules API was removed in newer versions, so we provide a stub
local function patch_treesitter()
    local status_ok, treesitter = pcall(require, "nvim-treesitter")
    if status_ok and not treesitter.define_modules then
        -- Add a stub function that does nothing to prevent errors
        treesitter.define_modules = function() end
    end
end

-- Try to patch immediately, and also schedule it as a fallback
patch_treesitter()
vim.schedule(patch_treesitter)
local augroup = vim.api.nvim_create_augroup
local ThePrimeagenGroup = augroup('ThePrimeagen', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name)
    require("plenary.reload").reload_module(name)
end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = ThePrimeagenGroup,
    pattern = "*",
    command = [[%s/\s\+$//e]],
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
