#> clay_502:clay/shoot
# @within
#   function clay_502:game/**/shot

execute if data entity @s ArmorItems[0].tag.rotation[{random:1b}] if predicate clay_502:random/50 run tp @s ~ ~ ~ ~180 ~
execute store result score #RANGE num_000 run data get entity @s ArmorItems[0].tag.rotation[1].random.max 10
function tool_000:random
execute store result score #MIN num_502 run data get entity @s ArmorItems[0].tag.rotation[1].random.min 10
scoreboard players remove #RANDOM num_000 900
scoreboard players operation #RANDOM num_000 > #Rotation[1]_min num_502

execute store result entity @s Rotation[1] float 0.1 run scoreboard players operation #RANDOM num_000 += #MIN num_502
execute rotated as @s run function tool_000:get_vector
summon item ~ ~0.5 ~ {Tags:["summoning_502","clay_502"],Item:{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:1}},Invulnerable:1b,Health:32767s,Fire:3s,PickupDelay:-32768s,Age:0s,OnGround:0b,Passengers:[{id:"minecraft:interaction",Tags:["summoning_502","clay_502","target_501"],height:-0.5f,width:0.66f},{id:"minecraft:item_display",Tags:["summoning_502","clay_502"],item:{id:"minecraft:clay_ball",Count:1b,tag:{CustomModelData:5000}},item_display:"ground",view_range:16.0f,brightness:{block:15,sky:15},transformation:{translation:[0.0f,-0.5f,0.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f]}}]}
execute as @e[distance=..0.5,type=item,tag=summoning_502,tag=clay_502,limit=1] run function clay_502:clay/motion
scoreboard players operation @e[distance=..1,tag=summoning_502,tag=clay_502] match_id_502 = #ADMIN match_id_502
tag @e[distance=..1,tag=summoning_502,tag=clay_502] remove summoning_502

playsound minecraft:entity.firework_rocket.shoot neutral @a[tag=ticking_502] ~ ~ ~ 10 1.5 0