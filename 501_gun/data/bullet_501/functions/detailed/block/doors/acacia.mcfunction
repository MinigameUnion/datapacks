execute if score #half property_501 matches 0 run scoreboard players set #y max_501 1875
execute if score #half property_501 matches 1 run scoreboard players set #y max_501 625
scoreboard players set #y min_501 0
execute if score #y num_501 <= #y max_501 run function #bullet_501:detailed/hit
scoreboard players set #y max_501 10000
execute if score #half property_501 matches 0 run scoreboard players set #y min_501 9375
execute if score #half property_501 matches 1 run scoreboard players set #y min_501 8125
execute if score #y num_501 >= #y min_501 run function #bullet_501:detailed/hit

execute if score #HIT num_501 matches 0 if score #facing property_501 matches 1..2 run function bullet_501:detailed/block/doors/acacia/east
execute if score #HIT num_501 matches 0 if score #facing property_501 matches 3..4 run function bullet_501:detailed/block/doors/acacia/south