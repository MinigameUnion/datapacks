#> tool_000:teleport/uuid
# @within
#   function tool_000:teleport

data modify entity @s {} merge from storage tool_000:api teleport
execute positioned as @s rotated as @s run tp @a[tag=teleport_000] ~ ~ ~ ~ ~
execute in minecraft:overworld run tp @s ~ ~ ~ ~ ~