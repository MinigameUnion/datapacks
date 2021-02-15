scoreboard players set #y max_501 2500
scoreboard players set #y min_501 0
execute if score #y num_501 matches 0..2500 run function #bullet_501:detailed/hit
scoreboard players set #y max_501 10000
scoreboard players set #y min_501 8125
execute if score #HIT num_501 matches 0 if score #y num_501 matches 8125..10000 run function #bullet_501:detailed/hit

execute if score #facing property_501 matches 1..2 if score #y num_501 matches 2500..8125 run function bullet_501:detailed/block/doors/jungle/east
execute if score #facing property_501 matches 3..4 if score #y num_501 matches 2500..8125 run function bullet_501:detailed/block/doors/jungle/south