local port = os.getenv('GDScript_Port') or '6005'
local cmd = vim.lsp.rpc.connect('127.0.0.1', tonumber(port))
local pipe = './godothost'

local function server_running()
	local serverlist = vim.fn.serverlist()
	for _, server in ipairs(serverlist) do
		if pipe == server then
			return true
		end
	end
	return false
end

vim.lsp.start({
	name = 'Godot',
	cmd = cmd,
	root_dir = vim.fs.dirname(vim.fs.find({ 'project.godot', '.git' }, { upward = true })[1]),
	on_attach = function(client, bufnr)
		if server_running() then
			return
		end
		vim.fn.serverstart(pipe)
	end
})
