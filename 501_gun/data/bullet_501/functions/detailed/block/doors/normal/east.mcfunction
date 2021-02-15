scoreboard players set #y max_501 10000
scoreboard players set #y min_501 3125
scoreboard players set #z max_501 1875
scoreboard players set #z min_501 0
execute if score #z num_501 matches 0..1875 run function #bullet_501:detailed/hit

scoreboard players set #z max_501 5625
scoreboard players set #z min_501 4375
execute if score #HIT num_501 matches 0 if score #z num_501 matches 4375..5625 run function #bullet_501:detailed/hit

scoreboard players set #z max_501 10000
scoreboard players set #z min_501 8125
execute if score #HIT num_501 matches 0 if score #z num_501 matches 8125..10000 run function #bullet_501:detailed/hit

scoreboard players set #y min_501 8125
scoreboard players set #z min_501 0
execute if score #HIT num_501 matches 0 if score #y num_501 matches 8125..10000 run function #bullet_501:detailed/hit

scoreboard players set #y max_501 6250
scoreboard players set #y min_501 5000
execute if score #HIT num_501 matches 0 if score #y num_501 matches 5000..6250 run function #bullet_501:detailed/hit