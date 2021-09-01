local pid = vim.fn.getpid()
local omnisharp_exe = "/Users/Work/Library/omnisharp-osx/omnisharp/OmniSharp.exe"
local cmd = { "mono", omnisharp_exe, "--languageserver", "--hostPID", tostring(pid) }; 
local coq_capabilities = coq.lsp_ensure_capabilities {
    on_attach = on_attach
}
coq_capabilities.cmd = cmd


nvim_lsp.omnisharp.setup(coq_capabilities)
