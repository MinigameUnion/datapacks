scoreboard players set #y max_501 3125
scoreboard players set #y min_501 0
execute if score #y num_501 matches 0..3125 run function #bullet_501:detailed/hit
execute if score #facing property_501 matches 1..2 if score #y num_501 matches 3125.. run function bullet_501:detailed/block/doors/normal/east
execute if score #facing property_501 matches 3..4 if score #y num_501 matches 3125.. run function bullet_501:detailed/block/doors/normal/south