return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      opts.servers = opts.servers or {}
      opts.servers.pyright = opts.servers.pyright or {}
      opts.servers.pyright.settings = {
        python = {
          analysis = {
            diagnosticSeverityOverrides = {
              reportAttributeAccessIssue = "none",
              reportMissingImports = "none",
              reportPossiblyUnboundVariable = "none",  -- Suppress "possibly unbound" errors
            },
            autoImportCompletions = true,
          },
        },
      }
      return opts
    end,
  },
}
