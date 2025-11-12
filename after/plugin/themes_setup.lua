-- Setup configurations for themes that need initialization

-- Gruvbox setup
local gruvbox_available = pcall(require, 'gruvbox')
if gruvbox_available then
    require('gruvbox').setup({
        terminal_colors = true,
        undercurl = true,
        underline = true,
        bold = true,
        italic = false,
        strikethrough = true,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true,
        contrast = "", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
    })
end

-- Material theme setup
local material_available = pcall(require, 'material')
if material_available then
    require('material').setup({
        contrast = {
            sidebars = false,
            floating_windows = false,
            line_numbers = false,
            sign_column = false,
            cursor_line = false,
            non_current_windows = false,
        },
        styles = {
            comments = { italic = false },
            strings = { bold = false },
            keywords = { italic = false },
            functions = { bold = false },
            variables = {},
            operators = {},
            types = {},
        },
        plugins = {
            "gitsigns",
            "indent-blankline",
            "nvim-cmp",
            "nvim-web-devicons",
            "telescope",
            "trouble",
            "which-key",
        },
        disable = {
            colored_cursor = false,
            borders = false,
            background = false,
            term_colors = false,
            eob_lines = false
        },
        high_visibility = {
            lighter = false,
            darker = false
        },
        lualine_style = "default",
        async_loading = true,
        custom_colors = nil,
        custom_highlights = {},
    })
end

-- Nightfox setup (includes multiple variants)
local nightfox_available = pcall(require, 'nightfox')
if nightfox_available then
    require('nightfox').setup({
        options = {
            compile_path = vim.fn.stdpath("cache") .. "/nightfox",
            compile_file_suffix = "_compiled",
            transparent = false,
            terminal_colors = true,
            dim_inactive = false,
            styles = {
                comments = "NONE",
                conditionals = "NONE",
                constants = "NONE",
                functions = "NONE",
                keywords = "NONE",
                numbers = "NONE",
                operators = "NONE",
                strings = "NONE",
                types = "NONE",
                variables = "NONE",
            },
            inverse = {
                match_paren = false,
                visual = false,
                search = false,
            },
        },
    })
end

-- OneNord setup
local onenord_available = pcall(require, 'onenord')
if onenord_available then
    require('onenord').setup({
        borders = true,
        fade_nc = false,
        styles = {
            comments = "NONE",
            strings = "NONE",
            keywords = "NONE",
            functions = "NONE",
            variables = "NONE",
            diagnostics = "underline",
        },
        disable = {
            background = false,
            cursor_line = false,
            eob_lines = true,
        },
        custom_highlights = {},
        custom_colors = {},
    })
end

