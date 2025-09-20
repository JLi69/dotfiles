local function get_ccls_root()
	local ccls_dir = vim.fs.dirname(vim.fs.find(
		{ 'compile_commands.json', '.ccls' },
		{ path = vim.fn.getcwd(), upward = true }
	)[1])
	local git_dir = vim.fs.dirname(vim.fs.find(
		'.git',
		{ path = vim.fn.getcwd(), upward = true }
	)[1])
	local cwd = vim.fn.getcwd();
	return ccls_dir or git_dir or cwd
end

return {
	init_options = {
		cache = {
			directory = '/tmp/ccls-cache',
		},
		highlight = {
			lsRanges = true,
		},
	},
	workspace_required = false,
	workspace_folders = {
		{
			uri = vim.uri_from_fname(get_ccls_root()),
			name = 'project_dir'
		}	
	}
}
