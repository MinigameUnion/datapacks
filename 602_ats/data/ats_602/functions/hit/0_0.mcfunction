execute if entity @s[tag=mooshroom_602] positioned as @e[tag=tile_602,tag=!other_602] if score @s e2_602 = @e[sort=nearest,limit=1,distance=..0.1] e2_602 if entity @e[sort=nearest,limit=1,scores={mulScore1_602=4..},distance=..0.1] run function ats_602:tile/type/mooshroom/1


execute unless score $602 gamemode_602 matches 1 run function ats_602:tile/score

execute if entity @s[tag=sheep_602,tag=stop_602] unless score $602 gamemode_602 matches 1 run function ats_602:tile/type/sheep/1
execute if entity @s[tag=ocelot_602,tag=stop_602] run function ats_602:tile/type/ocelot/1
execute if entity @s[tag=polar_bear_602,scores={a1_602=101..}] run function ats_602:tile/type/polar_bear/1
execute if entity @s[tag=bee_602,scores={a1_602=1..180}] run scoreboard players set @s z1_602 1
execute if entity @s[tag=parrot_602] unless entity @s[scores={z1_602=1}] positioned as @e[tag=tile_602,tag=!other_602] if score @s e2_602 = @e[sort=nearest,limit=1,distance=..0.1] e2_602 if entity @e[sort=nearest,limit=1,scores={mulScore1_602=4..},distance=..0.1] run function ats_602:tile/type/parrot/1
execute if entity @s[tag=dolphin_602] unless entity @s[scores={z1_602=1}] positioned as @e[tag=tile_602,tag=!other_602] if score @s e2_602 = @e[sort=nearest,limit=1,distance=..0.1] e2_602 if entity @e[sort=nearest,limit=1,distance=..0.1] run function ats_602:tile/type/dolphin/1


execute store result entity @s Rotation[0] float 0.01 run scoreboard players get @s b_602

tag @s add hit_602
tag @s remove stop_602