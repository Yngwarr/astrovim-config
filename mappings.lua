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

    ["<leader>gT"] = {
      function()
        require("agitator").git_time_machine({ use_current_win = true })
      end,
      desc = "Time machine"
    },

    ["<leader>gB"] = {
      function()
        require("agitator").git_blame()
      end,
      desc = "Agitator Blame"
    },

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

    -- vim-sexp
    ["<localleader>k"] = { name = "Paredit" },
    ["<localleader>kr"] = { "<Plug>(sexp_raise_list)", desc = "Raise list" },
    ["<localleader>kR"] = { "<Plug>(sexp_raise_element)", desc = "Raise element" },
    ["<localleader>kd"] = { "<Plug>(sexp_splice_list)", desc = "Drop list" },
    ["<localleader>kh"] = { "<Plug>(sexp_insert_at_list_head)", desc = "Insert at head" },
    ["<localleader>kj"] = { "<Plug>(sexp_capture_prev_element)", desc = "Slurp back" },
    ["<localleader>kk"] = { "<Plug>(sexp_capture_next_element)", desc = "Slurp front" },
    ["<localleader>kJ"] = { "<Plug>(sexp_emit_head_element)", desc = "Barf back" },
    ["<localleader>kK"] = { "<Plug>(sexp_emit_tail_element)", desc = "Barf front" },

    -- git co-authors
    ["<leader>fg"] = {
      function()
        require('telescope').extensions.githubcoauthors.coauthors()
      end,
      desc = "Find Co-Authors"
    }
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
