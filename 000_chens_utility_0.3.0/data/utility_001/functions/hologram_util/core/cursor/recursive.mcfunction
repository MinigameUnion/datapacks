#> utility_001:hologram_util/core/cursor/recursive
# @internal

execute if entity @s[distance=..10] positioned ~ ~-0.15 ~ if entity @e[tag=hologram_collider_001,distance=..0.15,sort=nearest,limit=1] run scoreboard players operation @s hologram_id_001 = @e[tag=hologram_collider_001,distance=..0.15,sort=nearest,limit=1] hologram_id_001
execute if entity @s[distance=..10] positioned ~ ~-0.15 ~ unless entity @e[tag=hologram_collider_001,distance=..0.15,sort=nearest,limit=1] positioned ~ ~0.15 ~ positioned ^ ^ ^0.0375 if block ~ ~ ~ air run function utility_001:hologram_util/core/cursor/recursive