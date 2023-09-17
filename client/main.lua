---@diagnostic disable: undefined-global
local QBCore = exports['qb-core']:GetCoreObject()

exports["qb-target"]:AddBoxZone("newArmory1", vector3(481.57, -994.57, 30.69), 0.8, 3, { -- MRPD
    name="newArmory",
    heading = 0,
    minZ = 29.69,
    maxZ = 32.49
}, {
    options = {
        {            
            type = "client",
            event = "armory:client:open",
            icon = "fas fa-shield",
            label = "Open Armory",
            --job = "pawnshop",
        },
        {            
            type = "client",
            event = "armory:client:grabkit",
            icon = "fas fa-shield",
            label = "Grab kit",
            --job = "pawnshop",
        },
    },
distance = 4.5
})

RegisterNetEvent('armory:client:grabkit', function(data)
    TriggerServerEvent('armory:server:grabkit')
end)


RegisterNetEvent("armory:client:open", function(source, args, raw)
  exports['qb-menu']:openMenu({
      {
          header = "Police Armory",
          isMenuHeader = true, -- Set to true to make a nonclickable title
          icon = "armor", -- Set this to any item named in the shared
      },
      {
          header = "Tools",
          icon = "screwdriverset",
          txt = "Open tools",
          params = {
              event = "client:weaponsmenu",
              args = {
                  number = 1,
              }
          }
      },
      {
          header = "Weapons",
          txt = "Open weapons",
          icon = "weapon_m4",          
          params = {
              event = "client:weaponsmenu",
              args = {
                  number = 2,
              }
          }
      },
      {
        header = "Ammo",
        txt = "Open ammo",
        icon = "pistol_ammo",        
        params = {
            event = "client:weaponsmenu",
            args = {
                number = 3,
            }
        }
    },
    {
        header = "Attachements",
        txt = "Open Attachements",
        icon = "weapon_m4",          
        params = {
            event = "client:weaponsmenu",
            args = {
                number = 2,
            }
        }
    },
  })
end)

RegisterNetEvent('qb-menu:client:testMenu2', function(data)
  local number = data.number
  exports['qb-menu']:openMenu({
      {
          header = "< Go Back",
      },
      {
          header = "Number: "..number,
          txt = "Other",
          params = {
              event = "qb-menu:client:testButton",
              args = {
                  message = "This was called by clicking this button"
              }
          }
      },
  })
end)


local weaponsMenu = {
  { header = "Police Armory", isMenuHeader = true, icon = "armor" },
  { header = "Tools", txt = "Open tools", icon = "screwdriverset", params = { event = "client:weaponsmenu", args = { number = 1 } } },
  { header = "Weapons", txt = "Open weapons", icon = "weapon_m4", params = { event = "client:weaponsmenu", args = { number = 2 } } },
  { header = "Ammo", txt = "Open ammo", icon = "pistol_ammo", params = { event = "client:weaponsmenu", args = { number = 3 } } },
  { header = "Attachements", txt = "Open Attachements", icon = "weapon_m4", params = { event = "client:weaponsmenu", args = { number = 4 } } }
}

local armoryItems = {}


RegisterNetEvent('client:weaponsmenu', function(data)
    local store = data.number == 1 and Config.tools or data.number == 2 and Config.weapons or Config.ammo or data.number == 2 and Config.attachments
QBCore.Functions.TriggerCallback('blank:server:job', function(job, rank, duty)
    local store = data.number == 1 and Config.tools or data.number == 2 and Config.weapons or Config.ammo or data.number == 2 and Config.attachments
    if job == "police" and duty then
        local armoryItems = { { header = 'Police Weapons', isMenuHeader = true } }
        if store and type(store) == 'table' then -- Add a check to make sure 'store' is not nil and is a table
            function contains(table, value)
                for i, v in ipairs(table) do
                    if v == value then
                        return true
                    end
                end
                return false
            end
            
            for _, item in pairs(store) do
                if contains(item.authorizedJobGrades, rank) then
                    armoryItems[#armoryItems+1] = {
                        header = QBCore.Shared.Items[item.item].label,
                        txt = "$" .. item.price,
                        icon = item.item,
                        params = { event = 'client:ammoamount', args = { name = item.item, label = QBCore.Shared.Items[item.item].label } }
                    }
                end
            end

            armoryItems[#armoryItems+1] = { header = 'Back', params = { event = 'test:client:openMenu' } }
            exports['qb-menu']:openMenu(armoryItems)
        else
            QBCore.Functions.Notify('Store data not available', 'error', 7500)
        end
    else
        QBCore.Functions.Notify('You need to be on duty', 'error', 7500)
    end
end)
end)

RegisterNetEvent('client:ammoamount', function(data)
  local name, label = data.name, data.label
  local dialog = exports['qb-input']:ShowInput({ header = "Ammo", submitText = "Bill", inputs = { { text = label .. " : Amount", name = "ammountofammo", type = "number", isRequired = true } } })
  if dialog ~= nil then
    local amount = tonumber(dialog.ammountofammo)
    if amount > 0 then
      TriggerServerEvent('blank:server:giveitem', name, amount)
    else
      QBCore.Functions.Notify('Invalid amount', 'error')
    end
  end
end)