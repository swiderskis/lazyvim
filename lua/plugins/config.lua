return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      diagnostics = {
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = "\u{274c}",
            [vim.diagnostic.severity.WARN] = "\u{1f4a2}",
            [vim.diagnostic.severity.HINT] = "\u{1f4a1}",
            [vim.diagnostic.severity.INFO] = "\u{2139}",
          },
        },
      },
    },
  },
  {
    "fole/flash.nvim",
    enabled = false,
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = {
          normal = { a = { bg = "#b86f50" }, b = { bg = "#c28569" }, c = { bg = "#debc96" } },
        },
      },
    },
  },
}
