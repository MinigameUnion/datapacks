execute if score $602 a1_602 < $602 pId_602 run scoreboard players set $602 pId_602 0
scoreboard players add $602 pId_602 1
execute as @a[tag=join_game_602] if score @s pId_602 = $602 pId_602 run tag @s add shooter_602

scoreboard players add $pid_mismatch_602 a_602 1

execute unless entity @a[tag=shooter_602] if entity @a[team=GreenTeam] run function ats_602:system/state_3/turn/0