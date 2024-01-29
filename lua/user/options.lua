local options = {
  -- smartindent = true,
  relativenumber = true,
  shiftwidth = 2,
  tabstop = 2,
  softtabstop = 2,
  expandtab = true,
  showmode = true,
  guicursor = "",
  nu = true,
  linebreak = true,
  wrap = false,
  scrolloff = 8,
  -- colorcolumn = "80",
  -- cmdheight = 0,
  swapfile = false,
  hlsearch = true,
  incsearch = true,
  termguicolors = true,
  shell = "/bin/bash",
  sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions",
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "cpp",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

-- Not sure
lvim.format_on_save.enabled = false
-- lvim.format_on_save.pattern = { "*.py" }

vim.diagnostic.config({ virtual_text = true })
lvim.builtin.treesitter.highlight.enable = true

if vim.g.neovide then
  vim.opt.guifont = "MonoLisa:h24"

  vim.g.neovide_transparency = 1
  vim.g.transparency = 0.8
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_input_macos_alt_is_meta = false
end

lvim.log.level = "warn"
lvim.format_on_save = true

lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.nvimtree.setup.filters.custom = {}

lvim.builtin.treesitter.ignore_install = {}
lvim.builtin.treesitter.highlight.enabled = true

lvim.builtin.project.detection_methods = { "lsp", "pattern" }
lvim.builtin.project.patterns = {
  ".git",
  "package-lock.json",
  "yarn.lock",
  "package.json",
  "requirements.txt",
}

lvim.builtin.telescope.defaults.path_display = {
  shorten = 4,
}

-- Disable codium
vim.g.codeium_enabled = false
