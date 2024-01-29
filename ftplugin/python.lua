local wk_ok, wk = pcall(require, "which-key")
if not wk_ok then
  return
end

local opts = lvim.builtin.which_key.opts

local mappings = {
  -- Set key to change python env
  ["C"] = {
    name = "Python",
    c = { "<cmd>lua require('swenv.api').pick_venv()<cr>", "Choose Env" },
  }
}

wk.register(mappings, opts)
