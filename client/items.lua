AddEventHandler('linden_inventory:burger', function()
	inform('You ate a delicious burger')
end)

AddEventHandler('linden_inventory:mustard', function()
	inform('You.. drank mustard')
end)

AddEventHandler('linden_inventory:bandage', function()
	local maxHealth = 200
	local health = GetEntityHealth(playerPed)
	local newHealth = math.min(maxHealth, math.floor(health + maxHealth / 16))
	SetEntityHealth(playerPed, newHealth)
end)