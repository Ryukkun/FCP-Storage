execute store result score $CP-X1 FCP.MoveSC run data get storage fcp: TP.Pos[0] 0.1
execute store result score $CP-Z1 FCP.MoveSC run data get storage fcp: TP.Pos[2] 0.1
execute store result score $PL-X1 FCP.MoveSC run data get entity @s Pos[0] 0.1
execute store result score $PL-Z1 FCP.MoveSC run data get entity @s Pos[2] 0.1


# 移動距離　結果は $CP-○ へ
scoreboard players operation $CP-X1 FCP.MoveSC -= $PL-X1 FCP.MoveSC
scoreboard players operation $CP-Z1 FCP.MoveSC -= $PL-Z1 FCP.MoveSC
scoreboard players operation $CP-X1-Copy FCP.MoveSC = $CP-X1 FCP.MoveSC
scoreboard players operation $CP-Z1-Copy FCP.MoveSC = $CP-Z1 FCP.MoveSC
execute if score $CP-X1 FCP.MoveSC matches ..-1 run scoreboard players operation $CP-X1-Copy FCP.MoveSC *= $-1 FCP.MoveSC
execute if score $CP-Z1 FCP.MoveSC matches ..-1 run scoreboard players operation $CP-Z1-Copy FCP.MoveSC *= $-1 FCP.MoveSC


# TP
scoreboard players operation $ FCP.MoveSC = $CP-X1-Copy FCP.MoveSC
execute if score $CP-X1 FCP.MoveSC matches 1.. rotated -90 0 positioned ~ 1000 ~ run function fcp:tp/1/30
execute if score $CP-X1 FCP.MoveSC matches ..1 rotated 90 0 positioned ~ 1000 ~ run function fcp:tp/1/30

scoreboard players operation $ FCP.MoveSC = $CP-Z1-Copy FCP.MoveSC
execute at @s if score $CP-Z1 FCP.MoveSC matches 1.. rotated 0 0 run function fcp:tp/1/30
execute at @s if score $CP-Z1 FCP.MoveSC matches ..1 rotated 180 0 run function fcp:tp/1/30

tag @s add FCP.Float-PL
effect give @s levitation 1000 255 true