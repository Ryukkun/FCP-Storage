### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### IDを新規割り当て

# ごみ掃除(抜けるとid[0]とid[-1]が丁度良いスペースになる)
function fcp:oh_my_dat/sys/gc

# id[0] + id[-1] / 2 を割り当てIDに取る
execute store result score _ FCP.ID run data get storage fcp: oh_my_dat.id[-1]
execute store result score _ FCP.Calc run data get storage fcp: oh_my_dat.id[0]
execute if score _ FCP.ID matches 0 run scoreboard players set _ FCP.ID 65536
scoreboard players operation _ FCP.ID += _ FCP.Calc
scoreboard players set _ FCP.Calc 2
scoreboard players operation _ FCP.ID /= _ FCP.Calc

# 割り当てIDに追加
data modify storage fcp: oh_my_dat.id append value -1
execute store result storage fcp: oh_my_dat.id[-1] int 1 run scoreboard players get _ FCP.ID
# 割り当てる
scoreboard players operation @s FCP.ID = _ FCP.ID
