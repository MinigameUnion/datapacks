scoreboard players set #x max_501 10000
scoreboard players set #x min_501 0
scoreboard players set #z max_501 10000
scoreboard players set #z min_501 0
execute if score #type property_501 matches 1 run scoreboard players set #y max_501 4999
execute unless score #type property_501 matches 1 run scoreboard players set #y max_501 10000
execute if score #type property_501 matches 2 run scoreboard players set #y min_501 5000
execute unless score #type property_501 matches 2 run scoreboard players set #y min_501 0

execute unless score #type property_501 matches 3 run function bullet_501:detailed/block/slabs/loop
execute if score #type property_501 matches 3 run function #bullet_501:detailed/hit