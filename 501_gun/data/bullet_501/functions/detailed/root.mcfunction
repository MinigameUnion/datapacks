execute store result score #BASE num_501 run scoreboard players operation #SKIP num_501 = #x num_501
execute store result score #X max_501 store result score #X num_501 run scoreboard players operation #x num_501 = #x pos_501
execute store result score #Y max_501 store result score #Y num_501 run scoreboard players operation #y num_501 = #y pos_501
execute store result score #Z max_501 store result score #Z num_501 run scoreboard players operation #z num_501 = #z pos_501
scoreboard players operation #x num_501 %= #100000 num_000
scoreboard players operation #y num_501 %= #100000 num_000
scoreboard players operation #z num_501 %= #100000 num_000
execute store result score #X min_501 run scoreboard players operation #X max_501 -= #x num_501
execute store result score #Y min_501 run scoreboard players operation #Y max_501 -= #y num_501
execute store result score #Z min_501 run scoreboard players operation #Z max_501 -= #z num_501

scoreboard players reset * property_501

execute if block ~ ~ ~ #bullet_501:detailed/facing[facing=east] run scoreboard players set #facing property_501 1
execute if block ~ ~ ~ #bullet_501:detailed/facing[facing=west] run scoreboard players set #facing property_501 2
execute if block ~ ~ ~ #bullet_501:detailed/facing[facing=south] run scoreboard players set #facing property_501 3
execute if block ~ ~ ~ #bullet_501:detailed/facing[facing=north] run scoreboard players set #facing property_501 4

execute if block ~ ~ ~ #bullet_501:detailed/face[east=true] run scoreboard players set #east property_501 1
execute if block ~ ~ ~ #bullet_501:detailed/face[west=true] run scoreboard players set #west property_501 1
execute if block ~ ~ ~ #bullet_501:detailed/face[south=true] run scoreboard players set #south property_501 1
execute if block ~ ~ ~ #bullet_501:detailed/face[north=true] run scoreboard players set #north property_501 1

execute if block ~ ~ ~ #bullet_501:detailed/type[type=bottom] run scoreboard players set #type property_501 1
execute if block ~ ~ ~ #bullet_501:detailed/type[type=top] run scoreboard players set #type property_501 2
execute if block ~ ~ ~ #bullet_501:detailed/type[type=double] run scoreboard players set #type property_501 3

execute if block ~ ~ ~ #bullet_501:detailed/half[half=top] run scoreboard players set #half property_501 1
execute if block ~ ~ ~ #bullet_501:detailed/half[half=bottom] run scoreboard players set #half property_501 2

execute if block ~ ~ ~ #bullet_501:detailed/open[open=true] run scoreboard players set #open property_501 1

execute if block ~ ~ ~ #minecraft:slabs run function bullet_501:detailed/block/slabs
execute if block ~ ~ ~ #minecraft:fences run function bullet_501:detailed/block/fences
execute if block ~ ~ ~ #minecraft:stairs run function bullet_501:detailed/block/stairs
execute if block ~ ~ ~ #minecraft:trapdoors run function bullet_501:detailed/block/trapdoors