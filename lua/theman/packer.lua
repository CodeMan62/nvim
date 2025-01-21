-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'wakatime/vim-wakatime'
    use 'm4xshen/autoclose.nvim'
    use 'echasnovski/mini.nvim'
    use 'aliqyan-21/darkvoid.nvim'
    use ({
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    })
    use ({
        'zenbones-theme/zenbones.nvim',
        as = 'zenbones',
        config = function()
            vim.cmd('colorscheme zenbones')
        end
    })
    use({
        "ramojus/mellifluous.nvim",
        as = 'mellifluous',
        config = function()
            require("mellifluous").setup({}) -- optional, see configuration section.
            vim.cmd("colorscheme mellifluous")
        end,
    })
    use ({
        'wincent/base16-nvim',
        as = 'base16-gruvbox-dark-hard',
        config = function()
            vim.cmd('colorscheme base16-gruvbox-dark-hard')
        end
    })
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })
    use({
        'lunarvim/horizon.nvim',
        as = 'horizon',
        config = function()
            vim.cmd('colorscheme horizon')
        end
    })
    use ({
        "supermaven-inc/supermaven-nvim",
        config = function()
            require("supermaven-nvim").setup({})
        end,
    })

    use {
        'itchyny/lightline.vim',
        config = function()
            vim.o.showmode = false
            vim.g.lightline = {
                active = {
                    left = {
                        { 'mode', 'paste' },
                        { 'readonly', 'filename', 'modified' }
                    },
                    right = {
                        { 'lineinfo' },
                        { 'percent' },
                        { 'fileencoding', 'filetype' }
                    },
                },
                component_function = {
                    filename = 'LightlineFilename'
                },
            }
            function LightlineFilenameInLua(opts)
                if vim.fn.expand('%:t') == '' then
                    return '[No Name]'
                else
                    return vim.fn.getreg('%')
                end
            end
            vim.api.nvim_exec(
                [[
                function! g:LightlineFilename()
                return v:lua.LightlineFilenameInLua()
                endfunction
                ]],
                true
            )
        end
    }
    use ('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
    use('nvim-treesitter/playground')
    use('theprimeagen/harpoon')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',  -- Ensure you use the correct branch or version
        requires = {
            {'neovim/nvim-lspconfig'},              -- LSP Support
            {'williamboman/mason.nvim'},            -- LSP Installer
            {'williamboman/mason-lspconfig.nvim'},  -- LSP Configuration
            {'hrsh7th/nvim-cmp'},                   -- Autocompletion
            {'hrsh7th/cmp-nvim-lsp'},               -- LSP Completion
            {'L3MON4D3/LuaSnip'},                   -- Snippets
            {'saadparwaiz1/cmp_luasnip'},           -- Snippet completions
        }
    }
    use {
        "CopilotC-Nvim/CopilotChat.nvim",
        requires = {
            { "github/copilot.vim" },
            { "nvim-lua/plenary.nvim", branch = "master" },
        },
        build = "make tiktoken",
        opts = {
            -- See Configuration section for options
        },
    }
end)
