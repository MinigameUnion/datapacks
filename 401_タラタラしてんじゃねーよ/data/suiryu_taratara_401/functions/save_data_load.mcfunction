scoreboard players operation #ID num_000 = @s id_000
tag @s add score_load_401
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 run function suiryu_taratara_401:score_load
