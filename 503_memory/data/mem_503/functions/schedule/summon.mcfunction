#> mem_503:schedule/summon
# @within
#   function mem_503:game/init
#   function mem_503:schedule/summon/loop

execute store result score # id_503 run data get storage mem_503:schedule summon[0].id

execute as @e[tag=admin_503] if score @s id_503 = # id_503 at @s run function mem_503:game/summon

data remove storage mem_503:schedule summon[0]