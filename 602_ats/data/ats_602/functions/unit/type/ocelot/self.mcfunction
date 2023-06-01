execute facing entity @e[sort=nearest,limit=1,tag=tile_602,tag=!other_602,tag=!hit_self_602,tag=!hit_partner_602] feet positioned as @e[limit=1,tag=hit_partner_602] run teleport @e[limit=1,tag=hit_partner_602] ~ ~ ~ ~ ~
execute store result score @e[limit=1,tag=hit_partner_602] b_602 run data get entity @e[limit=1,tag=hit_partner_602] Rotation[0] 100
