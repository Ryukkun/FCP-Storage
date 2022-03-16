tag @s[gamemode=creative] add FCP.ImCR
gamemode adventure @s[tag=FCP.ImCR]
gamemode creative @s[tag=!FCP.ImCR]
tag @s remove FCP.ImCR
loot replace entity @s hotbar.2 loot fcp:gamemode

# Effect
stopsound @s * entity.snowball.throw
playsound minecraft:entity.item_frame.add_item ambient @s ~ ~ ~ 1 2 1