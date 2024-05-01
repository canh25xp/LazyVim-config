return {
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = function(_, opts)
  --     if type(opts.ensure_installed) == "table" then
  --       vim.list_extend(opts.ensure_installed, {
  --         "htmldjango",
  --       })
  --     end
  --   end,
  -- },

  -- https://djlint.com/docs/formatter/
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      format = {
        timeout_ms = 10000,
      },
      formatters_by_ft = {
        ["htmldjango"] = { "djlint" },
        ["html"] = { "djlint" },
        ["tex"] = { "latexindent" },
      },
      formatters = {
        latexindent = {
          args = { "-m", "-l" },
        },
        djlint = {
          args = { "--reformat", "-" },
          cwd = require("conform.util").root_file({
            ".djlintrc",
          }),
        },
      },
    },
  },
  -- {
  --   "mfussenegger/nvim-lint",
  --   opts = {
  --     linters_by_ft = {
  --       htmldjango = { "djlint" },
  --       html = { "djlint" },
  --     },
  --   },
  -- },
  -- {
  --   "williamboman/mason.nvim",
  --   opts = function(_, opts)
  --     vim.list_extend(opts.ensure_installed, {
  --       "latexindent",
  --       "djlint",
  --     })
  --   end,
  -- },
  -- {
  --   "williamboman/mason-lspconfig.nvim",
  --   config = function()
  --     require("mason-lspconfig").setup({
  --       ensure_installed = {
  --         "html",
  --         "emmet_ls",
  --       },
  --     })
  --   end,
  -- },
}
