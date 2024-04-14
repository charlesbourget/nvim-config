-- AstroCommunity: import any community modules here

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- color scheme
  { import = "astrocommunity.colorscheme.catppuccin" },

  -- ai assistant
  { import = "astrocommunity.completion.codeium-vim" },

  -- zig lsp support
  { import = "astrocommunity.pack.zig" },

  -- live markdown preview
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
}
