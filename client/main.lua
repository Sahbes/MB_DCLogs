function sahbesLog(name, message, color, webhooklink) 
    local name, message, color, webhooklink = name, message, color, webhooklink
	
    TriggerServerEvent('MB_DCLogs:sahbesLog', name, message, color, webhooklink)
end

RegisterNetEvent('MB_DCLogs:sahbesLog')
AddEventHandler('MB_DCLogs:sahbesLog', function(name, message, color, webhooklink)
	local name, message, color, webhooklink = name, message, color, webhooklink

    TriggerServerEvent('MB_DCLogs:sahbesLog', name, message, color, webhooklink)
end)