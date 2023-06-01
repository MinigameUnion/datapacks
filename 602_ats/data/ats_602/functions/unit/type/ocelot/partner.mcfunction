execute positioned as @e[limit=1,tag=hit_partner_602] facing entity @e[sort=nearest,limit=1,tag=tile_602,tag=!other_602,tag=!hit_self_602,tag=!hit_partner_602] feet run teleport @s ~ ~ ~ ~ ~
execute store result score @s b_602 run data get entity @s Rotation[0] 100
