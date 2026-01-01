local M = {}

function M.setup(opts)
	opts = opts or {}

	vim.filetype.add({
		extension = {
			luna = "luna",
		},
	})

	local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

	parser_config.luna = {
		install_info = {
			url = "https://github.com/Ymit24/luna",
			files = { "src/parser.c" },
			location = "tree-sitter-luna",
			branch = "main",
		},
		filetype = "luna",
	}
end

return M
