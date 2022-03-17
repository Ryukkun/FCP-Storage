# 座標
function fcp:oh_my_dat/please

data remove storage fcp: TP
execute if score @s FCP.CP-Num matches 1 run data modify storage fcp: TP set from storage fcp: oh_my_dat._[-4][-4][-4][-4][-4][-4][-4][-4].CP1
execute if score @s FCP.CP-Num matches 2 run data modify storage fcp: TP set from storage fcp: oh_my_dat._[-4][-4][-4][-4][-4][-4][-4][-4].CP2
execute if score @s FCP.CP-Num matches 3 run data modify storage fcp: TP set from storage fcp: oh_my_dat._[-4][-4][-4][-4][-4][-4][-4][-4].CP3
execute if score @s FCP.CP-Num matches 4 run data modify storage fcp: TP set from storage fcp: oh_my_dat._[-4][-4][-4][-4][-4][-4][-4][-4].CP4

execute if data storage fcp: TP.Pos run function fcp:tp/main
execute unless data storage fcp: TP.Pos run tellraw @s " FCP ▷▷ CPを設定してね ;I"


# score reset
scoreboard players set @s FCP.Use-TP 0