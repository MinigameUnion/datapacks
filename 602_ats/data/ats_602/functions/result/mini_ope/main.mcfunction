#tellraw @s [{"score":{"name":"@s","objective":"add_coin_000"}}]

execute if score $o_3_602 a_602 matches -1 run function ats_602:result/mini_ope/o3
#tellraw @s [{"score":{"name":"@s","objective":"add_coin_000"}}]

execute if score $o_4_602 a_602 matches 1 run function ats_602:result/mini_ope/o4l1
#tellraw @s [{"score":{"name":"@s","objective":"add_coin_000"}}]

execute if score $o_4_602 a_602 matches 2 run function ats_602:result/mini_ope/o4l2
#tellraw @s [{"score":{"name":"@s","objective":"add_coin_000"}}]

execute if score $602 gamemode_602 matches 1 run function ats_602:result/mini_ope/1
#tellraw @s [{"score":{"name":"@s","objective":"add_coin_000"}}]

execute if score $602 gamemode_602 matches 2 run function ats_602:result/mini_ope/2
#tellraw @s [{"score":{"name":"@s","objective":"add_coin_000"}}]

execute if score $602 gamemode_602 matches 3 run function ats_602:result/mini_ope/3
#tellraw @s [{"score":{"name":"@s","objective":"add_coin_000"}}]

execute if score $o_2_602 a_602 matches -1 run function ats_602:result/mini_ope/o2
#tellraw @s [{"score":{"name":"@s","objective":"add_coin_000"}}]

execute if entity @s[scores={add_coin_000=150..}] run scoreboard players set @s add_coin_000 150
execute if entity @s[scores={add_coin_000=150..}] run tellraw @s [{"text":"[!]","color":"red"},{"text":"ミニが一度に獲得できる量の上限に到達しました！(150)","color":"green"}]