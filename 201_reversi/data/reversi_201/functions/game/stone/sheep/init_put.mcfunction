#> reversi_201:game/stone/sheep/init_put
#
# Generated by MCF-Utility
#
# @within function reversi_201:game/start.common

summon sheep 2069 40.6 20 {Age:-2147483647,Color:0b,Tags:[StoneSheep_201],Invulnerable:1b,Attributes:[{Name:"generic.movement_speed",Base:0.10}],Motion:[0.0d,0.3d,0.0d]}
execute positioned 2069 40.6 20 as @e[type=sheep,tag=StoneSheep_201,distance=..0.05,limit=1] store result score @s SheepID_X_201 run data get entity @s Pos[0] 10
execute positioned 2069 40.6 20 as @e[type=sheep,tag=StoneSheep_201,distance=..0.05,limit=1] store result score @s SheepID_Y_201 run data get entity @s Pos[2] 10
summon sheep 2069 40.6 21 {Age:-2147483647,Color:15b,Tags:[StoneSheep_201],Invulnerable:1b,Attributes:[{Name:"generic.movement_speed",Base:0.10}],Motion:[0.0d,0.3d,0.0d]}
execute positioned 2069 40.6 21 as @e[type=sheep,tag=StoneSheep_201,distance=..0.05,limit=1] store result score @s SheepID_X_201 run data get entity @s Pos[0] 10
execute positioned 2069 40.6 21 as @e[type=sheep,tag=StoneSheep_201,distance=..0.05,limit=1] store result score @s SheepID_Y_201 run data get entity @s Pos[2] 10
summon sheep 2068 40.6 20 {Age:-2147483647,Color:15b,Tags:[StoneSheep_201],Invulnerable:1b,Attributes:[{Name:"generic.movement_speed",Base:0.10}],Motion:[0.0d,0.3d,0.0d]}
execute positioned 2068 40.6 20 as @e[type=sheep,tag=StoneSheep_201,distance=..0.05,limit=1] store result score @s SheepID_X_201 run data get entity @s Pos[0] 10
execute positioned 2068 40.6 20 as @e[type=sheep,tag=StoneSheep_201,distance=..0.05,limit=1] store result score @s SheepID_Y_201 run data get entity @s Pos[2] 10
summon sheep 2068 40.6 21 {Age:-2147483647,Color:0b,Tags:[StoneSheep_201],Invulnerable:1b,Attributes:[{Name:"generic.movement_speed",Base:0.10}],Motion:[0.0d,0.3d,0.0d]}
execute positioned 2068 40.6 21 as @e[type=sheep,tag=StoneSheep_201,distance=..0.05,limit=1] store result score @s SheepID_X_201 run data get entity @s Pos[0] 10
execute positioned 2068 40.6 21 as @e[type=sheep,tag=StoneSheep_201,distance=..0.05,limit=1] store result score @s SheepID_Y_201 run data get entity @s Pos[2] 10
effect give @e[type=sheep,tag=StoneSheep_201] slowness 10 99 true