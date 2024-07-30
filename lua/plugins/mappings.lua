return {
  {
    "AstroNvim/astrocore",
    --@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<Leader>lmt"] = { desc = "Todo" },
          ["<Leader>lmtd"] = {
            function()
              local current_buf = vim.api.nvim_get_current_buf()
              local pattern = "## Archive"
              local line_number = vim.fn.search(pattern, "wn")

              if line_number ~= 0 then
                local current_date = os.date "%Y-%m-%d"
                local output = "### " .. current_date
                vim.api.nvim_buf_set_lines(current_buf, line_number, line_number, false, { output })
              end
            end,
            desc = "Insert date in todo",
          },
          ["<Leader>lmtf"] = {
            function()
              vim.api.nvim_command "normal! yy"
              vim.api.nvim_del_current_line()

              local pattern = "### " .. (os.date "%Y-%m-%d")
              local line_number = vim.fn.search(pattern, "wn")

              if line_number ~= 0 then
                vim.api.nvim_win_set_cursor(0, { line_number + 1, 0 })
                vim.api.nvim_put({ vim.fn.getreg '"' .. "" }, "l", true, true)
              end
            end,
            desc = "Mark item done in todo",
          },
        },
      },
    },
  },
}
