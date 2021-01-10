summon minecraft:armor_stand ~ 4.5 ~ {Tags:["tile_602","cow_602"],NoGravity:1b}
execute as @e[tag=tile_602,tag=!go_602] positioned as @s run function ats_602:tile/summon/0
