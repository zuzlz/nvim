-- #PLUGINS
-- git clone --depth=1 https://github.com/savq/paq-nvim.git \
--     "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim


require "paq" {

    "savq/paq-nvim";

    { "vimwiki/vimwiki", branch = "dev" },

    "coderifous/textobj-word-column.vim",
    "echasnovski/mini.hipatterns",
    "echasnovski/mini.indentscope",
    "junegunn/vim-easy-align",
    "kylechui/nvim-surround",
    "numToStr/Comment.nvim",
    "romainl/vim-qf",
    "ThePrimeagen/harpoon",
    "christoomey/vim-tmux-navigator",

    "mbbill/undotree",
    "tpope/vim-eunuch",
    "tpope/vim-fugitive",
    "lewis6991/gitsigns.nvim",

    "nvim-lua/plenary.nvim",

    "rebelot/kanagawa.nvim",

    "stevearc/oil.nvim",
    "ibhagwan/fzf-lua",

    { "nvim-treesitter/nvim-treesitter", build = ':TSUpdate' },
    "nvim-treesitter/nvim-treesitter-textobjects",
    "nvim-treesitter/nvim-treesitter-context",

    -- LSP / completion
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-calc",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-nvim-lsp-signature-help",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-path",
    "L3MON4D3/LuaSnip",
    "saadparwaiz1/cmp_luasnip";

    { "williamboman/mason.nvim", build = ':MasonUpdate' },
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    "j-hui/fidget.nvim",

    -- Language
    -- "fatih/vim-go";
}
