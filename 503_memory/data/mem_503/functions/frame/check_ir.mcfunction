#> mem_503:frame/check_ir
# @within
#   function mem_503:player/interact

execute store result score #ItemRotation num_503 run data get entity @s ItemRotation
execute unless score #ItemRotation num_503 = @s num_503 run tag @s add interacted_503