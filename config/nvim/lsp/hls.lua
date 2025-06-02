return {
    cmd = { "haskell-language-server-wrapper", "--lsp" },
    filetypes = { "haskell", "lhaskell" },
    root_markers = { ".cabal", ".git" },
    settings = {
        haskell = {
            cabalFormattingProvider = "cabalfmt",
            formattingProvider = "ormolu",
        },
    },
}
