execute if score $602 gamemode_602 matches 1 run function ats_602:tile/type/mainge
execute if score $602 gamemode_602 matches 2..3 run function ats_602:tile/type/main
execute if entity @s[tag=!stop_602] if score @s e1_602 = @s e2_602 run function ats_602:hit/main
execute if entity @s[scores={a_602=1..}] rotated as @s rotated ~ 0 unless block ^ ^ ^0.6 minecraft:air run function ats_602:rot/main
execute if entity @s[scores={a_602=1..}] rotated as @s rotated ~ 0 run teleport @s ^ ^ ^0.1 ~ ~

scoreboard players remove @s a_602 1
execute if entity @s[scores={a_602=1..}] positioned as @s rotated as @s run function ats_602:tile/0
