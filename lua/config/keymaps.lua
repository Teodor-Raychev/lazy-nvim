local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Telescope:
keymap.set("n", "<leader>?", require("telescope.builtin").oldfiles, { desc = "[?] Find recently opened files" })
keymap.set("n", "<leader><space>", require("telescope.builtin").buffers, { desc = "[ ] Find existing buffers" })
keymap.set("n", "<leader>/", function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require("telescope.builtin").current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
    winblend = 10,
    previewer = false,
  }))
end, { desc = "[/] Fuzzily search in current buffer" })

keymap.set("n", "<leader>gf", require("telescope.builtin").git_files, { desc = "Search [G]it [F]iles" })
keymap.set("n", "<leader>sf", require("telescope.builtin").find_files, { desc = "[S]earch [F]iles" })
keymap.set("n", "<leader>sh", require("telescope.builtin").help_tags, { desc = "[S]earch [H]elp" })
keymap.set("n", "<leader>sw", require("telescope.builtin").grep_string, { desc = "[S]earch current [W]ord" })
keymap.set("n", "<leader>sg", require("telescope.builtin").live_grep, { desc = "[S]earch by [G]rep" })
keymap.set("n", "<leader>sd", require("telescope.builtin").diagnostics, { desc = "[S]earch [D]iagnostics" })

-- jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)
-- tabs
keymap.set("n", "te", "tabedit", opts)
-- Do not yank with x
-- keymap.set("n", "x", '"_x')
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Increment/decrement Integer num
-- Delete word backwards
keymap.set("n", "dw", 'vb"_d')
keymap.set("v", "<", "<gv")
keymap.set("n", ">", ">gv")
keymap.set("n", ">", ">gv")
keymap.set("v", "<", "<gv")

--move tabs(buffers) left/right
-- Go to definition
keymap.set({ "n", "v" }, "<C-b>", "gd")

-- Move lines up and down while in visual mode.
keymap.set("v", "<down>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<up>", ":m '<-2<CR>gv=gv")
-- Keep cursor as move.
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
-- Keep cursor in middle on search.
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
-- Keep cursor centered as move up and down.
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
-- keep the paste buffer.
keymap.set("x", "<leader>p", '"_dP')
-- next greatest remap ever : asbjornHaland yanks to system clipboard.
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])
keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
keymap.set("n", "<leader>f", vim.lsp.buf.format)
-- search file and replace:
keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Selections
keymap.set("n", "<A-w>", [[:bd<Enter>]])
-- Select All
keymap.set("n", "<C-a>", "gg<S-v>G")
-- higlight and copy word
keymap.set("n", "<leader>h", "viw<leader>y")
-- higlight and copy whole block
keymap.set("n", "<leader>H", "viW<leader>y")
-- keymap.set("n", "viw", "C-w")
-- Togle Neotree
keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>")
