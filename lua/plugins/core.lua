return {
  {
    "nvim-lua/plenary.nvim",
    lazy = false,
  },

  {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope-fzf-native.nvim",
    },
    opts = {
      defaults = {
        prompt_prefix = " ",
        selection_caret = " ",
        entry_prefix = "  ",
        sorting_strategy = "ascending",
        layout_config = { horizontal = { preview_width = 0.55 } },
      },
    },
    config = function(_, opts)
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "Telescope find files" })
      vim.keymap.set("n", "<leader>ps", builtin.live_grep, { desc = "Telescope live grep" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
      require("telescope").setup(opts)
    end,
  },

  {
    "theprimeagen/harpoon",
    keys = {
      { "<leader>a", function() require("harpoon").mark.add_file() end, desc = "Harpoon add file" },
      { "<C-e>", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Harpoon quick menu" },
      { "<C-h>", function() require("harpoon.ui").nav_file(1) end, desc = "Harpoon nav 1" },
      { "<C-t>", function() require("harpoon.ui").nav_file(2) end, desc = "Harpoon nav 2" },
      { "<C-n>", function() require("harpoon.ui").nav_file(3) end, desc = "Harpoon nav 3" },
      { "<C-s>", function() require("harpoon.ui").nav_file(4) end, desc = "Harpoon nav 4" },
    },
    init = function()
      local harpoon = require("harpoon")
      harpoon.setup({})
    end,
  },

  {
    "akinsho/bufferline.nvim",
    version = "*",
    cmd = "BufferLine",
    keys = {
      { "<leader>bl", "<cmd>BufferLine<CR>", desc = "Buffer line" },
    },
    event = "VeryLazy",
    opts = {
      options = {
        mode = "buffers",
        themable = true,
        numbers = "none",
        close_command = "bdelete! %i",
        keymap = {
          normal = { "b", "<C-s>", "q" },
        },
      },
    },
  },

  {
    "sphamba/smear-cursor.nvim",
    event = "VeryLazy",
    opts = {
      stiffness = 0.8,
      trailing_stiffness = 0.5,
      distance_stop_animating = 0.5,
    },
  },

  {
    "charludo/projectmgr.nvim",
    cmd = { "ProjectMgr" },
    keys = {
      { "<leader>pm", "<cmd>ProjectMgr<CR>", desc = "Project manager" },
      { "<leader>pa", "<cmd>ProjectMgr<C-a><CR>", desc = "Project manager add" },
    },
  },

  {
    "tpope/vim-fugitive",
    cmd = { "Git", " fugitive" },
    keys = {
      { "<leader>gs", "<cmd>Git<CR>", desc = "Git status" },
    },
    init = function()
      vim.g.loaded_fugitive = 0
    end,
  },

  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
    keys = {
      { "<leader>gl", "<cmd>LazyGit<CR>", desc = "LazyGit" },
    },
    dependencies = { "nvim-lua/plenary.nvim" },
    init = function()
      vim.g.lazygit_configured = true
    end,
  },

  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",
    keys = {
      { "<leader>u", "<cmd>UndotreeToggle<CR>", desc = "Undotree" },
    },
  },

  {
    "MeanderingProgrammer/render-markdown.nvim",
    event = "VeryLazy",
    opts = {
      markdown = {
        enhanced_code_chunks = true,
        virt_text = { position = "eol", spacing = 3, separator = "│" },
      },
    },
  },

  {
    "nvim-tree/nvim-web-devicons",
    lazy = false,
  },
}
