advancement revoke @s only clay_502:picked_gun
execute if entity @a[tag=playing_502,tag=ticking_502,advancements={clay_502:picked_gun=true}] run loot give @s loot clay_502:s1897

#scoreboard players operation #ID num_502 = @s id_000
#execute as @e[x=0.5,y=1.0,z=0.5,distance=..0.5,tag=storage_000] if score @s id_000 = #ID num_502 run data modify storage clay_502:storage match.player append from entity @s Item.tag.SkullOwner.Name
