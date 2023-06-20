-- set vim options here (vim.<first_key>.<second_key> = value)
return {
  opt = {
    -- set to true or false etc.
    relativenumber = false,
    number = true,
    spell = false,
    signcolumn = "auto",
    wrap = false,
    colorcolumn = { 80 },
    -- disable fold arrows UI
    foldcolumn = "0",
    shiftwidth = 4,
    tabstop = 4,
    softtabstop = 4,
    -- bring back the default zt and zb behavior
    scrolloff = 0
  },
  g = {
    mapleader = " ",
    autoformat_enabled = false,
    cmp_enabled = true,
    autopairs_enabled = false,
    -- set the visibility of diagnostics in the UI (0=off, 1=only show in
    -- status line, 2=virtual text off, 3=all on)
    diagnostics_mode = 3,
    -- disable icons in the UI (disable if no nerd font is available, requires
    -- :PackerSync after changing)
    icons_enabled = true,
    -- disable notifications when toggling UI elements
    ui_notifications_enabled = true,
    -- enable experimental resession.nvim session management (will be default
    -- in AstroNvim v4)
    resession_enabled = false,

    sexp_enable_insert_mode_mappings = 0,
  },
}
-- If you need more control, you can use the function()...end notation
-- return function(local_vim)
--   local_vim.opt.relativenumber = true
--   local_vim.g.mapleader = " "
--   local_vim.opt.whichwrap = vim.opt.whichwrap - { 'b', 's' } -- removing option from list
--   local_vim.opt.shortmess = vim.opt.shortmess + { I = true } -- add to option list
--
--   return local_vim
-- end
