tag @s add puffer_check_602
tag @e[sort=nearest,limit=3,tag=tile_602,tag=!other_602,tag=!puffer_check_602] add puffer_effect_602


particle dust 1 1 0.4 3 ~ ~ ~ 1.5 1.5 1.5 0 40
execute positioned as @e[sort=nearest,limit=3,tag=tile_602,tag=!other_602] run particle dust 1 1 0.4 3 ~ ~ ~ 1.0 1.0 1.0 0 10

playsound minecraft:entity.puffer_fish.blow_up player @a[scores={playing_000=602}] ~ ~ ~ 1.0 1.0
scoreboard players set @s z1_602 1