function fcp:oh_my_dat/please

execute if entity @e[nbt={Item:{tag:{FCP:{SetCP:1b}}}},distance=..5,scores={FCP.CP-Num=0}] run scoreboard players set @s FCP.CP-Num 2
execute if entity @e[nbt={Item:{tag:{FCP:{SetCP:2b}}}},distance=..5,scores={FCP.CP-Num=0}] run scoreboard players set @s FCP.CP-Num 3
execute if entity @e[nbt={Item:{tag:{FCP:{SetCP:3b}}}},distance=..5,scores={FCP.CP-Num=0}] run scoreboard players set @s FCP.CP-Num 4
execute if entity @e[nbt={Item:{tag:{FCP:{SetCP:4b}}}},distance=..5,scores={FCP.CP-Num=0}] run scoreboard players set @s FCP.CP-Num 1

clear @s lingering_potion{FCP:{Item:2b}}
execute unless data entity @s SelectedItem run tag @s add FCP.change-main
execute if data entity @s {SelectedItem:{tag:{FCP:{Item:2b}}}} run tag @s add FCP.change-main
loot replace entity @s[tag=FCP.change-main] weapon.mainhand loot fcp:set-cp
loot replace entity @s[tag=!FCP.change-main] hotbar.1 loot fcp:set-cp
tag @s remove FCP.change-main

# Effect
stopsound @s * minecraft:entity.lingering_potion.throw
playsound minecraft:entity.chicken.egg ambient @s ~ ~ ~ 0.5 2 1