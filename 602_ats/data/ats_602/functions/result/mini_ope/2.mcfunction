tellraw @a[tag=join_game_602] [{"text":"獲得ミニ = ","color":"green"},{"text":"Score / 80","color":"green"}]

scoreboard players operation @a[tag=join_game_602] add_coin_000 += $602 score_602
scoreboard players operation @a[tag=join_game_602] add_coin_000 /= $gm2_mini_602 score_602