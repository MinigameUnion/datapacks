#> bullet_501:detailed/block/walls/root
execute store result score #up property_501 if block ~ ~ ~ #minecraft:walls[up=true]
execute if block ~ ~ ~ #minecraft:walls[east=low] run scoreboard players set #east property_501 1
execute if block ~ ~ ~ #minecraft:walls[east=tall] run scoreboard players set #east property_501 2
execute if block ~ ~ ~ #minecraft:walls[west=low] run scoreboard players set #west property_501 1
execute if block ~ ~ ~ #minecraft:walls[west=tall] run scoreboard players set #west property_501 2
execute if block ~ ~ ~ #minecraft:walls[south=low] run scoreboard players set #south property_501 1
execute if block ~ ~ ~ #minecraft:walls[south=tall] run scoreboard players set #south property_501 2
execute if block ~ ~ ~ #minecraft:walls[north=low] run scoreboard players set #north property_501 1
execute if block ~ ~ ~ #minecraft:walls[north=tall] run scoreboard players set #north property_501 2