particle block lava ~ ~ ~ 0 0 0 0.05 4 force @a
execute unless entity @e[tag=sound_501,tag=metal_501,distance=..1,limit=1] run playsound minecraft:block.anvil.place block @a ~ ~ ~ 0.25 2 0
execute unless entity @e[tag=sound_501,tag=metal_501,distance=..1,limit=1] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Tags:["sound_501","metal_501"]}