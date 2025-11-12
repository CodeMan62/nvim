-- Cursor configuration - thicker cursor in insert mode
vim.opt.guicursor = {
    "n-v-c:block",           -- Normal, visual, command: block cursor
    "i-ci-ve:ver50",         -- Insert mode: vertical bar, 50% width (thicker)
    "r-cr:hor20",            -- Replace mode: horizontal bar
    "o:hor50",               -- Operator pending: horizontal bar
    "a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor", -- All modes: blinking settings
    "sm:block-blinkwait175-blinkoff150-blinkon175", -- Showmatch: block cursor
}

vim.opt.number = true
--vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "no"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = ""
-- hx
vim.opt.foldcolumn = "0"
vim.opt.numberwidth = 1
vim.opt.fillchars = { eob = " " }  -- hide ~ lines

-- Performance improvements for smoother experience
vim.opt.lazyredraw = false
vim.opt.redrawtime = 1000
vim.opt.timeoutlen = 300
vim.opt.ttimeoutlen = 0

-- Better visual feedback (cursorline on number only for cleaner look)
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

-- Better completion
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.shortmess:append("c")

-- Better search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Better window splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

