return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "VeryLazy",
    opts = {
      ensure_installed = {
        "vimdoc",
        "javascript",
        "typescript",
        "c",
        "cpp",
        "lua",
        "rust",
        "jsdoc",
        "bash",
      },
      auto_install = true,
      sync_install = false,
      indent = { enable = true },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { "markdown" },
      },
    },
    config = function(_, opts)
      -- nvim-treesitter starts per-filetype on its own; calling
      -- vim.treesitter.start() here would error on a filetype-less buffer.
      require("nvim-treesitter").setup(opts)
    end,
  },
}
