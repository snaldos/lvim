lvim.plugins = {
  -- python
  { "ChristianChiarulli/swenv.nvim" }, -- change python env
  { "stevearc/dressing.nvim" },        -- UI
  { "mfussenegger/nvim-dap-python" },
  { "nvim-neotest/neotest" },
  { "nvim-neotest/neotest-python" },
  { "p00f/clangd_extensions.nvim" },
  -- {
  --   "zbirenbaum/copilot.lua",
  --   cmd = "Copilot",
  --   event = "InsertEnter",
  --   config = function()
  --     require("copilot").setup({
  --       suggestions = { enabled = false },
  --       panel = { enabled = false },
  --     })
  --   end,
  -- },

  { 'jose-elias-alvarez/typescript.nvim' },

  { 'lunarvim/lunar.nvim' },
  { "morhetz/gruvbox" },
  { "sainnhe/gruvbox-material" },
  { "sainnhe/sonokai" },
  { "sainnhe/edge" },
  { "lunarvim/horizon.nvim" },
  { "tomasr/molokai" },
  { "ayu-theme/ayu-vim" },

  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },

  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end
  },

  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    config = function()
      require("persistence").setup({
        dir = vim.fn.expand(vim.fn.stdpath "state" .. "/sessions/"),
        options = { "buffers", "curdir", "tabpages", "winsize" }
      })
    end
  },

  { "christoomey/vim-tmux-navigator" },
  { "felipec/vim-sanegx",            event = "BufRead" },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  { "tpope/vim-repeat" },

  { "ThePrimeagen/harpoon" },
  { "ThePrimeagen/vim-be-good" },

  {
    'phaazon/hop.nvim',
    branch = 'v2',
    config = function()
      require('hop').setup()
    end
  },
  {
    'nvim-telescope/telescope-frecency.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'kkharji/sqlite.lua' },
  },
  {
    'AckslD/nvim-trevJ.lua',
    config = 'require("trevj").setup()',
    init = function()
      vim.keymap.set('n', '<leader>J', function()
        require('trevj').format_at_cursor()
      end, { desc = " Trevj " })
    end,
  },
  -- {
  -- "karb94/neoscroll.nvim",
  -- event = "WinScrolled",
  -- config = function()
  -- require('neoscroll').setup({
  --   -- All these keys will be mapped to their corresponding default scrolling animation
  --   mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
  --   '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
  --   hide_cursor = true,          -- Hide cursor while scrolling
  --   stop_eof = true,             -- Stop at <EOF> when scrolling downwards
  --   use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
  --   respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
  --   cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
  --   easing_function = nil,        -- Default easing function
  --   pre_hook = nil,              -- Function to run before the scrolling animation starts
  --   post_hook = nil,              -- Function to run after the scrolling animation ends
  --   })
  -- end
  -- },
  {
    "tpope/vim-surround",
    -- make sure to change the value of `timeoutlen` if it's not triggering correctly, see https://github.com/tpope/vim-surround/issues/117
    -- setup = function()
    --  vim.o.timeoutlen = 500
    -- end
  },
  {
    "tzachar/cmp-tabnine",
    build = "./install.sh",
    dependencies = "hrsh7th/nvim-cmp",
    event = "InsertEnter",
  },
  { "easymotion/vim-easymotion" },
  {
    'Exafunction/codeium.vim',
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end,
        { expr = true, silent = true })
      vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end,
        { expr = true, silent = true })
      vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
    end
  },
  { 'shaunsingh/nord.nvim' },
  { 'Mofiqul/dracula.nvim' },
  {
    'LukasPietzschmann/telescope-tabs',
    config = function()
      require('telescope').load_extension 'telescope-tabs'
      require('telescope-tabs').setup {
        -- Your custom config :^)
      }
    end,
    dependencies = { 'nvim-telescope/telescope.nvim' },
  },
  { 'mg979/vim-visual-multi' },
  {
    "olimorris/persisted.nvim",
    config = true
  },

}


lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "frecency")
end
