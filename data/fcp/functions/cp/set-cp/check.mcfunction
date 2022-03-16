## UUID 比較
data modify storage fcp: Check-UUID.Sorce set from entity @s UUID
execute as @e[type=item,nbt={Item:{tag:{FCP:{Item:2b}}}},distance=..5] run function fcp:cp/set-cp/check-2
execute if entity @e[type=item,nbt={Item:{tag:{FCP:{Item:2b}}}},distance=..5,scores={FCP.CP-Num=0}] run function fcp:cp/set-cp/set
kill @e[type=item,nbt={Item:{tag:{FCP:{Item:2b}}}},distance=..5,scores={FCP.CP-Num=0}]

scoreboard players set @s FCP.Drop-LP 0