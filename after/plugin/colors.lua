-- after/plugin/colors.lua

local themes = {
    rose_pine = "rose-pine",
    gruvbox = "gruvbox",
}

local function set_transparent(theme)
    if theme == "rose-pine" then
        vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
        vim.cmd("hi NonText guibg=NONE ctermbg=NONE")
    elseif theme == "gruvbox" then
        vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
        vim.cmd("hi NonText guibg=NONE ctermbg=NONE")
    end
end

-- Define the select_theme function as a global function
function select_theme()
    local options = {}
    for name, _ in pairs(themes) do
        table.insert(options, name)
    end

    local choice = vim.fn.inputlist({
        "Select a theme:",
        unpack(options),
    })

    if choice > 0 and choice <= #options then
        local theme_name = options[choice]
        vim.cmd("colorscheme " .. themes[theme_name])
        set_transparent(themes[theme_name])
    else
        print("Invalid choice")
    end
end

-- Map <leader>th to open theme selection
vim.api.nvim_set_keymap('n', '<leader>th', ':lua select_theme()<CR>', { noremap = true, silent = true })
