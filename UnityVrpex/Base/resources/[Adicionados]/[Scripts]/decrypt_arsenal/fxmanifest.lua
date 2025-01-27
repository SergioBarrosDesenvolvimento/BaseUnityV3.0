fx_version "adamant"
game "gta5"

shared_scripts {"@vrp/lib/utils.lua", "config.lua"}

ui_page "web/build/index.html"

client_scripts {
    "client.lua"
}

server_scripts {
    "server.lua"
}

files {
    "web/build/*",
    "web/build/**/*"
}