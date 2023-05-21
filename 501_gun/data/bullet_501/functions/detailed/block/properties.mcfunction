#> bullet_501:detailed/block/properties
scoreboard players set #facing property_501 0
execute if block ~ ~ ~ #bullet_501:detailed/facing[facing=east] run scoreboard players set #facing property_501 1
execute if block ~ ~ ~ #bullet_501:detailed/facing[facing=west] run scoreboard players set #facing property_501 2
execute if block ~ ~ ~ #bullet_501:detailed/facing[facing=south] run scoreboard players set #facing property_501 3
execute if block ~ ~ ~ #bullet_501:detailed/facing[facing=north] run scoreboard players set #facing property_501 4
execute if block ~ ~ ~ #bullet_501:detailed/facing[facing=up] run scoreboard players set #facing property_501 5

execute store result score #east property_501 if block ~ ~ ~ #bullet_501:detailed/face[east=true]
execute store result score #west property_501 if block ~ ~ ~ #bullet_501:detailed/face[west=true]
execute store result score #south property_501 if block ~ ~ ~ #bullet_501:detailed/face[south=true]
execute store result score #north property_501 if block ~ ~ ~ #bullet_501:detailed/face[north=true]

scoreboard players set #type property_501 0
execute if block ~ ~ ~ #bullet_501:detailed/type[type=bottom] run scoreboard players set #type property_501 1
execute if block ~ ~ ~ #bullet_501:detailed/type[type=top] run scoreboard players set #type property_501 2
execute if block ~ ~ ~ #bullet_501:detailed/type[type=double] run scoreboard players set #type property_501 3

scoreboard players set #half property_501 0
execute if block ~ ~ ~ #bullet_501:detailed/half[half=top] run scoreboard players set #half property_501 1
execute if block ~ ~ ~ #bullet_501:detailed/half[half=bottom] run scoreboard players set #half property_501 2

execute store result score #open property_501 if block ~ ~ ~ #bullet_501:detailed/open[open=true]

scoreboard players set #axis property_501 0
execute if block ~ ~ ~ #bullet_501:detailed/axis[axis=x] run scoreboard players set #axis property_501 1
execute if block ~ ~ ~ #bullet_501:detailed/axis[axis=y] run scoreboard players set #axis property_501 2
execute if block ~ ~ ~ #bullet_501:detailed/axis[axis=z] run scoreboard players set #axis property_501 3