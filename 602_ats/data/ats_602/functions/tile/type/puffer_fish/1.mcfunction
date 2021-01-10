tag @s add puffer_check_602
scoreboard players add @e[sort=nearest,limit=3,tag=tile_602,tag=!other_602,tag=!puffer_check_602] mulScore1_602 3

tag @s remove puffer_check_602
particle dust 1 1 0.4 3 ~ ~ ~ 1.5 1.5 1.5 0 40
execute positioned as @e[sort=nearest,limit=3,tag=tile_602,tag=!other_602,tag=!puffer_check_602] run particle dust 1 1 0.4 3 ~ ~ ~ 1.5 1.5 1.5 0 10

execute as @a[team=602] positioned as @s run playsound minecraft:entity.puffer_fish.blow_up player @s ~ ~ ~ 1.0 1.0
scoreboard players set @s z1_602 1