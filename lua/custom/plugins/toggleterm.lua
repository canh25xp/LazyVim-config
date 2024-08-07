return {
  "akinsho/toggleterm.nvim",
  opts = {
    size = 20,
    open_mapping = [[<C-\>]],
    hide_numbers = true,
    shade_terminals = false,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    close_on_exit = true,
  },
  cmd = "ToggleTerm",
  keys = {
    { [[<C-\>]] },
    { "<leader>0", "<Cmd>2ToggleTerm<Cr>", desc = "Terminal #2" },
    { "<leader>t", "<Cmd>ToggleTerm direction=tab<Cr>", desc = "Terminal in new tab" },
  },
}
