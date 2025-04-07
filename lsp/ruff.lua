return {
        cmd = { 'ruff', 'server', '--preview' },
        filetypes = { 'python', 'py' },
        root_markers = {
                "ruff.toml",
        },
}
