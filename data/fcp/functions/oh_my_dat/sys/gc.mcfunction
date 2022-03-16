### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.
### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### ガベージコレクタ

# 前回存在を確認したIDを移動させる
data modify storage fcp: oh_my_dat.id append from storage fcp: oh_my_dat.id[0]
data remove storage fcp: oh_my_dat.id[0]

# 割り当て済みID[0]以下の最大値を取得(_ IDに入る)
execute store result score _ FCP.Calc run data get storage fcp: oh_my_dat.id[0]
scoreboard players remove _ FCP.Calc 2147483647
scoreboard players set _ FCP.ID 0
scoreboard players operation * FCP.ID -= _ FCP.Calc
scoreboard players operation _ FCP.ID > * FCP.ID
scoreboard players operation * FCP.ID += _ FCP.Calc

# 不要なデータを解放(先頭から続く基準より大きいIDは全部要らない)
scoreboard players operation _ FCP.Calc >< _ FCP.ID
execute store result score _ FCP.ID run data get storage fcp: oh_my_dat.id[0]
execute if score _ FCP.ID > _ FCP.Calc run function fcp:oh_my_dat/sys/gc_loop
scoreboard players operation _ FCP.Calc >< _ FCP.ID

# loop while x - next >= 2(prev - x) - 1 (⇔ 3x - 2prev - next + 1 >= 0)
# 2prev
execute store result score _ FCP.Calc run data get storage fcp: oh_my_dat.id[-1]
execute if score _ FCP.Calc matches 0 run scoreboard players add _ FCP.Calc 65536
execute if score _ FCP.ID matches 0 run scoreboard players add _ FCP.Calc 65536
execute if score _ FCP.ID matches 0 run scoreboard players add _ FCP.ID 65536
scoreboard players operation _ FCP.Calc += _ FCP.Calc
# 2prev - 2x
scoreboard players operation _ FCP.Calc -= _ FCP.ID
scoreboard players operation _ FCP.Calc -= _ FCP.ID
# 3x - 2prev
scoreboard players operation _ FCP.ID -= _ FCP.Calc
# 3x - 2prev - next
execute store result score _ FCP.Calc run data get storage fcp: oh_my_dat.id[1]
scoreboard players operation _ FCP.ID -= _ FCP.Calc
execute if score _ FCP.ID matches -1.. run function fcp:oh_my_dat/sys/gc
