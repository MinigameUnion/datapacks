scoreboard players set #0 property_501 0
scoreboard players set #1 property_501 0
scoreboard players set #2 property_501 0
execute if block ~ ~ ~ minecraft:brewing_stand[has_bottle_0=true] run scoreboard players set #0 property_501 1
execute if block ~ ~ ~ minecraft:brewing_stand[has_bottle_1=true] run scoreboard players set #1 property_501 1
execute if block ~ ~ ~ minecraft:brewing_stand[has_bottle_2=true] run scoreboard players set #2 property_501 1