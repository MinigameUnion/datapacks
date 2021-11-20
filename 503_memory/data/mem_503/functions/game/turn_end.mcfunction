#> mem_503:game/turn_end
# @within
#   function mem_503:schedule/turn_end

execute as @e[tag=open_503] if score # id_503 = @s id_503 store success score #success num_503 run data modify storage mem_503:temp Item set from entity @s Item
execute if score #success num_503 matches 0 run function mem_503:card/matched
execute if score #success num_503 matches 1 run scoreboard players add @s player_503 1
execute if score @s num_503 < @s player_503 run scoreboard players set @s player_503 0

execute as @e[tag=card_503] if score # id_503 = @s id_503 run data modify entity @s Fixed set value 0b
execute as @e[tag=open_503] if score # id_503 = @s id_503 at @s run function mem_503:card/close


scoreboard players set #card num_503 0
execute as @e[tag=card_503] if score # id_503 = @s id_503 run scoreboard players add #card num_503 1
execute if score #card num_503 matches 0 positioned ^ ^ ^-0.33 run function mem_503:game/finish