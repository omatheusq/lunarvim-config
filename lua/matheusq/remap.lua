local wk = lvim.builtin.which_key

lvim.leader = "space"

wk.mappings['h'] = {}
wk.mappings['l'] = {}
wk.mappings['w'] = {}
wk.mappings['f'] = {}
lvim.lsp.buffer_mappings.normal_mode['K'] = nil

-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["K"] = "5k"
lvim.keys.normal_mode["J"] = "5j"
lvim.keys.normal_mode["<leader>h"] = "_"
lvim.keys.normal_mode["<leader>l"] = "$"
lvim.keys.normal_mode["<leader>p"] = "\"_diwP"
lvim.keys.normal_mode["<leader>y"] = [["+y]]
lvim.keys.normal_mode["<leader>ip"] = [["+p]]
lvim.keys.normal_mode["<C-p>"] = [["+p]]
lvim.keys.normal_mode["<Tab>"] = "<Cmd>BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-Tab>"] = "<Cmd>BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<leader>w"] = "<Cmd>Telescope projects<CR>"
lvim.keys.normal_mode["<C-p>"] = "<Cmd>Telescope git_files<CR>"
lvim.keys.normal_mode["<leader>f"] = "<Cmd>Telescope live_grep<CR>"
lvim.keys.normal_mode["<C-w>"] = "<Cmd>BufferKill<CR>"
lvim.keys.normal_mode["<leader>i"] = "<Cmd>TypescriptAddMissingImports<CR>"
lvim.keys.normal_mode["<leader>ir"] = "<Cmd>TypescriptRemoveUnused<CR>"

lvim.keys.visual_mode["<leader>h"] = "_"
lvim.keys.visual_mode["<leader>l"] = "$"
lvim.keys.visual_mode["<leader>y"] = [["+y]]
lvim.keys.visual_mode["<leader>ip"] = [["+p]]

lvim.keys.insert_mode["kj"] = "<Esc>"
lvim.keys.insert_mode["<C-p>"] = "<Cmd>Telescope git_files<CR>"
lvim.keys.insert_mode["<C-w>"] = "<Cmd>BufferKill<CR>"
lvim.builtin.terminal.open_mapping = "<c-t>"


lvim.lsp.buffer_mappings.normal_mode["gr"] = {
  ":lua require'telescope.builtin'.lsp_references()<cr>",
}

lvim.lsp.buffer_mappings.normal_mode["gd"] = {
 -- ":lua vim.lsp.buf.definition()<cr>",
   ":lua require'telescope.builtin'.lsp_definitions()<cr>",
}

lvim.lsp.buffer_mappings.normal_mode["gD"] = {
  ":lua vim.lsp.buf.type_definition()<cr>",
}

--wk.mappings["l"]["t"] = { ":LvimToggleFormatOnSave<cr>", " Toggle format-on-save" }
wk.mappings["l"]["R"] = { ":LspRestart<cr>", " Restart" }
wk.mappings["s"]["w"] = {
  "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })<cr>",
  "Search Word Under Cursor"
}

wk.mappings["t"] = {
  name = ' Telescope',
  r = { ':Telescope resume<cr>', 'Resume' },
}