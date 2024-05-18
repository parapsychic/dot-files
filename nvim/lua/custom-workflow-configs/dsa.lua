-- Define the function to split the window and open the files
function OpenIOFiles()
  vim.cmd('vsplit input.txt')
  vim.cmd('split output.txt')
end

-- Register the custom command
vim.api.nvim_create_user_command('SetCompetitiveLayout', OpenIOFiles, {})
