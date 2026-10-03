function ColorMyPencils(color)
    color = color or "catppuccin"
    if color == "compline" then
        local compline = require('compline.theme')
        compline.setup()
    elseif color == "broski" then
        local broski = require('broski.theme')
        broski.setup()
    else
        vim.cmd.colorscheme(color)
    end
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "Cursor", { fg = "white", bg = "white" })
end

local function create_float_term()
    local buf = vim.api.nvim_create_buf(false, true)

    local width = vim.o.columns
    local height = vim.o.lines

    local win_height = math.ceil(height * 0.8)
    local win_width = math.ceil(width * 0.8)

    local row = math.ceil((height - win_height) / 2)
    local col = math.ceil((width - win_width) / 2)

    local opts = {
        style = "minimal",
        relative = "editor",
        width = win_width,
        height = win_height,
        row = row,
        col = col,
        border = "rounded",
    }

    local win = vim.api.nvim_open_win(buf, true, opts)

    vim.cmd("terminal")
    vim.cmd("startinsert")

    vim.wo[win].winblend = 0
    vim.wo[win].winhl = "Normal:Normal"
end

vim.api.nvim_create_user_command("ColorMyPencils", function(opts)
    ColorMyPencils(opts.args ~= "" and opts.args or nil)
end, { nargs = "?", complete = "color" })

vim.keymap.set("n", "<leader>tt", create_float_term, { desc = "Floating terminal" })

ColorMyPencils()
