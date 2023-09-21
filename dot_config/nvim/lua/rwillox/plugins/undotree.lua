return {
    'mbbill/undotree',

    config = function ()
       -- local undotree = require("undotree")
        
        local keymap = vim.keymap 
        keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
   end
}
