#> mem_503:schedule/summon/finish
# @within
#   function mem_503:game/summon

scoreboard players set #card num_503 0
execute as @e[tag=card_503] if score # id_503 = @s id_503 run scoreboard players add #card num_503 1
execute store result entity @s data.mem_503.cards int 1 run scoreboard players get #card num_503
data modify storage mem_503:schedule start append from storage mem_503:schedule summon[0]
schedule function mem_503:schedule/start 10t append