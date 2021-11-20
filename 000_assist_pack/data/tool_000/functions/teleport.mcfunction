#> tool_000:teleport
# @public

tag @s add teleport_000
execute as 0-0-0-0-1 positioned as @s run function tool_000:teleport/uuid
tag @s remove teleport_000

#>
# @within
#   function tool_000:teleport
#   function tool_000:teleport/uuid
    #declare tag teleport_000