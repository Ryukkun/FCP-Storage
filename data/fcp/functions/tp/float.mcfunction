# 座標
function fcp:oh_my_dat/please

data remove storage fcp: TP
execute if score @s FCP.CP-Num matches 1 run data modify storage fcp: TP set from storage fcp: oh_my_dat._[-4][-4][-4][-4][-4][-4][-4][-4].CP1
execute if score @s FCP.CP-Num matches 2 run data modify storage fcp: TP set from storage fcp: oh_my_dat._[-4][-4][-4][-4][-4][-4][-4][-4].CP2
execute if score @s FCP.CP-Num matches 3 run data modify storage fcp: TP set from storage fcp: oh_my_dat._[-4][-4][-4][-4][-4][-4][-4][-4].CP3
execute if score @s FCP.CP-Num matches 4 run data modify storage fcp: TP set from storage fcp: oh_my_dat._[-4][-4][-4][-4][-4][-4][-4][-4].CP4


# TP
kill @e[tag=FCP.Float]
summon armor_stand ~ ~ ~ {Tags:["FCP.Float"],Marker:1b,Invisible:1b,Silent:1b}

data merge storage fcp: {TP:{Success:0b}}
data modify entity @e[tag=FCP.Float,distance=..0.0001,limit=1] Rotation set from storage fcp: TP.Rotation
data modify entity @e[tag=FCP.Float,distance=..0.0001,limit=1] Pos set from storage fcp: TP.Pos
tp @s @e[tag=FCP.Float,sort=nearest,limit=1]

data modify storage fcp: Check-Pos.Sorce set from entity @e[tag=FCP.Float,limit=1] Pos
data modify storage fcp: Check-Pos.Sorce-C set from storage fcp: Check-Pos.Sorce
execute store success storage fcp: TP.Success byte 1 run data modify storage fcp: Check-Pos.Sorce-C set from entity @s Pos

execute if data storage fcp: {TP:{Success:0b}} run tag @s remove FCP.Float-PL
execute if data storage fcp: {TP:{Success:0b}} run effect clear @s levitation

kill @e[tag=FCP.Float]