return {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        dependencies =  {
            { 'nvim-lua/plenary.nvim'},
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' },
            "nvim-tree/nvim-web-devicons",
        },
    config = function ()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        
        telescope.setup({
            defaults = {
                mappings = {
                    i = {
                    ["<C-k>"] = actions.move_selection_previous, -- move to previous result 
                    ["<C-j>"] = actions.move_selection_next, -- move to previous result 
                    ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist, -- move to qflist 
                    } 
                }
            }    
        })
        telescope.load_extension("fzf"); 

    --set keymaps
        local keymap = vim.keymap 

        keymap.set('n', '<leader>sf', "<CMD>Telescope find_files<cr>", {})
        keymap.set('n', '<leader>gg' ,"builtin.git_files", {})
        keymap.set('n', '<leader>sg', function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)

    end
}

