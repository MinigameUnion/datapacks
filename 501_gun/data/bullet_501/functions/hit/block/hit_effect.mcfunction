summon snowball ~ ~ ~ {Tags:["initialize_501","hit_effect_501"],Silent:1b,Fire:2s,Item:{id:"minecraft:snowball",Count:1b,tag:{CustomModelData:5000}}}
execute store result entity @e[tag=initialize_501,limit=1,distance=..0] Motion[0] double 0.001 run scoreboard players get #BULLET x_vec_501
execute store result entity @e[tag=initialize_501,limit=1,distance=..0] Motion[1] double 0.001 run scoreboard players get #BULLET y_vec_501
execute store result entity @e[tag=initialize_501,limit=1,distance=..0] Motion[2] double 0.001 run scoreboard players get #BULLET z_vec_501
tag @e[tag=initialize_501,limit=1,distance=..0] remove initialize_501