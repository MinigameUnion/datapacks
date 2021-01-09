scoreboard players set #RANGE num_000 252642562
function tool_000:random
execute store result entity @s Variant int 1 run scoreboard players get #RANDOM num_000

tag @s add taratara_tropical_fish0_401

execute as @e[type=tropical_fish,tag=taratara_cod0_401,tag=!taratara_tropical_fish0_401,limit=1] run function suiryu_taratara_401:tropical_fish_variant
