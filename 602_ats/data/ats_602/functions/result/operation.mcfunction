scoreboard players operation @s score0_602 = @s score_602
scoreboard players operation @s score0_602 *= @s mulScore0_602
scoreboard players operation @s score0_602 /= $602 score0_602
scoreboard players operation @s score0_602 -= @s score_602
scoreboard players operation $602 score_602 += @s score0_602

function ats_602:bossbar/0
execute if entity @s[scores={mulScore0_602=11..}] run function ats_602:result/1_1
execute unless entity @s[scores={mulScore0_602=11..}] run function ats_602:result/1_2
title @a[team=602] title [{"text":"Score:"},{"color":"yellow","score":{"name":"$602","objective":"score_602"}}]
execute as @a[team=602] positioned as @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1.0 2.0
execute as @a[team=602] positioned as @s run playsound minecraft:entity.firework_rocket.twinkle_far player @s ~ ~ ~ 1.0 1.0

kill @s