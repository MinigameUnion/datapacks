#> tool_000:random
# @public
# @input
#   `#RANGE num_000`
# @output
#   `#RANDOM num_000`

loot replace block 0 0 0 container.0 loot tool_000:random
execute store result score #RANDOM num_000 run data get block 0 0 0 Items[0].tag.AttributeModifiers[0].UUID[0]
scoreboard players operation #RANDOM num_000 %= #RANGE num_000
scoreboard players operation #RANDOM num_000 < #RANGE num_000