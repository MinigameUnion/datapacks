tellraw @a[team=602] [{"text":"獲得ミニ = ","color":"aqua"},{"text":"Score / 3","color":"aqua"}]
scoreboard players operation $602 score_602 /= $gm1_mini_602 score_602
scoreboard players operation @a[team=602] add_coin_000 += $602 score_602