local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

--vim.g.mapleader = "\\"
vim.g.mapleader = " "
-- Open Nvim-Tree
map("n", "<leader>tr", ":NvimTreeToggle<CR>", opts)
map("n", "<leader>zen", ":Twilight<CR>", opts)
-- Stuff I personally like
-- format on save
map("n", "<leader>f", ":lua vim.lsp.buf.format({async=true})<CR>", opts)
-- newlines
map("n", "o", "o<esc>", opts)
map("n", "O", "O<esc>", opts)
-- move around easily
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

--Primeagen's greatest remap ever
--paste without removing from register
map("x", "<leader>p", '"_dP', opts)

-- Press \\ to jump back to the last cursor position.
map("n", "<leader>\\", "``", opts)

-- Mappings for Terminal mode
map("t", "<Esc>", "<C-\\><C-n>", opts)
map("n", "<leader>term", ":split | terminal<CR>", opts)

-- Center the cursor vertically when moving to the next word during a search.
-- zz -> center cursor on screen zv -> open folds
map("n", "n", "nzzzv", opts)
map("n", "N", "Nzzzv", opts)

-- Yank from cursor to the end of line.
map("n", "Y", "y$", opts)

-- Resize split windows using arrow keys by pressing:
-- CTRL+UP, CTRL+DOWN, CTRL+LEFT, or CTRL+RIGHT.
map("n", "<C-up>", "<C-w>+", opts)
map("n", "<C-down>", "<C-w>-", opts)
map("n", "<C-left>", "<C-w>>", opts)
map("n", "<C-right>", "<C-w><", opts)

--pseudo escape mode
map("i", "jk", "<esc>", opts)


-- barbar tabs mapping
-- Move to previous/next
map("n", "<A-,>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<A-.>", "<Cmd>BufferNext<CR>", opts)
-- Re-order to previous/next
map("n", "<A-<>", "<Cmd>BufferMovePrevious<CR>", opts)
map("n", "<A->>", "<Cmd>BufferMoveNext<CR>", opts)
-- Goto buffer in position...
map("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
map("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
map("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
map("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
map("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)
map("n", "<A-6>", "<Cmd>BufferGoto 6<CR>", opts)
map("n", "<A-7>", "<Cmd>BufferGoto 7<CR>", opts)
map("n", "<A-8>", "<Cmd>BufferGoto 8<CR>", opts)
map("n", "<A-9>", "<Cmd>BufferGoto 9<CR>", opts)
map("n", "<A-0>", "<Cmd>BufferLast<CR>", opts)
-- Pin/unpin buffer
map("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)
-- Close buffer
map("n", "<A-c>", "<Cmd>BufferClose<CR>", opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map("n", "<C-p>", "<Cmd>BufferPick<CR>", opts)
-- Sort automatically by...
map("n", "<Space>bb", "<Cmd>BufferOrderByBufferNumber<CR>", opts)
map("n", "<Space>bd", "<Cmd>BufferOrderByDirectory<CR>", opts)
map("n", "<Space>bl", "<Cmd>BufferOrderByLanguage<CR>", opts)
map("n", "<Space>bw", "<Cmd>BufferOrderByWindowNumber<CR>", opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used

-- Telescope Mappings
map("n", "<leader>tel", ":Telescope find_files<CR>", opts)
map("n", "<leader>tg", ":Telescope live_grep<CR>", opts)
