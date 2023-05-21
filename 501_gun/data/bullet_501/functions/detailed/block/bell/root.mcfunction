execute if block ~ ~ ~ minecraft:bell[attachment=ceiling] run scoreboard players set #type property_501 0
execute if block ~ ~ ~ minecraft:bell[attachment=floor] run scoreboard players set #type property_501 1
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall] run scoreboard players set #type property_501 2
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] run scoreboard players set #type property_501 3

execute if score #type property_501 matches 0 run function #bullet_501:detailed/block/bell/ceiling
execute if score #type property_501 matches 1 if score #facing property_501 matches 1..2 run function #bullet_501:detailed/block/bell/floor/east
execute if score #type property_501 matches 1 if score #facing property_501 matches 3..4 run function #bullet_501:detailed/block/bell/floor/south
execute if score #type property_501 matches 2..3 if score #facing property_501 matches 1..2 run function #bullet_501:detailed/block/bell/wall/x
execute if score #type property_501 matches 2..3 if score #facing property_501 matches 3..4 run function #bullet_501:detailed/block/bell/wall/y