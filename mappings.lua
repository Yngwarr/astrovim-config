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
    -- ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },

    -- Conjure descriptions
    ["<localleader>e"] = { desc = "Evaluate" },
    ["<localleader>ec"] = { desc = "Evaluate and comment" },
    ["<localleader>c"] = { desc = "Connect" },
    ["<localleader>g"] = { desc = "Goto" },
    ["<localleader>l"] = { desc = "Logs" },
    ["<localleader>r"] = { desc = "Refresh" },
    ["<localleader>s"] = { desc = "Session" },
    ["<localleader>t"] = { desc = "Test" },
    ["<localleader>v"] = { desc = "View" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
