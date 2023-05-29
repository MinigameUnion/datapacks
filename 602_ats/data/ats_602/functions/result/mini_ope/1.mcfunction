tellraw @a[tag=join_game_602] [{"text":"獲得ミニ = ","color":"aqua"},{"text":"Score / 10","color":"aqua"}]
scoreboard players operation $602 score_602 /= $gm1_mini_602 score_602
scoreboard players operation @a[tag=join_game_602] add_coin_000 += $602 score_602