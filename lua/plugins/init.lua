return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- test new blink
  { import = "nvchad.blink.lazyspec" },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "python"
  		},
  	},
  	branch = "main",
  },

  {
    "L3MON4D3/LuaSnip",
    dependencies = {
    	{"rafamadriz/friendly-snippets",
    	config = function()
				require("luasnip.loaders.from_vscode").lazy_load()
				-- require("luasnip.loaders.from_lua").lazy_load({ paths = { "./snippets" } })
    	end,
    	}
    },
    event = { "InsertEnter" },
    opts = {
    	history = true, updateevents = "TextChanged,TextChangedI",
    	enable_autosnippets = true,
    },
    config = function(_, opts)
      require("luasnip").config.set_config(opts)
      require "nvchad.configs.luasnip"
    end,
    build = "make install_jsregexp"
  },
}
