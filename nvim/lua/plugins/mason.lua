return {
    "mason-org/mason.nvim",
    opts = {
      ui = {
          icons = {
              package_installed = "✓",
              package_pending = "➜",
              package_uninstalled = "✗"
          }
      }
    },
    confif = function()
    require("mason").setup()
    require("mason-lspconfig").setup()
  end,
}
