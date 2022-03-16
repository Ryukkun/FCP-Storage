# 座標保存
function fcp:oh_my_dat/please

# Set Num
execute if entity @e[nbt={Item:{tag:{FCP:{SetCP:1b}}}},distance=..5,scores={FCP.CP-Num=0}] run scoreboard players set @s FCP.CP-Num 1
execute if entity @e[nbt={Item:{tag:{FCP:{SetCP:2b}}}},distance=..5,scores={FCP.CP-Num=0}] run scoreboard players set @s FCP.CP-Num 2
execute if entity @e[nbt={Item:{tag:{FCP:{SetCP:3b}}}},distance=..5,scores={FCP.CP-Num=0}] run scoreboard players set @s FCP.CP-Num 3
execute if entity @e[nbt={Item:{tag:{FCP:{SetCP:4b}}}},distance=..5,scores={FCP.CP-Num=0}] run scoreboard players set @s FCP.CP-Num 4

# Save Pos
execute as @s[scores={FCP.CP-Num=1}] run data modify storage fcp: oh_my_dat._[-4][-4][-4][-4][-4][-4][-4][-4].CP1.Pos set from entity @s Pos
execute as @s[scores={FCP.CP-Num=1}] run data modify storage fcp: oh_my_dat._[-4][-4][-4][-4][-4][-4][-4][-4].CP1.Rotation set from entity @s Rotation
execute as @s[scores={FCP.CP-Num=2}] run data modify storage fcp: oh_my_dat._[-4][-4][-4][-4][-4][-4][-4][-4].CP2.Pos set from entity @s Pos
execute as @s[scores={FCP.CP-Num=2}] run data modify storage fcp: oh_my_dat._[-4][-4][-4][-4][-4][-4][-4][-4].CP2.Rotation set from entity @s Rotation
execute as @s[scores={FCP.CP-Num=3}] run data modify storage fcp: oh_my_dat._[-4][-4][-4][-4][-4][-4][-4][-4].CP3.Pos set from entity @s Pos
execute as @s[scores={FCP.CP-Num=3}] run data modify storage fcp: oh_my_dat._[-4][-4][-4][-4][-4][-4][-4][-4].CP3.Rotation set from entity @s Rotation
execute as @s[scores={FCP.CP-Num=4}] run data modify storage fcp: oh_my_dat._[-4][-4][-4][-4][-4][-4][-4][-4].CP4.Pos set from entity @s Pos
execute as @s[scores={FCP.CP-Num=4}] run data modify storage fcp: oh_my_dat._[-4][-4][-4][-4][-4][-4][-4][-4].CP4.Rotation set from entity @s Rotation

# Give
clear @s lingering_potion{FCP:{Item:2b}}
execute unless data entity @s SelectedItem run tag @s add FCP.change-main
execute if data entity @s {SelectedItem:{tag:{FCP:{Item:2b}}}} run tag @s add FCP.change-main
loot replace entity @s[tag=FCP.change-main] weapon.mainhand loot fcp:set-cp
loot replace entity @s[tag=!FCP.change-main] hotbar.1 loot fcp:set-cp
tag @s remove FCP.change-main

# Effect
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~
tellraw @s " FCP ▷▷ CPを設定しました :l"