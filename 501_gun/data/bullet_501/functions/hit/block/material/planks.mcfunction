execute if block ~ ~ ~ #bullet_501:material/planks/oak positioned as @s run particle block oak_planks ~ ~ ~ 0 0 0 0.1 3 force
execute if block ~ ~ ~ #bullet_501:material/planks/spruce positioned as @s run particle block spruce_planks ~ ~ ~ 0 0 0 0.1 3 force
execute if block ~ ~ ~ #bullet_501:material/planks/birch positioned as @s run particle block birch_planks ~ ~ ~ 0 0 0 0.1 3 force
execute if block ~ ~ ~ #bullet_501:material/planks/jungle positioned as @s run particle block jungle_planks ~ ~ ~ 0 0 0 0.1 3 force
execute if block ~ ~ ~ #bullet_501:material/planks/acacia positioned as @s run particle block acacia_planks ~ ~ ~ 0 0 0 0.1 3 force
execute if block ~ ~ ~ #bullet_501:material/planks/dark_oak positioned as @s run particle block dark_oak_planks ~ ~ ~ 0 0 0 0.1 3 force
execute if block ~ ~ ~ #bullet_501:material/planks/crimson positioned as @s run particle block crimson_planks ~ ~ ~ 0 0 0 0.1 3 force
execute if block ~ ~ ~ #bullet_501:material/planks/warped positioned as @s run particle block warped_planks ~ ~ ~ 0 0 0 0.1 3 force
execute unless entity @e[tag=sound_501,tag=planks_501,distance=..1,limit=1] run playsound block.wood.break block @a ~ ~ ~ 1.25 0.75 0
execute unless entity @e[tag=sound_501,tag=planks_501,distance=..1,limit=1] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Tags:["sound_501","planks_501"]}