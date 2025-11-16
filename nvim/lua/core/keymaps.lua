-- Set the leader key to space
vim.g.mapleader = " "

-- File explorer (netrw)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex, { desc = "Open file explorer" })

-- Move selected lines up or down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Keep cursor centered when joining lines or scrolling
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep search matches centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without overwriting clipboard
vim.keymap.set("x", "<leader>p", [["_dP]], { desc = "Paste without overwriting clipboard" })

-- Yank (copy) to system clipboard
-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to system clipboard" })
-- vim.keymap.set("n", "<leader>Y", [["+Y]], { desc = "Yank line to system clipboard" })

-- Delete without yanking
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking" })

-- Disable 'Q' (Ex mode)
vim.keymap.set("n", "Q", "<nop>", { desc = "Disable Ex mode" })

-- Format file using LSP
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = "Format current file" })

-- Select all
vim.keymap.set("n", "<leader>a", "ggVG")

-- Quickfix and location list navigation
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "Next quickfix item" })
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "Previous quickfix item" })
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Next location item" })
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Previous location item" })

-- Replace current word throughout file
vim.keymap.set("n", "<leader>s",
    [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "Search and replace current word" }
)

-- Make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make file executable" })

-- Insert Go-style error check snippet
-- vim.keymap.set("n", "<leader>ee", "oif err != nil {<CR>}<Esc>Oreturn err<Esc>", { desc = "Insert Go err snippet" })

-- Reload current Neovim config
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end, { desc = "Reload Neovim config" })

