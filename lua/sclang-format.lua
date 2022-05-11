local parsers = require "nvim-treesitter.parsers"

local function setup(parameters)
	-- Create a command, ':DoTheThing'
	vim.api.nvim_create_user_command(
		'SCLangFormat',
		function(input)
			local file = vim.fn.expand("%")
			local lib_path  = vim.api.nvim_get_runtime_file("parser/supercollider.so", false)[1]
			local formatter_script = vim.api.nvim_get_runtime_file("sclang_format/src/sclang_format.py", false)[1]
			local cmd = string.format("python %s -f %s -l %s", formatter_script, file, lib_path)
			-- local result = os.capture(cmd)

			vim.cmd("%!" .. cmd)

			-- print(result)
		end,
		{bang = true, desc = 'Format the current buffer using sclang format'}
	)
end

return {
    setup = setup,
}
