local wk = lvim.builtin.which_key
local kind = require('user.kind')

-- Debugpy keymaps
wk.mappings["dm"] = { "<cmd>lua require('neotest').run.run()<cr>",
  "Test Method" }
wk.mappings["dM"] = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>",
  "Test Method DAP" }
wk.mappings["df"] = {
  "<cmd>lua require('neotest').run.run({vim.fn.expand('%')})<cr>", "Test Class" }
wk.mappings["dF"] = {
  "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy = 'dap'})<cr>", "Test Class DAP" }
wk.mappings["dS"] = { "<cmd>lua require('neotest').summary.toggle()<cr>", "Test Summary" }

wk.mappings[";"] = {
  name = "Trouble",
  t = { "<cmd>TroubleToggle<cr>", "Trouble Toggle" },
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble document_diagnostics<cr>", "Diagnosticss" },
  q = { "<cmd>Trouble quickfix<cr>", "Quickfix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble workspace_diagnostics<cr>", "Diagnosticss" },
}

wk.mappings["a"] = { ":Alpha<cr>", "Dashboard " .. kind.icons.screen }

wk.mappings["P"] = {
  name = "Persistence.nvim",
  s = { "<cmd>lua require('persistence').load()<cr>", kind.icons.clock .. " Reload last session for dir" },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", kind.icons.clock .. " Restore last session" },
  Q = { "<cmd>lua require('persistence').stop()<cr>", kind.icons.exit .. " Quit without saving session" },
}

wk.mappings["l"]["t"] = { ":LvimToggleFormatOnSave<cr>", kind.symbols_outline.File .. " Toggle format-on-save" }
wk.mappings["l"]["R"] = { ":LspRestart<cr>", kind.icons.exit .. " Restart" }

wk.mappings["s"]["w"] = {
  "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })<cr>",
  ' ' .. kind.cmp_kind.EnumMember .. " Search Word Under Cursor"
}

wk.mappings["m"] = {
  name = "Harpoon " .. kind.todo_comments.PERF,
  m = { ":lua require('harpoon.mark').add_file()<cr>", "Mark file" },
  t = { ":lua require('harpoon.ui').toggle_quick_menu()<cr>", "Toggle UI" },
  a = { ":lua require('harpoon.ui').nav_file(1)<cr>", "Goto mark 1" },
  s = { ":lua require('harpoon.ui').nav_file(2)<cr>", "Goto mark 2" },
  d = { ":lua require('harpoon.ui').nav_file(3)<cr>", "Goto mark 3" },
  f = { ":lua require('harpoon.ui').nav_file(4)<cr>", "Goto mark 4" },
  g = { ":lua require('harpoon.ui').nav_file(5)<cr>", "Goto mark 5" },
  q = { ":lua require('harpoon.ui').nav_file(6)<cr>", "Goto mark 6" },
  w = { ":lua require('harpoon.ui').nav_file(7)<cr>", "Goto mark 7" },
  e = { ":lua require('harpoon.ui').nav_file(8)<cr>", "Goto mark 8" },
  r = { ":lua require('harpoon.ui').nav_file(9)<cr>", "Goto mark 9" },
  n = { ":lua require('harpoon.ui').nav_next()<cr>", "Next file" },
  p = { ":lua require('harpoon.ui').nav_prev()<cr>", "Prev file" },
}

wk.mappings["W"] = {
  name = "Window Ctrl " .. kind.icons.screen,
  h = { '<C-w>|', 'Maximize window horizontally (|)' },
  v = { '<C-w>_', 'Maximize window vertically (_)' },
  ['='] = { '<C-w>=', 'Resize windows equally' },
  s = { ":lua require('telescope-tabs').list_tabs()<cr>", 'Search Tabs' },
}


wk.mappings["t"] = {
  name = 'Telescope',
  p = { ':Telescope projects<cr>', 'Projects' }, -- requires telescope-project.nvim plugin
  r = { ':Telescope resume<cr>', 'Resume' },
}

wk.mappings["u"] = {
  name = 'Useful ',
  s = { "<cmd>!chmod +x %<CR>", 'Make exe' },
  x = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "Substitute" },
}

wk.mappings["Q"] = {
  name = 'Quickfix ',
  k = { "<cmd>cnext<CR>zz", "cnext" },
  j = { "<cmd>cprev<CR>zz", 'cprev' },
  K = { "<cmd>lnext<CR>zz", "lnext" },
  J = { "<cmd>lprev<CR>zz", "lprev" },
}

wk.vmappings["p"] = { "\"_dP", "PasteKeep" }

wk.mappings["sL"] = { "<cmd>Telescope lsp_references <cr>", "LSP References" }
wk.mappings["sW"] = { "<cmd>Telescope grep_string <cr>", " Search Word " }

-- wk.mappings["G"] = {
--   name = ' ' .. kind.icons.hint .. " Github Copilot",
--   a = { ":lua require('copilot.suggestion').accept()<cr>", "Accept" },
--   n = { ":lua require('copilot.suggestion').next()<cr>", "Next" },
--   N = { ":lua require('copilot.suggestion').prev()<cr>", "Prev" },
--   d = { ":lua require('copilot.suggestion').dismiss()<cr>", "Dismiss" },
--   t = { ":lua require('copilot.suggestion').toggle_auto_trigger()<cr>", "Toggle Auto Trigger" },
-- }
