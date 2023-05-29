tellraw @a[tag=join_game_602] [{"text":"獲得ミニ = ","color":"light_purple"},{"text":"Score / 600","color":"light_purple"}]

scoreboard players operation @a[tag=join_game_602] add_coin_000 += $602 score_602
scoreboard players operation @a[tag=join_game_602] add_coin_000 /= $gm3_mini_602 score_602