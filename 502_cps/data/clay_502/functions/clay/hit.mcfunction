scoreboard players set #SPEED num_501 0
scoreboard players add #HIT num_501 1
tag @s remove target_501

particle dust 1 0.4823529411764706 0 2 ~ ~ ~ 0.1 0.1 0.1 0 25 force

execute positioned ~ ~-0.25 ~ as @e[type=item,tag=clay_502,distance=..0.5,sort=nearest,limit=1] at @s positioned ~ -255 ~ run function clay_502:clay/delete

stopsound @a[tag=owner_501] player minecraft:entity.arrow.hit_player
playsound minecraft:entity.arrow.hit_player player @a[tag=owner_501] ~ ~ ~ 0.75 1 0.75

scoreboard players add @a[tag=owner_501] hit_502 1

scoreboard players add @a[tag=owner_501,scores={type_502=1..,total_hit_502=..2147483646}] total_hit_502 1