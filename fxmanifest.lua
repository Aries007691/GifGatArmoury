name "chair"
author "Gifgat"
version "v0.1"
description "chair"
fx_version "cerulean"
game "gta5"

client_scripts {
    '@PolyZone/client.lua',
  '@PolyZone/BoxZone.lua',
  '@PolyZone/EntityZone.lua',
  '@PolyZone/CircleZone.lua',
  '@PolyZone/ComboZone.lua',    
    'client/*.lua',    
}
shared_scripts {
  'config.lua',
}

server_scripts {    
    'server/*.lua',
}
