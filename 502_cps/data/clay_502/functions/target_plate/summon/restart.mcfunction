tp @s ~ ~ ~ ~ ~
execute rotated ~ 0 anchored eyes run summon area_effect_cloud ^ ^-1 ^8 {CustomName:'{"text":"続けて遊ぶ"}',CustomNameVisible:1b,Duration:2147483647,Tags:["summoning_502","display_502"]}
execute anchored eyes positioned ^ ^-1 ^8 run scoreboard players operation @e[tag=summoning_502,sort=nearest,limit=1,distance=..0.5] match_id_502 = #ADMIN match_id_502
execute anchored eyes positioned ^ ^-1 ^8 run tag @e[tag=summoning_502,sort=nearest,limit=1,distance=..0.5] remove summoning_502
loot replace entity @s armor.head loot clay_502:target_plate
scoreboard players operation @s match_id_502 = #ADMIN match_id_502
tag @s remove summoning_502

tag @s add select_restart_502