execute positioned as @s run particle block dark_oak_planks ~ ~ ~ 0 0 0 0.1 3 force
execute positioned as @s unless entity @e[tag=sound_501,tag=planks_501,distance=..1,limit=1] run playsound block.wood.break block @a ~ ~ ~ 1.25 0.75 0
execute positioned as @s unless entity @e[tag=sound_501,tag=planks_501,distance=..1,limit=1] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Tags:["sound_501","planks_501"]}

execute if score #HITMARK num_501 matches 1 if score #HITMARK ope_501 < #HITMARK_MAX num_501 positioned as @s run function bullet_501:hit/block/mark