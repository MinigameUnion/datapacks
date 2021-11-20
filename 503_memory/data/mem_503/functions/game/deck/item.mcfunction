#> mem_503:game/deck/item
# @within
#   function mem_503:game/deck/item
#   function mem_503:game/start

data modify storage mem_503:temp Item set from entity @s Item
execute as @e[tag=matched_503,distance=..128,sort=random,limit=2] run function mem_503:game/deck/card
scoreboard players remove #card num_503 2

kill @s
execute if score #card num_503 matches 1.. as @e[y=-64,type=item,distance=..0.5,sort=random,limit=1] run function mem_503:game/deck/item