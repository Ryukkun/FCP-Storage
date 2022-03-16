## UUID 比較
data modify storage fcp: Check-UUID.Sorce set from entity @s UUID
execute as @e[type=potion,nbt={Item:{tag:{FCP:{Item:2b}}}},distance=..5] run function fcp:cp/change-cp/check-2
execute if entity @e[type=potion,nbt={Item:{tag:{FCP:{Item:2b}}}},distance=..5,scores={FCP.CP-Num=0}] run function fcp:cp/change-cp/change
kill @e[type=potion,nbt={Item:{tag:{FCP:{Item:2b}}}},distance=..5,scores={FCP.CP-Num=0}]

scoreboard players set @s FCP.Use-LP 0