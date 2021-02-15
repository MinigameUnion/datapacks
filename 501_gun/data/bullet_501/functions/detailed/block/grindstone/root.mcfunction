execute if block ~ ~ ~ grindstone[face=floor] run scoreboard players set #type property_501 0
execute if block ~ ~ ~ grindstone[face=ceiling] run scoreboard players set #type property_501 1
execute if block ~ ~ ~ grindstone[face=wall] run scoreboard players set #type property_501 2

execute if score #type property_501 matches 0 if score #facing property_501 matches 1..2 run function bullet_501:detailed/block/grindstone/floor/east
execute if score #type property_501 matches 0 if score #facing property_501 matches 3..4 run function bullet_501:detailed/block/grindstone/floor/south

execute if score #type property_501 matches 1 if score #facing property_501 matches 1..2 run function bullet_501:detailed/block/grindstone/ceiling/east
execute if score #type property_501 matches 1 if score #facing property_501 matches 3..4 run function bullet_501:detailed/block/grindstone/ceiling/south

execute if score #type property_501 matches 2 if score #facing property_501 matches 1 run function bullet_501:detailed/block/grindstone/wall/east
execute if score #type property_501 matches 2 if score #facing property_501 matches 2 run function bullet_501:detailed/block/grindstone/wall/west
execute if score #type property_501 matches 2 if score #facing property_501 matches 3 run function bullet_501:detailed/block/grindstone/wall/south
execute if score #type property_501 matches 2 if score #facing property_501 matches 4 run function bullet_501:detailed/block/grindstone/wall/north