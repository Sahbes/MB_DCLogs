AddEventHandler('onResourceStart', function(resourceName)
  if (GetCurrentResourceName() ~= resourceName) then
    if Config.Starting == true then
      sendToDiscord("Server", ' ', "===== SERVER ACTION ===== \n\nServer is starting.\n\n======================", 3447003, nil)
    end
  end
end)

AddEventHandler('onResourceStop', function(resourceName)
  if (GetCurrentResourceName() ~= resourceName) then
    if Config.Stopping == true then
      sendToDiscord("Server", ' ', "===== SERVER ACTION ===== \n\nServer has been stopped.\n\n======================", 3447003, nil)
    end
  end
end)

AddEventHandler('playerConnecting', function()
  if Config.Connecting == true then
    local playerName = GetPlayerName(source)
    local playerIp = GetPlayerEndpoint(source)
    local playerHex = GetPlayerIdentifier(source)
    local playerPing = GetPlayerPing(source)

    sendToDiscord("Connecting", ' ', "Player Steam: *"..playerName.."*\n\nPlayer IP: *"..playerIp.."*\n\nPlayer Steam Lisence: *"..playerHex.."*", 3066993, nil)
  end
end)

AddEventHandler('playerDropped', function(reason)
  if Config.Disconnecting == true then
    local playerName = GetPlayerName(source)
    local playerIp = GetPlayerEndpoint(source)
    local playerPing = GetPlayerPing(source)
    local playerHex = GetPlayerIdentifier(source)
    local playerId = source

    sendToDiscord("Disconnecting", ' ', "Player Steam: *"..playerName.."*\n\nReason: *"..reason.."*\n\nPlayer IP: *"..playerIp.."*\n\nPlayer Steam Lisence: *"..playerHex.."*\n\n Player Ping: *"..playerPing.."*", 10038562, nil)
  end
end)

RegisterServerEvent('MB_DCLogs:sahbesLog')
AddEventHandler('MB_DCLogs:sahbesLog', function(name, message, color, webhooklink)
   local playerName = GetPlayerName(source)

   title = playerName

 	 sendToDiscord( name, title, message, color, webhooklink)
end)

function sendToDiscord(name, title, message, color, webhooklink)
    local connect = {
          {
              ["color"] = color,
              ["title"] = title,
              ["description"] = message,
              ["footer"] = {
              ["text"] = Config.Author ,
              ["icon_url"] = Config.Picture2,
              },
          }
      }

    if webhooklink == nil then
      webhooklink = Config.Webhook
    else
      webhooklink = Config.Webhooks[webhooklink].link
    end

    PerformHttpRequest( webhooklink, function(err, text, headers) end, 'POST', json.encode({username = name, embeds = connect, avatar_url = Config.Picture}), { ['Content-Type'] = 'application/json' })
end
