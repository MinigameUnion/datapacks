#> tool_000:tick
# @within
#   tag/function minecraft:tick

execute in minecraft:the_nether run worldborder set 1.0
execute in minecraft:the_nether run worldborder set 1001.0 1

execute as @e[tag=extinguish_000] run data modify entity @s Fire set value -1s