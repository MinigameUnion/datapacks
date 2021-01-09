scoreboard players operation #ID num_501 = @s id_000
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0.5,tag=storage_000] if score @s id_000 = #ID num_501 run data modify entity @s Item.tag.501.tag set from storage gun_501:temp tag
tag @s add link_501
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0.5,tag=storage_000] if score @s id_000 = #ID num_501 run loot replace entity @p[tag=link_501,distance=..0.5,limit=1] weapon.mainhand loot gun_501:animation
tag @s remove link_501