#> system_000:second
# @within
#   tag/function minecraft:second

execute as @e[tag=fire_000] run data modify entity @s Fire set value 32767s
execute as @e[tag=entity_block_000] if entity @s[type=falling_block] run data modify entity @s Time set value 1


schedule function #minecraft:second 20t