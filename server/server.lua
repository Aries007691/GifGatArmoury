---@diagnostic disable: undefined-global
local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('blank:server:giveitem', function(name, amount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local playername = Player.PlayerData.name
    local webhookUrl = Config.WebhookUrl
    local playerlicense =Player.PlayerData.license
    local cid = Player.PlayerData.citizenid
    local job = Player.PlayerData.job.name
    local rank = Player.PlayerData.job.grade.level
    local firstname =  Player.PlayerData.charinfo.firstname
    local lastname =  Player.PlayerData.charinfo.lastname
    TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items[name], "add")
    Player.Functions.AddItem(name, amount) 
    local headers = { ['Content-Type'] = 'application/json' }
    local data = {
        ['embeds'] = {
            {
                ['title'] = 'The Armoury Has Been Used',
                ['description'] = 'Just Reporting The Followng Items issued!',
                ['color'] = 65280, -- Green color code
                ['fields'] = {
                    {
                        ['name'] = 'Officer',
                        ['value'] = firstname .. ' ' .. lastname,
                        ['inline'] = true
                    },
                    {
                        ['name'] = 'Rank',
                        ['value'] = rank,
                        ['inline'] = true
                    },
                    {
                        ['name'] = 'Cid',
                        ['value'] = cid,
                        ['inline'] = true
                    },
                    {
                        ['name'] = '', -- This is a blank field with a zero-width space character
                        ['value'] = '', -- This is another blank field with a zero-width space character
                        ['inline'] = false
                    },
                    {
                        ['name'] = 'Item',
                        ['value'] = name,
                        ['inline'] = true
                    },
                    {
                        ['name'] = 'Amount',
                        ['value'] = amount,
                        ['inline'] = true
                    }
                }
            }
        }
    }
    PerformHttpRequest(webhookUrl, function(statusCode, response, headers)
    end, 'POST', json.encode(data), headers)
    
end)

QBCore.Functions.CreateCallback('blank:server:job', function(source, cb)    
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local rank = Player.PlayerData.job.grade.level
    local job = Player.PlayerData.job.name
    local duty = Player.PlayerData.job.onduty
    
    return cb(job,rank, duty)
end)

RegisterNetEvent('armory:server:grabkit', function(data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local playername = Player.PlayerData.name       
    local cid = Player.PlayerData.citizenid  
    local job = Player.PlayerData.job.name
    local rank = Player.PlayerData.job.grade.level     
    local duty = Player.PlayerData.job.onduty
    local webhookUrl = Config.WebhookUrl
    local firstname =  Player.PlayerData.charinfo.firstname
    local lastname =  Player.PlayerData.charinfo.lastname
    if job == "police" then
        if duty then
            for k,v in pairs(Config.kit) do 
                for i = 1, #v.authorizedJobGrades do                
                    if v.authorizedJobGrades[i] == rank then
            TriggerClientEvent("inventory:client:ItemBox", src, QBCore.Shared.Items[v.item], "add")
                Player.Functions.AddItem(v.item, v.amount)                       
                    end
                end
            end
            local headers = { ['Content-Type'] = 'application/json' }
            local data = {
                ['embeds'] = {
                    {
                        ['title'] = 'The Armoury Has Been Used',
                        ['description'] = 'A Kit Was Issued!',
                        ['color'] = 65280, -- Green color code
                        ['fields'] = {
                            {
                                ['name'] = 'Officer',
                                ['value'] = firstname .. ' ' .. lastname,
                                ['inline'] = true
                            },
                            {
                                ['name'] = 'Rank',
                                ['value'] = rank,
                                ['inline'] = true
                            },
                            {
                                ['name'] = 'Cid',
                                ['value'] = cid,
                                ['inline'] = true
                            },
                        }
                    }
                }
            }
            PerformHttpRequest(webhookUrl, function(statusCode, response, headers)
            end, 'POST', json.encode(data), headers)
        else
            TriggerClientEvent('QBCore:Notify', src, "You are not on duty", "error")
        end
    else
        TriggerClientEvent('QBCore:Notify', src, "You are not polce officer", "error")
    end
end)    