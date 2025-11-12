function ColorMyPencils(color)
	--color = color or "solarized8"
	color = color or "tokyonight"
	vim.cmd.colorscheme(color)
	-- thanks jon
	--vim.o.background = 'light'
	vim.g.solarized_visibility = "low"
	--	vim.cmd([[hi Normal ctermbg=NONE]])
	--	-- Less visible window separator
	--	vim.api.nvim_set_hl(0, "WinSeparator", { fg = 1250067 })
	--	-- Make comments more prominent -- they are important.
	--	local bools = vim.api.nvim_get_hl(0, { name = 'Boolean' })
	--	vim.api.nvim_set_hl(0, 'Comment', bools)
	--	-- Make it clearly visible which argument we're at.
	--	local marked = vim.api.nvim_get_hl(0, { name = 'PMenu' })
	--	vim.api.nvim_set_hl(0, 'LspSignatureActiveParameter', { fg = marked.fg, bg = marked.bg, ctermfg = marked.ctermfg, ctermbg = marked.ctermbg, bold = true })
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "Cursor", { fg = "white", bg = "white" })
	--vim.api.nvim_set_hl(0, "Cursor", { fg = "black", bg = "black" })
end

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
		border = "rounded",
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
