### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 指定されたエンティティ(@s)の個別ストレージを提供(特定のオフセットで呼び出せるように)する

# IDを持っていなければ、IDを割り当て
execute unless score @s FCP.ID matches 1.. run function fcp:oh_my_dat/sys/allocate
# IDを一時変数にコピー
execute store result storage fcp: oh_my_dat.target_id int 1 run scoreboard players operation _ FCP.ID = @s FCP.ID
# 取得するIDに変化があるかどうか確認
execute store result storage fcp: oh_my_dat.update byte 1 run data modify storage fcp: oh_my_dat.last_id set from storage fcp: oh_my_dat.target_id
# ストレージ提供
execute if data storage fcp: {oh_my_dat:{update:true}} run function fcp:oh_my_dat/sys/provide
