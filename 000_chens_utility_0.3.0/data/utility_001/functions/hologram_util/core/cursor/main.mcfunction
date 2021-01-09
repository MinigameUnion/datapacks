#> utility_001:hologram_util/core/cursor/main
# @internal

scoreboard players reset @s hologram_id_001
execute anchored eyes positioned ^ ^ ^ run function utility_001:hologram_util/core/cursor/recursive
tag @s add this_001
execute as @e[tag=hologram_collider_001,distance=..30] if score @s hologram_id_001 = @a[tag=this_001,distance=..0,limit=1] hologram_id_001 at @s run function utility_001:hologram_util/core/cursor/particle
tag @s remove this_001
tag @s remove hologram_operator_001