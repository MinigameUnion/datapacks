execute unless score $o_4_602 a_602 matches 3 run execute store result score @s e2_602 if entity @e[sort=nearest,tag=tile_602,tag=!other_602,distance=..1.3]
execute if score $o_4_602 a_602 matches 3 run execute store result score @s e2_602 if entity @e[sort=nearest,tag=tile_602,tag=!other_602,distance=..1.0]

execute if score @s e2_602 matches 2.. run tag @s add hit_self_602
execute if score @s e2_602 matches 2.. run tag @e[sort=nearest,tag=tile_602,tag=!other_602,tag=!hit_self_602,distance=..1.3] add hit_partner_602