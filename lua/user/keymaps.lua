local kind = require('user.kind')

lvim.leader = "space"

-- Example of a keymap:
-- lvim.keys.normal_mode["<leader>lb"] = ":LvimToggleFormatOnSave<cr>"

lvim.keys.normal_mode["<C-d>"] = "<C-d>zz"
lvim.keys.normal_mode["<C-u>"] = "<C-u>zz"
lvim.keys.normal_mode["J"] = "mzJ`z"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["gn"] = ":tabe %<CR>"
lvim.keys.normal_mode["n"] = "nzzzv"
lvim.keys.normal_mode["N"] = "Nzzzv"
lvim.keys.normal_mode["<C-f>"] = "<cmd>silent !tmux neww tmux-sessionizer<CR>"

lvim.lsp.buffer_mappings.normal_mode["gr"] = {
  ":lua require'telescope.builtin'.lsp_references()<cr>",
  kind.cmp_kind.Reference .. " Find references"
}

lvim.lsp.buffer_mappings.normal_mode["gd"] = {
  ":lua vim.lsp.buf.definition()<cr>",
  -- ":lua require'telescope.builtin'.lsp_definitions()<cr>",
  kind.cmp_kind.Reference .. " Definitions"
}

lvim.lsp.buffer_mappings.normal_mode["gD"] = {
  ":lua vim.lsp.buf.type_definition()<cr>",
  kind.cmp_kind.Reference .. " Type Definition"
}

lvim.lsp.buffer_mappings.normal_mode["gf"] = {
  ":Telescope frecency<cr>",
  kind.cmp_kind.Reference .. " Telescope Frecency"
}



-- -- coderunner
-- -- lvim.keys.normal_mode["r"] = false
-- -- LunarVim key mappings
-- lvim.keys.normal_mode["<leader>rc"] = { ":RunCode<CR>", { silent = false } }
-- lvim.keys.normal_mode["<leader>rf"] = { ":RunFile<CR>", { silent = false } }
-- -- lvim.keys.normal_mode["<leader>rft"] = { ":RunFile tab<CR>", { silent = false } }
-- lvim.keys.normal_mode["<leader>rp"] = { ":RunProject<CR>", { silent = false } }
-- -- lvim.keys.normal_mode["<leader>rc"] = { ":RunClose<CR>", { silent = false } }
-- -- lvim.keys.normal_mode["<leader>crf"] = { ":CRFiletype<CR>", { silent = false } }
-- -- lvim.keys.normal_mode["<leader>crp"] = { ":CRProjects<CR>", { silent = false } }

-- -- cmake and make keymaps --
-- lvim.builtin.which_key.mappings["c"] = {}
-- -- Keymap for running 'cmake -S . -B build'
-- lvim.keys.normal_mode["<leader>cm"] = ":!cmake -S . -B build<CR>"
-- -- Keymap for running 'make -C build'
-- -- lvim.keys.normal_mode["<leader>mk"] = ":!make -C build<CR>"
-- lvim.keys.normal_mode["<leader>mk"] = ":!cmake --build ./build<CR>"

-- -- Buffer close --
-- -- Used to be <leader>b
-- lvim.keys.normal_mode["<c-q>"] = { ":BufferKill<CR>", { silent = false } }
