return {
  {
    "mason-org/mason.nvim",
    cmd = "Mason",
    dependencies = { "WhoIsSethDaniel/mason-tool-installer.nvim" },
    init = function()
      vim.g.mapleader = " "
    end,
    opts = {
      ui = {
        border = "rounded",
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
      ensure_installed = {
        "lua-language-server",
        "rust-analyzer",
        "eslint",
        "clangd",
      },
      automatic_installation = true,
    },
    config = function(_, opts)
      require("mason-tool-installer").setup(opts.ensure_installed)
      require("mason").setup(opts)
    end,
  },

  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    opts = {
      defaults = {
        autostart = true,
      },
      -- vim.lsp.config format: name -> settings
      config = {
        ["lua-language-server"] = {
          settings = {
            Lua = {
              diagnostics = { globals = { "vim" } },
              workspace = { checkThirdParty = false },
              telemetry = { enable = false },
            },
          },
        },
        ["rust-analyzer"] = {
          settings = {
            ["rust-analyzer"] = {
              checkOnSave = true,
              cargo = { allFeatures = true, buildScripts = { enable = true } },
            },
          },
        },
        ["eslint"] = {
          settings = {
            validate = "onType",
            useFlatConfig = true,
          },
        },
        ["clangd"] = {
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--completion-style=detailed",
            "--header-insertion=iwyu",
            "--fallback-style=llvm",
          },
          filetypes = { "c", "cpp", "objc", "objcpp" },
          root_markers = {
            ".clangd",
            ".clang-tidy",
            ".clang-format",
            "compile_commands.json",
            "compile_flags.txt",
            ".git",
          },
        },
      },
    },
    config = function(_, opts)
      local capabilities = vim.tbl_deep_extend(
        "force",
        vim.lsp.protocol.make_client_capabilities(),
        require("blink.cmp").get_lsp_capabilities()
      )

      -- nvim-lspconfig supplies the server definitions on the runtimepath;
      -- the config/enable calls are core API on 0.11+.
      vim.lsp.config("*", opts.defaults)
      for name, cfg in pairs(opts.config) do
        cfg.capabilities = capabilities
        vim.lsp.config(name, cfg)
        vim.lsp.enable(name)
      end

      vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format buffer" })
      -- :LspRestart comes from nvim-lspconfig, which skips defining it on 0.12+
      -- because Neovim provides ":lsp restart" natively.
      vim.keymap.set("n", "<leader>zig", "<cmd>lsp restart<CR>", { desc = "Restart LSP" })
    end,
  },

  {
    "saghen/blink.lib",
  },

  {
    "saghen/blink.cmp",
    event = "VeryLazy",
    dependencies = { "rafamadriz/friendly-snippets" },
    build = function()
      require("blink.cmp").build():pwait()
    end,
    opts = {
      keymap = {
        preset = "default",
        ["<C-ScrollUp>"] = { "scroll_documentation_up", "fallback" },
        ["<C-ScrollDown>"] = { "scroll_documentation_down", "fallback" },
      },
      completion = {
        documentation = {
          auto_show = true,
          auto_show_delay_ms = 300,
          window = { border = "rounded" },
        },
        list = {
          selection = { preselect = false, auto_insert = false },
        },
        menu = { border = "rounded" },
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
      signature = { enabled = true, window = { border = "rounded" } },
      fuzzy = { implementation = "prefer_rust_with_warning" },
    },
    config = function(_, opts)
      require("blink.cmp").setup(opts)
    end,
  },
}
