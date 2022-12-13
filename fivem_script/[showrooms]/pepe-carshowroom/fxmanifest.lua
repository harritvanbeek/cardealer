fx_version  'adamant'
author      'Harrit van Beek (boann.eu)'
description 'Carshowroom for default gta cars / bikes and more'
version     '2.0'
game        {'gta5'}


resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

client_scripts {
    'config.lua',
    'client/client.lua'
}

server_scripts {
    'config.lua',
    'server/server.lua'
}

ui_page {
    'html/ui.html'
}

files {
    'html/ui.html',
    'html/style.css',
    'html/reset.css',
    'html/script.js',
    'html/img/*.png',
    'html/img/site-bg.jpg',
}
