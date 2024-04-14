-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs with `H` and `L`
        L = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
        H = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

        ["<Leader>lm"] = { desc = "Markdown" },

        ["<Leader>lmp"] = {
          function() vim.cmd "MarkdownPreview" end,
          desc = "Preview Markdown",
        },

        gne = { function() vim.diagnostic.goto_next() end, desc = "Next diagnostic" },
        gpe = { function() vim.diagnostic.goto_prev() end, desc = "Previous diagnostic" },
      },
    },
  },
}
