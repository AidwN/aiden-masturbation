
	  ESX = nil
      TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
      

AddEventHandler('onResourceStart', function(resource)
	if resource == GetCurrentResourceName() then
		Citizen.Wait(5000)
		print('[^1aiden:masturbation^0] - ^1Started^0')
	end
end)
      
      RegisterServerEvent('aiden-31:pecetever')
      AddEventHandler('aiden-31:pecetever', function()
          local src = source
          local xPlayer = ESX.GetPlayerFromId(src)
          if xPlayer.canCarryItem('Dollupecete', 5) then
              xPlayer.addInventoryItem('Dollupecete', 1)
              xPlayer.removeInventoryItem('pecete', 1)
              xPlayer.removeInventoryItem('viagra', 1)
          else
              TriggerClientEvent('esx:showNotification', src, 'Daha Fazla Döl Taşıyamazsın!')
          end
      end)

      
      ESX.RegisterServerCallback('aiden-31:itemkontrol', function(source, cb, item, itemsayisi)
          local xPlayer = ESX.GetPlayerFromId(source)
          local itemcount = xPlayer.getInventoryItem(item).count
          local itemname = xPlayer.getInventoryItem(item).label
          if itemcount >= itemsayisi then
              cb(true)
          else
              TriggerClientEvent('esx:showNotification', source, 'Üzerinde yeterli '..itemname..' yok')
          end
      end)
