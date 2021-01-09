scoreboard players set #0 property_501 1
scoreboard players set #1 property_501 1
scoreboard players set #2 property_501 1
scoreboard players set #3 property_501 1

execute if score #facing property_501 matches 1 run scoreboard players set #2 property_501 0
execute if score #facing property_501 matches 2 run scoreboard players set #1 property_501 0
execute if score #facing property_501 matches 3 run scoreboard players set #0 property_501 0
execute if score #facing property_501 matches 4 run scoreboard players set #3 property_501 0