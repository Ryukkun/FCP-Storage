### Copyright © 2020 赤石愛
### This software is released under the MIT License, see LICENSE.

### 割り当て解放

# データを削除
function fcp:oh_my_dat/sys/provide
data modify storage fcp: oh_my_dat._[-4][-4][-4][-4][-4][-4][-4][-4] set value {}
# 割り当て済みIDを削除
data remove storage fcp: oh_my_dat.id[0]
# 不要なデータを解放(先頭から続く基準より大きいIDは全部要らない)
execute store result score _ FCP.ID run data get storage fcp: oh_my_dat.id[0]
execute if score _ FCP.ID > _ FCP.Calc run function fcp:oh_my_dat/sys/gc_loop
