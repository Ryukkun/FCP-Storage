# Set CP
execute as @a[scores={FCP.Drop-LP=1..}] at @s run function fcp:cp/set-cp/check

# Change CP
execute as @a[scores={FCP.Use-LP=1..}] at @s run function fcp:cp/change-cp/check

# Tp to CP
execute as @a[scores={FCP.Use-TP=1..},nbt={SelectedItem:{tag:{FCP:{Item:1b}}}}] at @s run function fcp:tp/check
execute as @a[tag=FCP.Float-PL] at @s run function fcp:tp/float

# がめもで ちぇんじゃー
execute as @a[scores={FCP.Use-SB=1..}] at @s run function fcp:snowball/check

# Give Items
execute as @a[scores={FCP.Drop-GI=1..}] at @s run function fcp:items/check