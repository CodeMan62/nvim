vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'm4xshen/autoclose.nvim'
    -- UI plugins
    use 'aliqyan-21/darkvoid.nvim'
    use ({
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    })
    --use ({
    --    'wincent/base16-nvim',
    --    as = 'base16-nvim',
    --    config = function()
    --        vim.cmd('colorscheme base16-nvim')
    --    end
    --})
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            require('rose-pine').setup({
                disable_background = true,
                styles = {
                    italics = false,
                },
            })
        end
    })
    use({
        'blazkowolf/gruber-darker.nvim',
        as = 'gruber-darker',
        config = function()
            vim.cmd('colorscheme gruber-darker')
        end
    })
    use({
        'lunarvim/horizon.nvim',
        as = 'horizon',
        config = function()
            vim.cmd('colorscheme horizon')
        end
    })
    use({
        'erikbackman/brightburn.vim',
    })
    use({
        'lifepillar/vim-solarized8',
        branch = 'neovim',  -- Ensure you use the correct branch or version
    })
    -- Better modern themes
    use({
        'folke/tokyonight.nvim',
        priority = 1000,
    })
    use({
        'catppuccin/nvim',
        as = 'catppuccin',
        priority = 1000,
    })
    use({
        'rebelot/kanagawa.nvim',
        priority = 1000,
    })
    use({
        'navarasu/onedark.nvim',
        priority = 1000,
    })
    use({
        'Mofiqul/dracula.nvim',
        priority = 1000,
    })
    -- More cool themes
    use({
        'EdenEast/nightfox.nvim',
        priority = 1000,
    })
    use({
        'ellisonleao/gruvbox.nvim',
        priority = 1000,
    })
    use({
        'sainnhe/gruvbox-material',
        priority = 1000,
    })
    use({
        'sainnhe/everforest',
        priority = 1000,
    })
    use({
        'marko-cerovac/material.nvim',
        priority = 1000,
    })
    use({
        'tanvirtin/monokai.nvim',
        priority = 1000,
    })
    use({
        'sainnhe/sonokai',
        priority = 1000,
    })
    use({
        'rmehri01/onenord.nvim',
        priority = 1000,
    })
    use({
        'olimorris/onedarkpro.nvim',
        priority = 1000,
    })
    -- Theme picker
    use({
        'zaldih/themery.nvim',
    })
    -- Modern bufferline (replacing old vim-bufferline)
    use({
        'akinsho/bufferline.nvim',
        tag = "*",
        requires = 'nvim-tree/nvim-web-devicons'
    })
    use({
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    })

    --use {
    --    'itchyny/lightline.vim',
    --    config = function()
    --        vim.o.showmode = false
    --        vim.g.lightline = {
    --            active = {
    --                left = {
    --                    { 'mode', 'paste' },
    --                    { 'readonly', 'filename', 'modified' }
    --                },
    --                right = {
    --                    { 'lineinfo' },
    --                    { 'percent' },
    --                    { 'fileencoding', 'filetype' }
    --                },
    --            },
    --            component_function = {
    --                filename = 'LightlineFilename'
    --            },
    --        }
    --        function LightlineFilenameInLua(opts)
    --            if vim.fn.expand('%:t') == '' then
    --                return '[No Name]'
    --            else
    --                return vim.fn.getreg('%')
    --            end
    --        end
    --        vim.api.nvim_exec(
    --            [[
    --            function! g:LightlineFilename()
    --            return v:lua.LightlineFilenameInLua()
    --            endfunction
    --            ]],
    --            true
    --        )
    --    end
    --}
    use ('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    -- lazy git
    use({
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        requires = {
            "nvim-lua/plenary.nvim",
        },
    })
    -- leetcode.nvim cool
    use 'kawre/leetcode.nvim'
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',  -- Ensure you use the correct branch or version
        requires = {
            {'neovim/nvim-lspconfig'},              -- LSP Support
            {'mason-org/mason.nvim'},               -- LSP Manager
            {'williamboman/mason-lspconfig.nvim'},  -- LSP Configuration
            {'mason-org/mason-registry'},               -- LSP registry
            {'hrsh7th/nvim-cmp'},                   -- Autocompletion
            {'hrsh7th/cmp-nvim-lsp'},               -- LSP Completion
            {'L3MON4D3/LuaSnip'},                   -- Snippets
            {'saadparwaiz1/cmp_luasnip'},           -- Snippet completions
        }
    }

    -- Required plugins
    use 'MunifTanjim/nui.nvim'
    use 'MeanderingProgrammer/render-markdown.nvim'

    -- Optional dependencies
    use 'nvim-tree/nvim-web-devicons' -- or use 'echasnovski/mini.icons'
    use 'HakonHarnes/img-clip.nvim'
    use 'zbirenbaum/copilot.lua'
    use 'stevearc/dressing.nvim' -- for enhanced input UI
    use 'folke/snacks.nvim' -- for modern input UI

    -- Supermaven AI autocomplete
    use({
        'supermaven-inc/supermaven-nvim',
        config = function()
            require('supermaven-nvim').setup({
                keymaps = {
                    accept_suggestion = '<Tab>',
                    clear_suggestion = '<C-]>',
                    accept_word = '<C-l>',
                },
            })
        end,
    })

    -- Avante.nvim - Modern UI components
    use({
        'yetone/avante.nvim',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
    })

    -- Smooth scrolling for better UX
    use({
        'karb94/neoscroll.nvim',
    })

    -- Better autocomplete enhancements
    use({
        'windwp/nvim-autopairs',
    })

    -- Smooth cursor movement
    use({
        'gen740/SmoothCursor.nvim',
        config = function()
            require('smoothcursor').setup({
                fancy = {
                    enable = true,
                },
            })
        end,
    })

    -- Better visual feedback
    use({
        'lewis6991/gitsigns.nvim',
        config = function()
            require('gitsigns').setup({
                signs = {
                    add = { text = '+' },
                    change = { text = '~' },
                    delete = { text = '_' },
                    topdelete = { text = '‾' },
                    changedelete = { text = '~' },
                },
            })
        end,
    })

end)
