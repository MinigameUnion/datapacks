tellraw @a[team=602] [{"text":"獲得ミニ = ","color":"green"},{"text":"Score / 80","color":"green"}]

scoreboard players operation @a[team=602] add_coin_000 += $602 score_602
scoreboard players operation @a[team=602] add_coin_000 /= $gm2_mini_602 score_602