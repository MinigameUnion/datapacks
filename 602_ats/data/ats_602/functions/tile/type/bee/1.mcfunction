tag @s add bee_check_602
execute positioned as @e[tag=tile_602,tag=!bee_check_602,tag=!other_602] if score @s e2_602 = @e[sort=nearest,limit=1,distance=..0.1] e2_602 run function ats_602:tile/type/bee/2
tag @s remove bee_check_602
scoreboard players set @s z1_602 0