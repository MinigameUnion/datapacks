particle item redstone_block ~ ~ ~ 0 0 0 0.05 5 force @a
scoreboard players set #SPEED num_501 0
scoreboard players add #HIT num_501 1
stopsound @a[distance=..16] player minecraft:entity.generic.hurt
stopsound @a[tag=owner_501,limit=1] player minecraft:entity.arrow.hit_player
playsound minecraft:entity.generic.hurt player @a ~ ~ ~ 0.25 1 0
playsound minecraft:entity.arrow.hit_player player @a[tag=owner_501,limit=1] ~ ~ ~ 0.75 1 0.75
execute store result score #Health num_501 run data get entity @s Health 10
scoreboard players operation #Health num_501 -= #DAMAGE num_501
execute if score #Health num_501 matches ..0 run tag @s add kill_501
execute store result entity @s Health float 0.1 run scoreboard players operation #Health num_501 > #1 num_000
#tellraw @a [{"text":"#Health:"},{"score":{"objective":"num_501","name":"#Health"}}]