shared_script '@likizao_ac/client/library.lua'



fx_version 'bodacious'
game 'gta5'


ui_page 'nui/index.html'

client_scripts {
	'@vrp/lib/utils.lua',
	'client.lua',
	"config.lua"
}

server_scripts {
	'@vrp/lib/utils.lua',
	'server.lua',
	"config.lua"
}

files {
	'nui/*',
	'nui/imagens/*',
}
                                          