#> inv_000:ender/restore
# @api

data modify block 0 0 0 Items set from storage inv_000:api EnderItems
loot replace entity @s enderchest.0 27 mine 0 0 0 air{dynamic:1b}

scoreboard players operation #ID num_000 = @s id_000
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 run data modify entity @s Item.tag.000.EnderItems set from storage inv_000:api EnderItems

data remove block 0 0 0 Items