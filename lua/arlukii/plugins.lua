vim.cmd [[packadd packer.nvim]]

return require"packer".startup(function(use)
  use "wbthomason/packer.nvim"

  use "B4mbus/oxocarbon-lua.nvim"

  use {
    "nvim-telescope/telescope.nvim",
    requires = {{ "nvim-lua/plenary.nvim" }}
  }

  use {
    "nvim-lualine/lualine.nvim",
    requires = {
      "nvim-tree/nvim-web-devicons",
      opt = true
    }
  }

  use {
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require"nvim-treesitter.install".update({ with_sync = true })
      ts_update()
    end,
  }

  use {
    "VonHeikemen/lsp-zero.nvim",
    requires = {
      { "neovim/nvim-lspconfig" },
      { "williamboman/mason.nvim" },
      { "williamboman/mason-lspconfig.nvim" },

      { "hrsh7th/nvim-cmp" },
      { "hrsh7th/cmp-path" },
      { "hrsh7th/cmp-buffer" },
      { "hrsh7th/cmp-nvim-lsp" },
      { "hrsh7th/cmp-nvim-lua" },
      { "saadparwaiz1/cmp_luasnip" },

      { "L3MON4D3/LuaSnip" },
      { "rafamadriz/friendly-snippets" },
    }
  }
end)
