return {
    "numToStr/Comment.nvim",
    config = function()
        require("Comment").setup({
            pre_hook = function(ctx)
                -- Set comment string for JSON files
                if vim.bo.filetype == 'json' or vim.bo.filetype == 'jsonc' then
                    return '// %s'
                end
            end,
        })

        -- Add custom keybinding for toggling comment on current line
        vim.keymap.set("n", "<leader>/", function()
            require("Comment.api").toggle.linewise.current()
        end, { desc = "Toggle comment on current line" })

        -- Also add keybinding for visual mode to toggle comments on selection
        vim.keymap.set("v", "<leader>/", "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>", { desc = "Toggle comment on selection" })
    end,
}
