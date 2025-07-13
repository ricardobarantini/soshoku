return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      html = { "html_beautify" },
      php = { "php_cs_fixer" },
      json = { "yq" },
    },
  },
}
