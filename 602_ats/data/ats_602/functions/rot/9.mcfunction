execute align xz positioned ~0.5 ~ ~-0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["br_602","br1_602"],Radius:0f, Duration:0}
execute align xz positioned ~1.5 ~ ~0.5 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["br_602","br8_602"],Radius:0f, Duration:0}
execute as @e[tag=br1_602] run scoreboard players set @s c_602 1
execute as @e[tag=br8_602] run scoreboard players set @s c_602 8
execute positioned as @s run scoreboard players operation @s c_602 = @e[tag=br_602,sort=nearest,limit=1] c_602