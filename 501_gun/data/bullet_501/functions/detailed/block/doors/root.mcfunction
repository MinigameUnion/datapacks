execute if predicate bullet_501:detailed/doors/facing/east run scoreboard players set #facing property_501 1
execute if predicate bullet_501:detailed/doors/facing/west run scoreboard players set #facing property_501 2
execute if predicate bullet_501:detailed/doors/facing/south run scoreboard players set #facing property_501 3
execute if predicate bullet_501:detailed/doors/facing/north run scoreboard players set #facing property_501 4
execute if block ~ ~ ~ #bullet_501:detailed/doors/full run scoreboard players set #type property_501 1
execute if block ~ ~ ~ #bullet_501:detailed/doors/half[half=lower] run scoreboard players set #type property_501 1
execute store result score #half property_501 if block ~ ~ ~ acacia_door[half=upper]

scoreboard players set #y max_501 10000
scoreboard players set #y min_501 0
execute if score #facing property_501 matches 1..2 run scoreboard players set #z max_501 10000
execute if score #facing property_501 matches 1..2 run scoreboard players set #z min_501 0
execute if score #facing property_501 matches 1 run scoreboard players set #x max_501 1875
execute if score #facing property_501 matches 1 run scoreboard players set #x min_501 0
execute if score #facing property_501 matches 2 run scoreboard players set #x max_501 10000
execute if score #facing property_501 matches 2 run scoreboard players set #x min_501 8125
execute if score #facing property_501 matches 3..4 run scoreboard players set #x max_501 10000
execute if score #facing property_501 matches 3..4 run scoreboard players set #x min_501 0
execute if score #facing property_501 matches 3 run scoreboard players set #z max_501 1875
execute if score #facing property_501 matches 3 run scoreboard players set #z min_501 0
execute if score #facing property_501 matches 4 run scoreboard players set #z max_501 10000
execute if score #facing property_501 matches 4 run scoreboard players set #z min_501 8125