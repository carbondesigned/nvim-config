return require("packer").startup(function()
    use("wbthomason/packer.nvim")

    -- Simple plugins can be specified as strings

    -- TJ created lodash of neovim
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")

    use({"TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim"})

    -- All the things
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/nvim-cmp")
    use("onsails/lspkind-nvim")
    use("nvim-lua/lsp_extensions.nvim")
    use("glepnir/lspsaga.nvim")
    use("simrat39/symbols-outline.nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
    use("williamboman/nvim-lsp-installer")
    use("lukas-reineke/lsp-format.nvim")
    use("mhartington/formatter.nvim")
    use('jose-elias-alvarez/null-ls.nvim')
    use("mattn/efm-langserver")
    use("akinsho/bufferline.nvim")
    use("nvim-lualine/lualine.nvim")
    use("lewis6991/gitsigns.nvim")
    use("numToStr/Comment.nvim")
    use("JoosepAlviste/nvim-ts-context-commentstring")
    use("github/copilot.vim")
    use("windwp/nvim-ts-autotag")
    use('norcalli/nvim-colorizer.lua')
    use('sbdchd/neoformat')

    -- Primeagen doesn"t create lodash
    use("ThePrimeagen/git-worktree.nvim")
    use("ThePrimeagen/harpoon")

    use("mbbill/undotree")

    -- Colorscheme section
    use("gruvbox-community/gruvbox")
    use("folke/tokyonight.nvim")
    use { "catppuccin/nvim", as = "catppuccin" }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    use("nvim-treesitter/playground")
    use("romgrk/nvim-treesitter-context")

end)
