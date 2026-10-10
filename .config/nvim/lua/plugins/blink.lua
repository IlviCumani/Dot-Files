return {
  -- Weave the Avante source into blink.cmp, that the box beneath thy cursor
  -- may conjure files and mentions ('@'), commands ('/') and shortcuts ('#')
  -- within the Avante vessel, filtered as thy fingers press onward.
  "saghen/blink.cmp",
  optional = true,
  dependencies = { "Kaiser-Yang/blink-cmp-avante" },
  ---@module 'blink.cmp'
  opts = function(_, opts)
    -- Append, rather than overthrow, lest thy LSP and path sources be cast down.
    opts.sources = opts.sources or {}
    opts.sources.default = opts.sources.default or {}
    if not vim.tbl_contains(opts.sources.default, "avante") then
      table.insert(opts.sources.default, "avante")
    end

    opts.sources.providers = opts.sources.providers or {}
    opts.sources.providers.avante = {
      module = "blink-cmp-avante",
      name = "Avante",
      -- Set high, that the Avante omens rise above lesser completions.
      score_offset = 1000,
      opts = {},
    }
  end,
}
