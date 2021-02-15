scoreboard players set #SKIP num_501 0
scoreboard players set #SPEED num_501 0
scoreboard players add #HIT num_501 1

data modify entity @s[tag=!hit_502] PortalCooldown set value 100

execute if entity @s[tag=select_restart_502,tag=!hit_502] if entity @a[tag=owner_501,tag=!restart_502,limit=1] run function clay_502:target_plate/hit/restart
execute if entity @s[tag=practice_502,tag=!hit_502] run function clay_502:target_plate/hit/practice

execute unless entity @e[tag=sound_501,tag=metal_501,distance=..1,limit=1] run playsound minecraft:block.anvil.place block @a[distance=..16] ~ ~ ~ 0.5 2 0.25
execute unless entity @e[tag=sound_501,tag=metal_501,distance=..1,limit=1] run summon area_effect_cloud ~ ~ ~ {Radius:0.0f,Tags:["sound_501","metal_501"]}
particle block lava ~ ~ ~ 0 0 0 0 1 force @a