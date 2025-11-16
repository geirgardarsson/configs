-- ~/.config/nvim/lua/plugins/catppuccin.lua
return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Load before other plugins
    config = function()
        require("catppuccin").setup({
            flavour = "mocha", -- Choose: latte, frappe, macchiato, mocha
            transparent_background = false,
            term_colors = true,
            integrations = {
                treesitter = true,
                native_lsp = {
                    enabled = true,
                    virtual_text = {
                        errors = { "italic" },
                        hints = { "italic" },
                        warnings = { "italic" },
                        information = { "italic" },
                    },
                    underlines = {
                        errors = { "underline" },
                        hints = { "underline" },
                        warnings = { "underline" },
                        information = { "underline" },
                    },
                },
                telescope = true,
                gitsigns = true,
                cmp = true,
                indent_blankline = {
                    enabled = true,
                    scope_color = "lavender",
                    colored_indent_levels = false,
                },
                nvimtree = true,
                which_key = true,
                lualine = true,
            },
        })

        -- Apply the color scheme
        vim.cmd.colorscheme("catppuccin")
    end,
}

