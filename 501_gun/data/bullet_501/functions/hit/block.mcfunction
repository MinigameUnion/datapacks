execute unless block ~ ~ ~ #bullet_501:penetratable run function bullet_501:hit/stop
execute unless block ~ ~ ~ #bullet_501:immune run function bullet_501:hit/block/skip
execute if block ~ ~ ~ #bullet_501:soft unless entity @e[tag=sound_501,tag=soft_501,distance=..1,limit=1] run function bullet_501:hit/block/material/soft