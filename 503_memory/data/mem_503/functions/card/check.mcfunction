#> mem_503:card/check
# @within
#   function mem_503:card/interacted

execute as @e[tag=card_503] if score # id_503 = @s id_503 run data modify entity @s Fixed set value 1b

execute as @e[tag=open_503] if score # id_503 = @s id_503 store success score #success num_503 run data modify storage mem_503:temp Item set from entity @s Item
execute if score #success num_503 matches 0 as @e[tag=open_503] if score # id_503 = @s id_503 at @s run particle happy_villager ^ ^ ^0.25 0.2 0.2 0.2 0 7 normal @a
execute if score #success num_503 matches 0 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1 0

data modify storage mem_503:schedule turn_end append value {id:0}
execute store result storage mem_503:schedule turn_end[-1].id int 1 run scoreboard players get # id_503
schedule function mem_503:schedule/turn_end 15t