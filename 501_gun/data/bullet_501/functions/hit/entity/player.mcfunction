particle item redstone_block ~ ~ ~ 0 0 0 0.05 5 force @a

scoreboard players set #SKIP num_501 0
scoreboard players set #SPEED num_501 0
scoreboard players add #HIT num_501 1

stopsound @a[distance=..16] player minecraft:entity.generic.hurt
stopsound @a[tag=owner_501] player minecraft:entity.arrow.hit_player
playsound minecraft:entity.generic.hurt player @a ~ ~ ~ 0.25 1 0
playsound minecraft:entity.arrow.hit_player player @a[tag=owner_501] ~ ~ ~ 0.75 1 0.75