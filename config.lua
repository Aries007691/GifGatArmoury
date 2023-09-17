Config = {2}


Config.WebhookUrl = 'YOUR_WEBHOOK'
Config.WebhookUrl2 = 'YOUR_WEBHOOK'


Config.weapons = {
    
    
    [1] = {
        item = 'weapon_stungun',
        price = math.random(350,600),
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11},      
    },
    [3] = {
        item = 'weapon_combatpistol',
        price = math.random(350,600),
        authorizedJobGrades = {6, 7, 8, 9, 10, 11},
    },
    [4] = {
        item = 'weapon_glock17',
        price = math.random(350,600),
        authorizedJobGrades = {4, 5, 6, 7, 8, 9, 10, 11},        
    },
    [5] = {
        item = 'weapon_m4',
        price = math.random(350,600),
        authorizedJobGrades = {6, 7, 8, 9, 10, 11},  
    },   
    [6] = {   
        item = 'weapon_scarh',
        price = math.random(350,600),
        authorizedJobGrades = {6, 7, 8, 9, 10, 11},  
    },    
    [7] = {   
        item = 'weapon_colbaton',
        price = math.random(350,600),
        authorizedJobGrades = {9, 10}, 
    },
    [9] = {   
        item = 'weapon_stungun',
        price = math.random(350,600),
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11},    
    },
    [10] = {   
        item = 'weapon_assaultsmg',
        price = math.random(350,600),
        authorizedJobGrades = {3, 4, 5, 6, 7, 8, 9, 10, 11},    
    },
    [11] = {   
        item = 'weapon_sniperrifle',
        price = math.random(350,600),
        authorizedJobGrades = {6, 7, 8, 9, 10, 11},    
    },
    [12] = {   
        item = 'weapon_mp5',
        price = math.random(350,600),
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11},    
    },
    [13] = {   
        item = 'weapon_mp9',
        price = math.random(350,600),
        authorizedJobGrades = {3, 4, 5, 6, 7, 8, 9, 10, 11},    
    },
    [14] = {   
        item = 'weapon_m110',
        price = math.random(350,600),
        authorizedJobGrades = {6, 7, 8, 9, 10, 11},    
    },
}

Config.ammo = {
    [1] = {
        item = 'pistol_ammo',
        price = math.random(50,100),
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11},        
    },
    [2] = {
        item = 'rifle_ammo',
        price = math.random(50,100),
        authorizedJobGrades = {4, 5, 6, 7, 8, 9, 10, 11},       
    },
    [3] = {
        item = 'smg_ammo',
        price = math.random(50,100),
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11},        
    },
    [4] = {
        item = 'shotgun_ammo',
        price = math.random(50,100),
        authorizedJobGrades = {6, 7, 8, 9, 10, 11}
    },
    [5] = {
        item = 'snp_ammo',
        price = math.random(50,100),
        authorizedJobGrades = {6, 7, 8, 9, 10, 11}
    },
    
}
Config.tools = {
    [1] = {
        item = 'armor',
        price = math.random(250,400),
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
    },
    [2] = {
        item = 'heavyarmor',
        price = math.random(250,400),
        authorizedJobGrades = {6, 7, 8, 9, 10, 11}
    },
    [3] = {
        item = 'weapon_flashlight',
        price = math.random(50,100),
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
    },
    [4] = {
        item = 'empty_evidence_bag',
        price = math.random(50,100),
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
    },
    [5] = {
        item = 'weapon_nightstick',
        price = math.random(50,100),
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
    },
    [6] = {
        item = 'handcuffs',
        price = math.random(50,100),
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
    },
    [7] = {
        item = 'police_stormram',
        price = math.random(50,100),
        authorizedJobGrades = {7, 8, 9, 10, 11}
    },
    [8] = {
        item = 'radio',
        price = math.random(50,100),
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
    },
    [9] = {
        item = 'policegunrack',
        price = math.random(500,1000),
        authorizedJobGrades = {11}
    },
    [10] = {
        item = 'gunrackkey',
        price = math.random(500,1000),
        authorizedJobGrades = {11}
    },
    [11] = {
        item = 'keycuttingmachine',
        price = math.random(500,1000),
        authorizedJobGrades = {11}
    },
    [12] = {
        item = 'ifaks',
        price = math.random(500,1000),
        authorizedJobGrades = {6, 7, 8, 9, 10, 11}
    },
    [13] = {
        item = 'weapon_bzgas',
        price = math.random(1,50),
        authorizedJobGrades = {6, 7, 8, 9, 10, 11}
    },
    [14] = {
        item = 'specialbadge',
        price = math.random(1,50),
        authorizedJobGrades = {10, 11}
    },
    [15] = {
        item = 'harness',
        price = math.random(500,1000),
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
    },
    [16] = {
        item = 'tablet',
        price = math.random(1,50),
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
    },
}

Config.attachments = {
    [1] = {
        item = 'smg_extendedclip',
        price = math.random(500,1000),
        authorizedJobGrades = {3, 4, 5, 6, 7, 8, 9, 10, 11}
    },
    [2] = {
        item = 'smg_scope',
        price = math.random(500,1000),
        authorizedJobGrades = {3, 4, 5, 6, 7, 8, 9, 10, 11}
    },
    [3] = {
        item = 'rifle_flashlight',
        price = math.random(500,1000),
        authorizedJobGrades = {3, 4, 5, 6, 7, 8, 9, 10, 11}
    },
    [4] = {
        item = 'spikestrip',
        price = math.random(500,1000),
        authorizedJobGrades = {5, 6, 7, 8, 9, 10, 11}
    },
    [5] = {
        item = 'bandage',
        price = math.random(1,50),
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
    },
    [6] = {
        item = 'carbinerifle_scope',
        price = math.random(1,50),
        authorizedJobGrades = {5, 6, 7, 8, 9, 10, 11}
    },
    [7] = {
        item = 'pistol_flashlight',
        price = math.random(1,50),
        authorizedJobGrades = {5, 6, 7, 8, 9, 10, 11}
    },
    [8] = {
        item = 'carbinerifle_extendedclip',
        price = math.random(1,50),
        authorizedJobGrades = {5, 6, 7, 8, 9, 10, 11}
    },
    [9] = {
        item = 'shotgun_suppressor',
        price = math.random(1,50),
        authorizedJobGrades = {5, 6, 7, 8, 9, 10, 11}
    },
    [10] = {
        item = 'snspistol_grip',
        price = math.random(1,50),
        authorizedJobGrades = {5, 6, 7, 8, 9, 10, 11}
    },
}
  
Config.kit = {
    [1] = {
        item = 'armor',
        amount = 3,
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
    },
    [2] = {
        item = 'pistol_ammo',
        amount = 10,
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
    },
    
    [3] = {
        item = 'weapon_flashlight',
        amount = 1,
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
    },
    [4] = {
        item = 'empty_evidence_bag',
        amount = 10,
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
    },
    [5] = {
        item = 'weapon_nightstick',
        amount = 1,
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
    },
    [6] = {
        item = 'handcuffs',
        amount = 1,
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
    },    
    [7] = {
        item = 'radio',
        amount = 1,
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}
    },
    [8] = {
        item = 'weapon_combatpistol',
        amount = 1,
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}     
    },
    [9] = {
        item = 'weapon_stungun',
        amount = 1,
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}        
    },
    [10] = {
        item = 'specialbadge',
        amount = 1,
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}        
    },
    [11] = {
        item = 'tablet',
        amount = 1,
        authorizedJobGrades = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11}        
    },
}