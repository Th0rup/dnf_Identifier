ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

GetPlayers()
local name = GetPlayerName(playerId)
print(('Spiller %s - ID %i joiner nu serveren'):format(name, playerID)) -- English translate: 'Player %s - ID %i is now joning the server'
end

local steamid = false
local license = false
local discord = false
local xbl = false
local liveid = false
local ip = false

for k,v in pairs(GetPlayerIdentifiers(source))do
	print(v)

    if string.sub(v, 1, string.len("steam:")) == "steam:" then
        steamid = v
      elseif string.sub(v, 1, string.len("license:")) == "license:" then
        license = v
      elseif string.sub(v, 1, string.len("xbl:")) == "xbl:" then
        xbl  = v
      elseif string.sub(v, 1, string.len("ip:")) == "ip:" then
        ip = v
      elseif string.sub(v, 1, string.len("discord:")) == "discord:" then
        discord = v
      elseif string.sub(v, 1, string.len("live:")) == "live:" then
        liveid = v
      end
	
  end
end


