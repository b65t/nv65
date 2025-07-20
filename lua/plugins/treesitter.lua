return   {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
  require'nvim-treesitter.configs'.setup {
    ensure_installed = { "markdown", "html", "javascript", "lua", "css", "scss", "yuck" },
    sync_install = false,
    auto_install = true,
    highlight = {
      enable = true,
    },
  }
}
