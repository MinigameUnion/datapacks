summon minecraft:armor_stand ~ ~ ~ {Tags:["tile_602","test_602"],NoGravity:1b}
execute rotated as @s rotated ~ 0 positioned as @s positioned ^ ^ ^0.5 as @e[tag=tile_602,tag=!go] run teleport @s ~ ~ ~ ~ ~
execute as @e[tag=tile_602,tag=!go] run scoreboard players set @s a_602 8
execute as @e[tag=tile_602,tag=!go] store result score @s b_602 run data get entity @s Rotation[0] 100
execute as @e[tag=tile_602,tag=!go] run tag @s add go

summon minecraft:armor_stand ~ ~ ~ {Tags:["tile_602","test_602"],NoGravity:1b}
execute rotated as @s rotated ~30 0 positioned as @s positioned ^ ^ ^0.5 as @e[tag=tile_602,tag=!go] run teleport @s ~ ~ ~ ~ ~
execute as @e[tag=tile_602,tag=!go] run scoreboard players set @s a_602 8
execute as @e[tag=tile_602,tag=!go] store result score @s b_602 run data get entity @s Rotation[0] 100
execute as @e[tag=tile_602,tag=!go] run tag @s add go

summon minecraft:armor_stand ~ ~ ~ {Tags:["tile_602","test_602"],NoGravity:1b}
execute rotated as @s rotated ~-30 0 positioned as @s positioned ^ ^ ^0.5 as @e[tag=tile_602,tag=!go] run teleport @s ~ ~ ~ ~ ~
execute as @e[tag=tile_602,tag=!go] run scoreboard players set @s a_602 8
execute as @e[tag=tile_602,tag=!go] store result score @s b_602 run data get entity @s Rotation[0] 100
execute as @e[tag=tile_602,tag=!go] run tag @s add go

summon minecraft:armor_stand ~ ~ ~ {Tags:["tile_602","test_602"],NoGravity:1b}
execute rotated as @s rotated ~75 0 positioned as @s positioned ^ ^ ^0.5 as @e[tag=tile_602,tag=!go] run teleport @s ~ ~ ~ ~ ~
execute as @e[tag=tile_602,tag=!go] run scoreboard players set @s a_602 8
execute as @e[tag=tile_602,tag=!go] store result score @s b_602 run data get entity @s Rotation[0] 100
execute as @e[tag=tile_602,tag=!go] run tag @s add go

summon minecraft:armor_stand ~ ~ ~ {Tags:["tile_602","test_602"],NoGravity:1b}
execute rotated as @s rotated ~-75 0 positioned as @s positioned ^ ^ ^0.5 as @e[tag=tile_602,tag=!go] run teleport @s ~ ~ ~ ~ ~
execute as @e[tag=tile_602,tag=!go] run scoreboard players set @s a_602 8
execute as @e[tag=tile_602,tag=!go] store result score @s b_602 run data get entity @s Rotation[0] 100
execute as @e[tag=tile_602,tag=!go] run tag @s add go

summon minecraft:armor_stand ~ ~ ~ {Tags:["tile_602","test_602"],NoGravity:1b}
execute rotated as @s rotated ~110 0 positioned as @s positioned ^ ^ ^0.5 as @e[tag=tile_602,tag=!go] run teleport @s ~ ~ ~ ~ ~
execute as @e[tag=tile_602,tag=!go] run scoreboard players set @s a_602 8
execute as @e[tag=tile_602,tag=!go] store result score @s b_602 run data get entity @s Rotation[0] 100
execute as @e[tag=tile_602,tag=!go] run tag @s add go

summon minecraft:armor_stand ~ ~ ~ {Tags:["tile_602","test_602"],NoGravity:1b}
execute rotated as @s rotated ~-110 0 positioned as @s positioned ^ ^ ^0.5 as @e[tag=tile_602,tag=!go] run teleport @s ~ ~ ~ ~ ~
execute as @e[tag=tile_602,tag=!go] run scoreboard players set @s a_602 8
execute as @e[tag=tile_602,tag=!go] store result score @s b_602 run data get entity @s Rotation[0] 100
execute as @e[tag=tile_602,tag=!go] run tag @s add go
