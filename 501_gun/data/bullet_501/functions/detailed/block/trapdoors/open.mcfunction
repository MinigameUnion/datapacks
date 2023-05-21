scoreboard players set #y max_501 10000
scoreboard players set #y min_501 0

execute if score #facing property_501 matches 1 if score #x num_501 matches 0..1250 if score #HIT num_501 matches 0 run function bullet_501:detailed/block/trapdoors/east
execute if score #facing property_501 matches 2 if score #x num_501 matches 8750..10000 if score #HIT num_501 matches 0 run function bullet_501:detailed/block/trapdoors/west
execute if score #facing property_501 matches 3 if score #z num_501 matches 0..1250 if score #HIT num_501 matches 0 run function bullet_501:detailed/block/trapdoors/south
execute if score #facing property_501 matches 4 if score #z num_501 matches 8750..10000 if score #HIT num_501 matches 0 run function bullet_501:detailed/block/trapdoors/north