require("dapui").setup()
require("nvim-dap-virtual-text").setup()


-- Keybindings
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<leader><F5>", ":lua require('dapui').toggle()<CR>", opts);
map("n", "<F9>", ":DapToggleBreakpoint<CR>", opts);
map("n", "<F10>", ":DapContinue<CR>", opts);
