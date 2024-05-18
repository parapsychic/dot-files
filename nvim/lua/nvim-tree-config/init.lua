vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local function open_nvim_tree(data)

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  -- change to the directory
  vim.cmd.cd(data.file)

  -- open the tree
  require("nvim-tree.api").tree.open()
end

require("nvim-tree").setup({
  --  open_on_setup = true,
  disable_netrw = true,
  hijack_netrw = true,
  view = {
    adaptive_size = true,
    },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  git = {
    enable = true,
    ignore = false,
    timeout = 400,
  },
})


vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
