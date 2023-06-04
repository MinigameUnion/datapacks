function ats_602:result/mini_ope/o4l2_i
scoreboard players operation @s add_coin_000 *= $o4l2_mini_602 score_602
tellraw @s [{"score":{"name":"@s","objective":"add_coin_000"}}]

scoreboard players operation @s add_coin_000 /= $10_602 a_602
tellraw @s [{"score":{"name":"@s","objective":"add_coin_000"}}]

scoreboard players operation @s add_coin_000 /= $10_602 a_602
tellraw @s [{"score":{"name":"@s","objective":"add_coin_000"}}]
