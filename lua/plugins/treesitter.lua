return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        require 'nvim-treesitter.install'.compilers = { "clang" }
        require 'nvim-treesitter.install'.install {
            "lua", "vim", "vimdoc", "query", 
            "go", "java", "javascript", "c_sharp", 
            "python", "typescript", "bash", "markdown" 
        }
        require 'nvim-treesitter'.setup {
            ensure_installed = { 
                "lua", "vim", "vimdoc", "query", 
                "go", "java", "javascript", "c_sharp", 
                "python", "typescript", "bash", "markdown" 
            },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = true,
            },
        }
    end
}
