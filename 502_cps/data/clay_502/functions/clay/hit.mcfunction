scoreboard players set #SKIP num_501 0
scoreboard players set #SPEED num_501 0
scoreboard players add #HIT num_501 1
tag @s remove target_501

particle dust 1 0.4823529411764706 0 2 ~ ~ ~ 0.1 0.1 0.1 0 25 force

execute positioned as @s positioned ~ ~-0.3 ~ as @e[type=item,tag=clay_502,distance=..10,sort=nearest,limit=1] at @s run function clay_502:clay/delete

stopsound @a[tag=owner_501] player minecraft:entity.arrow.hit_player
playsound minecraft:entity.arrow.hit_player player @a[tag=owner_501] ~ ~ ~ 0.75 1 0.75

scoreboard players operation @a[tag=owner_501] age_502 += #AGE num_502
scoreboard players add @a[tag=owner_501] hit_502 1

scoreboard players operation #AGE num_502 -= #40 num_000
scoreboard players operation #AGE num_502 *= #-1 num_000
scoreboard players operation #AGE num_502 > #5 num_000
scoreboard players operation #COIN num_502 = #COIN_min num_502
execute store result score #POINT num_502 run scoreboard players operation #COIN num_502 *= #5 num_000
scoreboard players operation #POINT num_502 *= #AGE num_502
scoreboard players operation #POINT num_502 /= #30 num_000
scoreboard players operation #POINT num_502 += #COIN num_502
scoreboard players operation @a[tag=owner_501] point_502 += #POINT num_502


scoreboard players add @a[tag=owner_501,scores={type_502=1..,total_hit_502=..2147483646}] total_hit_502 1
#tellraw @a[tag=owner_501] [{"text":"POINT:","color":"white"},{"score":{"objective": "num_502","name": "#POINT"},"color":"white"}]