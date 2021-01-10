scoreboard players operation @s addScore_602 += @s mulScore1_602
scoreboard players operation @s score0_602 = @s addScore_602
scoreboard players operation @s score0_602 /= $602 score0_602
execute if entity @s[tag=fox_602,scores={a1_602=181..}] run function ats_602:tile/type/fox/1
execute if entity @s[tag=mooshroom_check1_602] run function ats_602:tile/type/mooshroom/2
scoreboard players operation @s score_602 += @s score0_602
scoreboard players operation $602 score_602 += @s score0_602
