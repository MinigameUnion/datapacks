execute if score #Y pos_501 matches ..-1 if predicate bullet_501:random/25 run particle item dirt ~ ~ ~ 0 0.4 0 1 0 force
execute if score #Y pos_501 matches ..-1 if predicate bullet_501:random/50 run particle item dirt ~ ~ ~ 0 0.33 0 1 0 force
execute if score #Y pos_501 matches ..-1 run particle item dirt ~ ~ ~ 0 0.275 0 1 0 force
execute if score #Y pos_501 matches ..-1 run particle item dirt ~ ~ ~ 0 0.22 0 1 0 force
execute if score #Y pos_501 matches ..-1 if predicate bullet_501:random/50 run particle item dirt ~ ~ ~ 0 0.195 0 1 0 force
execute if score #Y pos_501 matches ..-1 run particle item dirt ~ ~ ~ 0 0.125 0 1 0 force
execute if score #Y pos_501 matches ..-1 if predicate bullet_501:random/50 run particle item dirt ~ ~ ~ 0 0.125 0 1 0 force
execute if score #Y pos_501 matches ..-1 run particle item dirt ~ ~ ~ 0.01 0 0.01 0.05 3 force

execute if score #Y pos_501 matches 0 run particle item dirt ~ ~ ~ 0 0 0 0.05 6 force

execute unless entity @e[tag=sound_501,tag=dirt_501,distance=..1,limit=1] run playsound minecraft:block.gravel.break block @a ~ ~ ~ 1 1.25 0
execute unless entity @e[tag=sound_501,tag=dirt_501,distance=..1,limit=1] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Tags:["sound_501","dirt_501"]}