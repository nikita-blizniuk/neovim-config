local project_nvim = require'project_nvim'
project_nvim.setup {
    patterns = { "pom.xml", ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" }
}

local telescope = require'telescope'
telescope.load_extension('projects')
telescope.setup {
    defaults = {
        file_ignore_patterns = { "%.png", "%.meta", "Library/" }
    }
}
