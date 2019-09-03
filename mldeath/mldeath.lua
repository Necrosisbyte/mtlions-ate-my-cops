function CreateNPC(type,model,anim,dict,pos,help,key,range,start,finish)
	Citizen.CreateThread(function()
		local hash = GetHashKey("A_C_MTLion")
		
		RequestModel(hash)
			while not HasModelLoaded(hash) do
				Citizen.Wait(1)
			end
			
		 RequestAnimDict("creatures@cougar@amb@world_cougar_rest@idle_a")
			while not HasAnimDictLoaded("creatures@cougar@amb@world_cougar_rest@idle_a") do
				Citizen.Wait(1)
			end
			
			local animal =
				CreatePed (28, 307287994, 1860.74, 3678.73, 34.71, 208.18, true, true)			
					    SetEntityHeading(animal, pos.h)
						FreezeEntityPosition(animal, false)
						SetEntityInvincible(animal, false)
						SetBlockingOfNonTemporaryEvents(animal, false)
						TaskPlayAnim(ped,anim,dict, 8.0, 0.0, -1, 1, 0, 0, 0, 0)
			end
		
	)
end	

CreateNPC(28,"A_C_MtLion","creatures@cougar@amb@world_cougar_rest@idle_a","idle_a",{x = 1860.74, y = 3678.73, z = 34.71, h = 0.0})
