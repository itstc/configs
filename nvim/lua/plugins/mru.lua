return {
  'yegappan/mru',
  config = function()
    vim.api.nvim_set_keymap("n", "<leader>r", ":MRU<CR>", {noremap = true, silent = true})
  end
}
