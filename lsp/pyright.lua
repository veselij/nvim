return {
        cmd = { 'pyright-langserver', '--stdio' },
        filetypes = { 'python', 'py' },
        root_markers = {
                "pyproject.toml",
                "setup.py",
                "setup.cfg",
                "requirements.txt",
                "pyrightconfig.json",
        },
        settings = {
                python = {
                        analysis = {
                                autoSearchPaths = true,
                                useLibraryCodeForTypes = true,
                                autoImportCompletions = true,

                        },
                        pythonPath = "./.venv/bin/python3",
                        disableOrganizeImports = true,
                },

        },
}
