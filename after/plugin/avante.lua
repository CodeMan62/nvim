-- Avante.nvim configuration with GitHub Copilot provider
-- Make sure copilot.lua is configured first
local copilot_available = pcall(require, 'copilot')
if copilot_available then
    require('avante').setup({
        provider = 'copilot', -- Use GitHub Copilot as the provider
        providers = {
            copilot = {
                suggestion_provider = 'copilot.lua',
            },
        },
        behaviour = {
            auto_suggestions = false,
            auto_set_highlight_group = true,
            auto_set_keymaps = true, -- Enable auto keymaps so <leader>aa works
            auto_apply_diff_after_generation = false,
            support_paste_from_clipboard = false,
        },
        mappings = {
            suggestion = {
                accept = '<C-l>',
                next = '<M-]>',
                prev = '<M-[>',
                dismiss = '<C-]>',
            },
            sidebar = {
                switch_windows = '<Tab>',
                reverse_switch_windows = '<S-Tab>',
            },
        },
    })
    
    -- Manually set keybinding to ensure it works
    vim.keymap.set('n', '<leader>aa', ':AvanteAsk<CR>', { noremap = true, silent = true, desc = 'Open Avante sidebar' })
else
    -- Fallback if copilot is not available
    require('avante').setup({
        behaviour = {
            auto_set_keymaps = true,
        },
    })
    -- Manually set keybinding to ensure it works
    vim.keymap.set('n', '<leader>aa', ':AvanteAsk<CR>', { noremap = true, silent = true, desc = 'Open Avante sidebar' })
end

