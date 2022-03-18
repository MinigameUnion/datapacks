#> mem_503:schedule/turn_end
# @within
#   function mem_503:card/check

execute store result score # id_503 run data get storage mem_503:schedule turn_end[0].id

execute as @e[tag=admin_503] if score @s id_503 = # id_503 at @s run function mem_503:game/turn_end

data remove storage mem_503:schedule turn_end[0]