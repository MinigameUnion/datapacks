#> player_000:join_game
# @public

gamemode adventure @s
effect clear @s

scoreboard players operation #ID num_000 = @s id_000
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 run data modify entity @s Item.tag.status set value 1b