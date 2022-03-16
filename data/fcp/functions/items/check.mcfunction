## UUID 比較
data modify storage fcp: Check-UUID.Sorce set from entity @s UUID
execute as @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..5] run function fcp:items/check-2
execute if entity @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..5,scores={FCP.CP-Num=0}] run function fcp:items/give
kill @e[type=item,nbt={Item:{id:"minecraft:gold_ingot"}},distance=..5,scores={FCP.CP-Num=0}]

scoreboard players set @s FCP.Drop-GI 0