-- Define the function to check and run the script
function RunScriptIfExists()
  local script = "./tasks"
  local current_file = vim.fn.expand('%')

  if vim.fn.filereadable(script) == 1 and vim.fn.executable(script) == 1 then
    vim.cmd('! ' .. script .. ' ' .. current_file)
  else
    print("No tasks found")
  end
end


--Run tasks
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap("n", "<F5>", ":lua RunScriptIfExists()<CR>", opts)



