scoreboard objectives add FCP.MoveSC dummy
scoreboard objectives add FCP.CP-Num dummy
scoreboard objectives add FCP.Drop-LP minecraft.dropped:minecraft.lingering_potion
scoreboard objectives add FCP.Drop-GI minecraft.dropped:minecraft.gold_ingot
scoreboard objectives add FCP.Use-LP minecraft.used:minecraft.lingering_potion
scoreboard objectives add FCP.Use-TP minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add FCP.Use-SB minecraft.used:minecraft.snowball
scoreboard players set $-1 FCP.MoveSC -1

gamerule fallDamage false

### データパックが初期化されていなければ、初期化する
execute unless data storage fcp: oh_my_dat._ run function fcp:oh_my_dat/sys/init