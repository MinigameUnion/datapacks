#> tool_000:tick
# @within
#   tag/function minecraft:tick

execute in minecraft:the_nether run worldborder set 10000000.0
execute in minecraft:the_nether run worldborder set 10001000.0 1

execute as @e[tag=extinguish_000] run data modify entity @s Fire set value -1s