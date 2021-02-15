scoreboard players set #type property_501 0
execute if block ~ ~ ~ #bullet_501:chests[type=right] run scoreboard players set #type property_501 1
execute if block ~ ~ ~ #bullet_501:chests[type=left] run scoreboard players set #type property_501 2

execute if score #type property_501 matches 0 if score #facing property_501 matches 1 run function bullet_501:detailed/block/chests/single/east
execute if score #type property_501 matches 0 if score #facing property_501 matches 2 run function bullet_501:detailed/block/chests/single/west
execute if score #type property_501 matches 0 if score #facing property_501 matches 3 run function bullet_501:detailed/block/chests/single/south
execute if score #type property_501 matches 0 if score #facing property_501 matches 4 run function bullet_501:detailed/block/chests/single/north

execute if score #type property_501 matches 1 if score #facing property_501 matches 1 run function bullet_501:detailed/block/chests/right/east
execute if score #type property_501 matches 1 if score #facing property_501 matches 2 run function bullet_501:detailed/block/chests/right/west
execute if score #type property_501 matches 1 if score #facing property_501 matches 3 run function bullet_501:detailed/block/chests/right/south
execute if score #type property_501 matches 1 if score #facing property_501 matches 4 run function bullet_501:detailed/block/chests/right/north

execute if score #type property_501 matches 2 if score #facing property_501 matches 1 run function bullet_501:detailed/block/chests/left/east
execute if score #type property_501 matches 2 if score #facing property_501 matches 2 run function bullet_501:detailed/block/chests/left/west
execute if score #type property_501 matches 2 if score #facing property_501 matches 3 run function bullet_501:detailed/block/chests/left/south
execute if score #type property_501 matches 2 if score #facing property_501 matches 4 run function bullet_501:detailed/block/chests/left/north