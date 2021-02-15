execute if score #type property_501 matches 1 run function #bullet_501:detailed/hit
execute if score #type property_501 matches 0 if block ~ ~ ~ #bullet_501:detailed/doors/normal run function bullet_501:detailed/block/doors/normal
execute if score #type property_501 matches 0 if block ~ ~ ~ minecraft:jungle_door run function bullet_501:detailed/block/doors/jungle
execute if score #type property_501 matches 0 if block ~ ~ ~ minecraft:acacia_door run function bullet_501:detailed/block/doors/acacia