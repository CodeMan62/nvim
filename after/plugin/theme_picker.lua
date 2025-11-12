-- Theme picker configuration
-- Keybinding: <leader>tp

-- Configure tokyonight theme
require('tokyonight').setup({
    style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
    light_style = "day", -- The theme is used when the background is set to light
    transparent = true, -- Enable this to disable setting the background color
    terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
    styles = {
        comments = { italic = false },
        keywords = { italic = false },
        functions = {},
        variables = {},
        sidebars = "dark", -- style for sidebars, see below
        floats = "dark", -- style for floating windows
    },
    sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
    day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
    hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
    dim_inactive = false, -- dims inactive windows
    lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
})

-- Set default theme (tokyonight is a great modern theme)
vim.cmd('colorscheme tokyonight')

-- Theme picker keybinding
-- Primary: Use themery.nvim command
vim.keymap.set('n', '<leader>tp', ':Themery<CR>', { noremap = true, silent = true, desc = 'Open theme picker' })

-- Fallback: Telescope-based theme picker (alternative method)
local themes = {
    "tokyonight",
    "catppuccin",
    "kanagawa",
    "onedark",
    "dracula",
    "rose-pine",
    "gruber-darker",
    "horizon",
    "solarized8",
    -- New cool themes
    "nightfox",
    "dayfox",
    "dawnfox",
    "duskfox",
    "nordfox",
    "gruvbox",
    "gruvbox-material",
    "everforest",
    "material",
    "monokai",
    "sonokai",
    "onenord",
    -- Removed onedarkpro as it causes errors - use onedark instead
}

vim.keymap.set('n', '<leader>tP', function()
    vim.ui.select(themes, {
        prompt = 'Select theme:',
        format_item = function(item)
            return '  ' .. item
        end,
    }, function(choice)
        if choice then
            vim.cmd('colorscheme ' .. choice)
            vim.notify('Theme changed to: ' .. choice, vim.log.levels.INFO)
        end
    end)
end, { desc = 'Theme picker (fallback)' })

