#> player_000:data/tellraw
# @private

scoreboard players operation # id_000 = @s id_000
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000,predicate=player_000:data/match] run tellraw @a[predicate=player_000:data/match] {"nbt":"Item.tag","entity":"@s"}