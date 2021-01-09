#> utility_001:hologram_util/core/tick
# @within tag/function
#   minecraft:tick

execute as @e[type=slime,tag=hologram_sandbag_001] run data modify entity @s OnGround set value 0b
execute as @a[tag=hologram_operator_001] at @s run function utility_001:hologram_util/core/cursor/main