#> bullet_501:hit/block/material/powder
#
# Generated by MCF-Utility
#
# @within function bullet_501:hit/block/root

execute unless entity @e[tag=sound_501,tag=sand_501,distance=..1,limit=1] run playsound minecraft:block.sand.break block @a ~ ~ ~ 1 1.25 0
execute unless entity @e[tag=sound_501,tag=sand_501,distance=..1,limit=1] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Tags:["sound_501","sand_501"]}