scoreboard players set #SPEED num_501 0
scoreboard players add #HIT num_501 1
execute unless block ~ ~ ~ #bullet_501:immune run function bullet_501:hit/block/skip
execute if block ~ ~ ~ #bullet_501:soft unless entity @e[tag=sound_501,tag=soft_501,distance=..1,limit=1] run function bullet_501:hit/block/material/soft