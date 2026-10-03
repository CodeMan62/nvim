return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },

  {
    "MunifTanjim/nui.nvim",
    lazy = true,
  },

  {
    "folke/snacks.nvim",
    version = nil,
    lazy = true,
    priority = 1000,
    opts = {
      input = { enabled = true },
      picker = { enabled = true },
      notifier = { enabled = true },
      quickmenu = { enabled = true },
    },
    keys = {
      { "<leader>pq", function() require("snacks").picker.smart() end, desc = "Snacks picker (smart)" },
      { "<leader>pl", function() require("snacks").picker.lines() end, desc = "Snacks picker (lines)" },
      { "<leader>pn", function() require("snacks").notifier.show_history() end, desc = "Snacks notifier history" },
    },
  },

  {
    "stevearc/dressing.nvim",
    lazy = true,
    opts = {
      builtin = false,
      backend = { "snacks", "nui" },
    },
  },

  {
    "HakonHarnes/img-clip.nvim",
    cmd = "PasteImage",
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
      { "<leader>i", "<cmd>PasteImage<CR>", desc = "Paste image from clipboard" },
    },
  },

  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    keys = {
      { "<leader>cp", "<cmd>CopilotToggle<CR>", desc = "Toggle Copilot" },
    },
    init = function()
      vim.g.copilot_loaded = 0
    end,
  },

  {
    "kawre/leetcode.nvim",
    cmd = "Leet",
    dependencies = { "MunifTanjim/nui.nvim" },
    build = ":Lazy build leetcode",
    opts = {
      lang = "cpp",
      cn = { enabled = false, translator = true, translate_problems = true },
      storage = {
        home = vim.fn.stdpath("data") .. "/leetcode",
        cache = vim.fn.stdpath("cache") .. "/leetcode",
      },
      plugins = { non_standalone = true },
      logging = true,
      cache = { update_interval = 60 * 60 * 24 * 7 },
      console = {
        open_on_runcode = true,
        dir = "row",
        size = { width = "90%", height = "75%" },
        result = { size = "60%" },
        testcase = { virt_text = true, size = "40%" },
      },
      description = { position = "left", width = "40%", show_stats = true },
      keys = {
        toggle = { "q" },
        confirm = { "<CR>" },
        reset_testcases = "r",
        use_testcase = "U",
        focus_testcases = "H",
        focus_result = "L",
      },
      image_support = false,
    },
  },

  {
    "aliqyan-21/darkvoid.nvim",
    event = "VeryLazy",
    optional = true,
    config = function()
      require("darkvoid").setup({})
    end,
  },
}
