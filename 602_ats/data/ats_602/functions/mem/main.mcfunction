setblock 6058 81 13 minecraft:air
execute as @a run function ats_602:mem/init

execute as @a[sort=random,limit=1,tag=join_team_602] run function ats_602:mem/join

execute if entity @a[tag=join_game_602] run function ats_602:mem/0
execute unless entity @a[tag=join_game_602] run function ats_602:mem/1
tag @a[tag=join_team_602] remove join_team_602
scoreboard players set $timer_602 a_602 -1