tag @s remove gun_501

scoreboard players operation #ID num_501 = @s id_000
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0.5,tag=storage_000] if score @s id_000 = #ID num_501 run data remove entity @s Item.tag.501.tag