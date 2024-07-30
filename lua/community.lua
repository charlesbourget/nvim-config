-- AstroCommunity: import any community modules here

local use_copilot = vim.env.NVIM_USE_COPILOT == "true"

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- color scheme
  { import = "astrocommunity.colorscheme.catppuccin" },

  -- ai assistant
  -- Use NVIM_USE_COPILOT to toggle between one or the other
  { import = "astrocommunity.completion.codeium-vim", enabled = not use_copilot },
  { import = "astrocommunity.completion.copilot-lua", enabled = use_copilot },

  -- zig lsp support
  { import = "astrocommunity.pack.zig" },

  -- live markdown preview
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },

  -- mini map on the side
  { import = "astrocommunity.split-and-window.mini-map" },

  { import = "astrocommunity.note-taking.obsidian-nvim" },
}
