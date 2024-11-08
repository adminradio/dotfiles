return {
  {
    "rmagatti/auto-session",
    lazy = false,

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/", "/tmp", "~/prl/" },
      lazy_support = true,
      close_unsupported_windows = true,
      -- log_level = 'debug',
    },
  },
}
