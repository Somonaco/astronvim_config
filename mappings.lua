-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>a"] = { require("harpoon.mark").add_file, desc = "Add file to harpoon" },
    ["<C-b>"] = { require("harpoon.ui").toggle_quick_menu },
    ["<C-1>"] = { function() require("harpoon.ui").nav_file(1) end },
    ["<C-2>"] = { function() require("harpoon.ui").nav_file(2) end },
    ["<C-3>"] = { function() require("harpoon.ui").nav_file(3) end },
    ["<C-4>"] = { function() require("harpoon.ui").nav_file(4) end },
    -- lsp
    ["<leader>lc"] = { "<cmd>lua vim.lsp.buf.incoming_calls()<cr>", desc = "Open call hierarchy" },
    ["<leader>lo"] = { "<cmd>lua vim.lsp.buf.outgoing_calls()<cr>", desc = "Outgoing calls" },
    -- ["gD"] = { "<cmd>lua vim.lsp.buf.declaration()<cr>", desc = "Goto declaration" },
    -- ["gr"] = { "<cmd>lua vim.lsp.buf.references()<cr>", desc = "Show refrences" },
    ["<leader>lH"] = { "<cmd>lua vim.lsp.buf.implementation()<cr>", desc = "Show implementation" },
    -- clang
    ["<F2>"] = { "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch source/header" },
    -- undotree
    ["<leader><F4>"] = { "<cmd>lua vim.cmd.UndotreeToggle()<cr>", desc = "Toggle undotree" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
