-- Fix for playground plugin compatibility
-- This file loads early to patch nvim-treesitter before the playground plugin tries to use it
-- The define_modules API was removed in newer versions of nvim-treesitter

-- Patch nvim-treesitter immediately when this plugin file loads
local function patch_treesitter()
    local status_ok, treesitter = pcall(require, "nvim-treesitter")
    if status_ok and not treesitter.define_modules then
        -- Add a stub function that does nothing to prevent errors
        treesitter.define_modules = function() end
    end
end

-- Try to patch immediately
patch_treesitter()
