#> tool_000:teleport
# @public
# @input
#   css `entity`, `dimension`
#   storage `tool_000:api teleport{Pos:[<double>,<double>,<double>],Rotation:[<float>,<float>]}`

data modify storage tool_000: temp.teleport.target set from entity @s UUID
execute if entity @s summon minecraft:snowball run function tool_000:teleport/store