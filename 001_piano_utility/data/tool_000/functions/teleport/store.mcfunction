#> tool_000:teleport/store
# @within
#   function tool_000:teleport

data modify entity @s Pos set from storage tool_000:api teleport.Pos
data modify entity @s Rotation set from storage tool_000:api teleport.Rotation
data modify entity @s Owner set from storage tool_000: temp.teleport.target
execute positioned as @s rotated as @s on origin run function tool_000:teleport/run
kill @s