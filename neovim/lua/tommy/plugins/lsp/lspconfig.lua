return {
  "neovim/nvim-lspconfig",
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()

    keys[#keys + 1] = { "<leader>cR", "<cmd>Telescope lsp_references<CR>" } -- show definition, references
    -- keys[#keys + 1] = { "gD", vim.lsp.buf.declaration }                                      -- go to declaration
    -- keys[#keys + 1] = { "gd", "<cmd>Telescope lsp_definitions<CR>" }                         -- show lsp definitions
    keys[#keys + 1] = { "<leader>ci", "<cmd>Telescope lsp_implementations<CR>" }             -- show lsp implementations
    keys[#keys + 1] = { "<leader>ct", "<cmd>Telescope lsp_type_definitions<CR>" }            -- show lsp type definitions
    keys[#keys + 1] = { "<leader>ca", vim.lsp.buf.code_action }                              -- see available code actions, in visual mode will apply to selection
    keys[#keys + 1] = { "<leader>crn", vim.lsp.buf.rename }                                  -- smart rename
    keys[#keys + 1] = { "<leader>cD", "<cmd>Telescope diagnostics bufnr=1<CR>" }             -- show  diagnostics for file
    keys[#keys + 1] = { "<leader>cd", vim.diagnostic.open_float }                            -- show diagnostics for line
    keys[#keys + 1] = { "<leader>kd", vim.diagnostic.goto_prev }                             -- jump to previous diagnostic in buffer
    keys[#keys + 1] = { "<leader>jd", vim.diagnostic.goto_next }                             -- jump to next diagnostic in buffer
    -- keys[#keys + 1] = { "K", vim.lsp.buf.hover }                                             -- show documentation for what is under cursor
    keys[#keys + 1] = { "<leader>crs", ":LspRestart<CR>" }                                   -- mapping to restart lsp if necessary
    keys[#keys + 1] = { "<leader>cr", false }                                                -- mapping to restart lsp if necessary
    keys[#keys + 1] = { "<leader>gr", false }                                                -- mapping to restart lsp if necessary
    keys[#keys + 1] = { "<leader>gy", false }                                                -- mapping to restart lsp if necessary
    keys[#keys + 1] = { "<leader>gI", false }                                                -- mapping to restart lsp if necessary
    keys[#keys + 1] = { "<leader>css", "<cmd>Telescope lsp_dynamic_workspace_symbols <cr>" } -- show definition, references
  end,
}
