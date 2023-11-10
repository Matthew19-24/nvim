local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local workspace_dir = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')

local config = {

            cmd = {
                'java',
                '-Declipse.application=org.eclipse.jdt.ls.core.id1',
                '-Dosgi.bundles.defaultStartLevel=4',
                '-Declipse.product=org.eclipse.jdt.ls.core.product',
                '-Dlog.level=ALL',
                '-Xmx1G',
                '-jar', 'C:\\Users\\N117188\\AppData\\Local\\nvim\\plugged\\eclipse-jdtls\\plugins\\org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar',
                '-configuration', 'C:\\Users\\N117188\\AppData\\Local\\nvim\\plugged\\eclipse-jdtls\\config_win',
                '-data', vim.fn.expand('~/.cahche/jdtls-workspace') .. workspace_dir,
        },

        root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew', 'pom.xml'}),
}

        require('jdtls').start_or_attach(config)
