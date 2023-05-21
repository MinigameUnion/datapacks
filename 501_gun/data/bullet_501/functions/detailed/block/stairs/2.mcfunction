execute if score #3 property_501 matches 0 run scoreboard players set #x max_501 5000
execute if score #3 property_501 matches 1 run scoreboard players set #x max_501 10000
scoreboard players set #x min_501 0
scoreboard players set #z max_501 10000
execute if score #0 property_501 matches 0 run scoreboard players set #z min_501 5000
execute if score #0 property_501 matches 1 run scoreboard players set #z min_501 0
function #bullet_501:detailed/hit