---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astrocore").list_insert_unique(opts.ensure_installed, {
      -- defaults
				"vim",
				"lua",
				"vimdoc",
				"gitignore",
				"bash",
				"regex",
				"markdown_inline",
				-- web dev
				"html",
				"css",
				"javascript",
				"typescript",
				"jsdoc",
				"tsx",
				"json",
				"scss",
				"astro",
				-- loved ones
				"elixir",
				"eex",
				"heex",
				"erlang",
				"fish",
				"go",
				"ruby",
				"rust",
				"templ",
				-- necessary evil 
				"c",
				"jq",
				"po",
				"python",
				"sql",
				"terraform",
				"zig",
    })
  end,
}
