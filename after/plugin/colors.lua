function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

    --vim.api.nvim_set_hl(0, "Normal", { bg = "black" })
	--vim.api.nvim_set_hl(0, "NormalFloat", { bg = "black" })
end

-- Create theme picker function with Telescope
function ThemePicker()
    local themes = {
        "horizon",
        "rose-pine"
    }

    require("telescope.builtin").select_default({
        prompt_title = "Color Schemes",
        results_title = "Color Schemes",
        prompt_prefix = "🎨 ",
        results = themes,
        attach_mappings = function(_, map)
            map("i", "<CR>", function(prompt_bufnr)
                local selection = require("telescope.actions.state").get_selected_entry(prompt_bufnr)
                require("telescope.actions").close(prompt_bufnr)
                ColorMyPencils(selection[1])
            end)
            return true
        end
    })
end

-- Set up keybinding for theme picker
vim.keymap.set("n", "<leader>tp", ThemePicker, { noremap = true, silent = true })

local function create_float_term()
    -- Create a new terminal buffer
    local buf = vim.api.nvim_create_buf(false, true)

    -- Get the editor's dimensions
    local width = vim.api.nvim_get_option("columns")
    local height = vim.api.nvim_get_option("lines")

    -- Calculate floating window size (80% of editor size)
    local win_height = math.ceil(height * 0.8)
    local win_width = math.ceil(width * 0.8)

    -- Calculate starting position to center the window
    local row = math.ceil((height - win_height) / 2)
    local col = math.ceil((width - win_width) / 2)

    -- Set up window options
    local opts = {
        style = "minimal",
        relative = "editor",
        width = win_width,
        height = win_height,
        row = row,
        col = col,
        border = "rounded"
    }

    -- Create the floating window
    local win = vim.api.nvim_open_win(buf, true, opts)

    -- Start terminal in insert mode
    vim.cmd("terminal")
    vim.cmd("startinsert")

    -- Set window-local options
    vim.wo[win].winblend = 0
    vim.wo[win].winhl = "Normal:Normal"
end

-- Set up keybinding for floating terminal
vim.keymap.set("n", "<leader>tt", create_float_term, { noremap = true, silent = true })
-- Set default colorscheme
ColorMyPencils()
