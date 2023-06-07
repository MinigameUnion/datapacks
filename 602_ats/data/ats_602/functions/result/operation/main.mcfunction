scoreboard players operation @s score0_602 = @s score_602
scoreboard players operation @s score0_602 *= @s mulScore0_602
scoreboard players operation @s score0_602 /= $602 score0_602
scoreboard players operation @s score0_602 -= @s score_602
scoreboard players operation $602 score_602 += @s score0_602

function ats_602:bossbar/0
execute if entity @s[scores={mulScore0_602=11..}] run function ats_602:result/multiplier
execute unless entity @s[scores={mulScore0_602=11..}] run function ats_602:result/no_multiplier
execute as @a[tag=join_game_602] positioned as @s run function ats_602:result/operation/0

tag @s add result_602