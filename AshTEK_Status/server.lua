RegisterCommand("online", function(source, args, rawCommand)
    local players = GetPlayers()
    local totalPlayers = #players
    local adminCount = 0

    for _, playerId in ipairs(players) do
        if IsPlayerAceAllowed(playerId, "command.admin") then
            adminCount = adminCount + 1
        end
    end

    TriggerClientEvent('chat:addMessage', source, {
        color = {78, 3, 252},
        multiline = true,
        args = { "YourServerName", "There are currently " .. totalPlayers .. " players online, including " .. adminCount .. " admin(s)." }
    })
end, false)