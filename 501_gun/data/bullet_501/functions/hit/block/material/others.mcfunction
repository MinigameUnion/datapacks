execute if score #HITMARK num_501 matches 0 run particle item anvil ~ ~ ~ 0 0 0 0.025 3 force
#particle item anvil ~ ~ ~ 0 0 0 0.05 2 force
execute unless entity @e[tag=sound_501,tag=other_501,distance=..1,limit=1] run playsound minecraft:block.stone.break block @a ~ ~ ~ 1.25 0.75 0
execute unless entity @e[tag=sound_501,tag=other_501,distance=..1,limit=1] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Tags:["sound_501","other_501"]}