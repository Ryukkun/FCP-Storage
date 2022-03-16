## UUID 比較
data modify storage fcp: Check-UUID.Sorce set from entity @s UUID
execute as @e[type=snowball,nbt={Item:{tag:{FCP:{Item:3b}}}},distance=..5] run function fcp:snowball/check-2
execute if entity @e[type=snowball,nbt={Item:{tag:{FCP:{Item:3b}}}},distance=..5,scores={FCP.CP-Num=0}] run function fcp:snowball/change
kill @e[type=snowball,nbt={Item:{tag:{FCP:{Item:3b}}}},distance=..5,scores={FCP.CP-Num=0}]

scoreboard players set @s FCP.Use-SB 0