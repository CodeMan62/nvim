require("bufferline").setup({
    options = {
        mode = "buffers", -- set to "tabs" to only show tabpages instead
        style_preset = require("bufferline").style_preset.default, -- or bufferline.style_preset.minimal,
        themable = true, -- allows highlight groups to be overridden i.e. sets highlights as default
        numbers = "ordinal", -- "none" | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
        close_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
        right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
        left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
        middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
        indicator = {
            icon = '▎', -- this should be omitted if indicator style is not 'icon'
            style = 'icon', -- 'icon' | 'underline' | 'none',
        },
        buffer_close_icon = '󰅖',
        modified_icon = '●',
        close_icon = '󰅖',
        left_trunc_marker = '',
        right_trunc_marker = '',
        --- name_formatter can be used to change the buffer's label in the bufferline.
        --- Please note some names can/will break the bufferline so if you see a hollow box or missing letters
        --- that's why. see: `:h bufferline-name-formatter`
        name_formatter = function(buf) -- buf contains:
            -- name                | str        | the basename of the active file
            -- path                | str        | the full path of the active file
            -- bufnr (buffer only) | int        | the number of the active buffer
            -- buffers (tabs only) | table      | the numbers of the buffers in the tab
            -- tabnr (tabs only)   | int        | the "handle" of the tab, can be converted to its ordinal number using: `vim.api.nvim_tabpage_get_number(buf.tabnr)`
        end,
        max_name_length = 18,
        max_prefix_length = 15, -- prefix used when a buffer is de-duplicated
        truncate_names = true, -- whether or not tab names should be truncated
        tab_size = 18,
        diagnostics = false, -- | "nvim_lsp" | "coc",
        diagnostics_update_in_insert = false,
        -- The diagnostics indicator can be set to nil to keep the buffer name highlight but delete the diagnostic
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            return "(" .. count .. ")"
        end,
        -- NOTE: this will be called a lot so don't do any heavy processing here
        custom_filter = function(buf_number, buf_numbers)
            -- filter out filetypes you don't want to see
            if vim.bo[buf_number].filetype ~= "<i-dont-want-to-see-this>" then
                return true
            end
            -- filter out by buffer name
            if vim.fn.bufname(buf_number) ~= "<buffer-name-I-dont-want>" then
                return true
            end
            -- filter out based on arbitrary criteria
            -- e.g. filter out vim wiki buffer from tabline in your work repo
            if vim.fn.getcwd() == "<work-repo>" and vim.bo[buf_number].filetype ~= "wiki" then
                return true
            end
            -- filter out by it's index number in list (don't show first buffer)
            if buf_numbers[1] ~= buf_number then
                return true
            end
        end,
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "left",
                separator = true
            }
        },
        color_icons = true, -- whether or not to add the filetype icon highlights
        show_buffer_icons = true, -- disable filetype icons for buffers
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true,
        show_duplicate_name = false, -- whether to show duplicate buffer names
        persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
        -- can also be a table with 2 `force` and `ignore` fields for filtering
        move_wraps_at_ends = false, -- whether the 'next' and 'previous' commands wrap around at the ends
        -- as an icon/buffer/position explorer, e.g. position 2 (2nd tab) might be the explorer
        -- and wrapping will move from the last buffer to the first one
        -- the "explorer" is automatically reordered to the 1st position, but only the first time
        -- if you don't like that behavior, set this to false, and then you need to manually reorder
        -- the explorer back to the first position if you want it there
        separator_style = "slope", -- "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
        sort_by = 'insert_after_current', -- | 'insert_at_end' | 'id' | 'extension' | 'relative_directory' | 'directory' | 'tabs' | function(buffer_a, buffer_b)
            -- add custom logic
            -- return buffer_a.modified > buffer_b.modified
        -- end
    },
    highlights = {
        fill = {
            bg = "#1e1e2e",
        },
        background = {
            bg = "#1e1e2e",
        },
        tab = {
            bg = "#1e1e2e",
        },
        tab_selected = {
            bg = "#313244",
        },
        tab_close = {
            bg = "#1e1e2e",
        },
        close_button = {
            bg = "#1e1e2e",
            fg = "#cdd6f4",
        },
        close_button_visible = {
            bg = "#1e1e2e",
            fg = "#cdd6f4",
        },
        close_button_selected = {
            bg = "#313244",
            fg = "#f38ba8",
        },
        buffer_selected = {
            bg = "#313244",
            bold = true,
            italic = false,
        },
        buffer_visible = {
            bg = "#1e1e2e",
        },
        numbers = {
            bg = "#1e1e2e",
            fg = "#cdd6f4",
        },
        numbers_visible = {
            bg = "#1e1e2e",
            fg = "#cdd6f4",
        },
        numbers_selected = {
            bg = "#313244",
            fg = "#f38ba8",
            bold = true,
            italic = false,
        },
        diagnostic = {
            bg = "#1e1e2e",
        },
        diagnostic_visible = {
            bg = "#1e1e2e",
        },
        diagnostic_selected = {
            bg = "#313244",
            bold = true,
            italic = false,
        },
        hint = {
            bg = "#1e1e2e",
            fg = "#cdd6f4",
        },
        hint_visible = {
            bg = "#1e1e2e",
        },
        hint_selected = {
            bg = "#313244",
            fg = "#a6e3a1",
            bold = true,
        },
        hint_diagnostic = {
            bg = "#1e1e2e",
            fg = "#cdd6f4",
        },
        hint_diagnostic_visible = {
            bg = "#1e1e2e",
        },
        hint_diagnostic_selected = {
            bg = "#313244",
            fg = "#a6e3a1",
            bold = true,
        },
        info = {
            bg = "#1e1e2e",
            fg = "#cdd6f4",
        },
        info_visible = {
            bg = "#1e1e2e",
        },
        info_selected = {
            bg = "#313244",
            fg = "#89b4fa",
            bold = true,
        },
        info_diagnostic = {
            bg = "#1e1e2e",
            fg = "#cdd6f4",
        },
        info_diagnostic_visible = {
            bg = "#1e1e2e",
        },
        info_diagnostic_selected = {
            bg = "#313244",
            fg = "#89b4fa",
            bold = true,
        },
        warning = {
            bg = "#1e1e2e",
            fg = "#cdd6f4",
        },
        warning_visible = {
            bg = "#1e1e2e",
        },
        warning_selected = {
            bg = "#313244",
            fg = "#f9e2af",
            bold = true,
        },
        warning_diagnostic = {
            bg = "#1e1e2e",
            fg = "#cdd6f4",
        },
        warning_diagnostic_visible = {
            bg = "#1e1e2e",
        },
        warning_diagnostic_selected = {
            bg = "#313244",
            fg = "#f9e2af",
            bold = true,
        },
        error = {
            bg = "#1e1e2e",
            fg = "#cdd6f4",
        },
        error_visible = {
            bg = "#1e1e2e",
        },
        error_selected = {
            bg = "#313244",
            fg = "#f38ba8",
            bold = true,
        },
        error_diagnostic = {
            bg = "#1e1e2e",
            fg = "#cdd6f4",
        },
        error_diagnostic_visible = {
            bg = "#1e1e2e",
        },
        error_diagnostic_selected = {
            bg = "#313244",
            fg = "#f38ba8",
            bold = true,
        },
        modified = {
            bg = "#1e1e2e",
            fg = "#cdd6f4",
        },
        modified_visible = {
            bg = "#1e1e2e",
            fg = "#cdd6f4",
        },
        modified_selected = {
            bg = "#313244",
            fg = "#f9e2af",
        },
        duplicate_selected = {
            bg = "#313244",
            fg = "#cdd6f4",
            italic = true,
        },
        duplicate_visible = {
            bg = "#1e1e2e",
            fg = "#cdd6f4",
            italic = true,
        },
        duplicate = {
            bg = "#1e1e2e",
            fg = "#cdd6f4",
            italic = true,
        },
        separator_selected = {
            bg = "#313244",
            fg = "#1e1e2e",
        },
        separator_visible = {
            bg = "#1e1e2e",
            fg = "#1e1e2e",
        },
        separator = {
            bg = "#1e1e2e",
            fg = "#1e1e2e",
        },
        indicator_selected = {
            bg = "#313244",
            fg = "#89b4fa",
        },
        pick_selected = {
            bg = "#313244",
            fg = "#f38ba8",
            bold = true,
        },
        pick_visible = {
            bg = "#1e1e2e",
            fg = "#f38ba8",
            bold = true,
        },
        pick = {
            bg = "#1e1e2e",
            fg = "#f38ba8",
            bold = true,
        },
    },
})

-- Key mappings for bufferline
vim.keymap.set('n', '<leader>bp', '<Cmd>BufferLineTogglePin<CR>', { desc = 'Toggle pin' })
vim.keymap.set('n', '<leader>bP', '<Cmd>BufferLineGroupClose ungrouped<CR>', { desc = 'Delete non-pinned buffers' })
vim.keymap.set('n', '<leader>bo', '<Cmd>BufferLineCloseOthers<CR>', { desc = 'Delete other buffers' })
vim.keymap.set('n', '<leader>br', '<Cmd>BufferLineCloseRight<CR>', { desc = 'Delete buffers to the right' })
vim.keymap.set('n', '<leader>bl', '<Cmd>BufferLineCloseLeft<CR>', { desc = 'Delete buffers to the left' })
vim.keymap.set('n', '<S-h>', '<Cmd>BufferLineCyclePrev<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<S-l>', '<Cmd>BufferLineCycleNext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '[b', '<Cmd>BufferLineCyclePrev<CR>', { desc = 'Previous buffer' })
vim.keymap.set('n', ']b', '<Cmd>BufferLineCycleNext<CR>', { desc = 'Next buffer' })

