return {
      -- You can also add new plugins here as well:
      -- Add plugins, the lazy syntax
      -- "andweeb/presence.nvim",
      -- {
      --   "ray-x/lsp_signature.nvim",
      --   event = "BufRead",
      --   config = function()
      --     require("lsp_signature").setup()
      --   end,
      -- },
      { "EdenEast/nightfox.nvim" },
      { "ThePrimeagen/harpoon" },
      { "mbbill/undotree" },
      { "peterhoeg/vim-qml" , event = "BufRead", ft = {"qml"}, },
      { "p00f/clangd_extensions.nvim" },
      { 'echasnovski/mini.nvim',      version = '*' },
}
