#> reversi_201:game/stone/sheep/put
#
# Generated by MCF-Utility
#
# @within function reversi_201:game/stone/set

execute if score #TurnColor ReversiData_201 matches 0 run summon sheep ~ 40.6 ~ {Age:-2147483647,Color:15b,Tags:[StoneSheep_201],Invulnerable:1b,Attributes:[{Name:"generic.movement_speed",Base:0.15d}],ActiveEffects:[{Id:2,Amplifier:4b,Duration:200}],Motion:[0.0d,0.3d,0.0d]}
execute if score #TurnColor ReversiData_201 matches 1 run summon sheep ~ 40.6 ~ {Age:-2147483647,Color:0b,Tags:[StoneSheep_201],Invulnerable:1b,Attributes:[{Name:"generic.movement_speed",Base:0.15d}],ActiveEffects:[{Id:2,Amplifier:4b,Duration:200}],Motion:[0.0d,0.3d,0.0d]}
execute as @e[type=sheep,tag=StoneSheep_201,distance=..0.05,limit=1] store result score @s SheepID_X_201 run data get entity @s Pos[0] 10
execute as @e[type=sheep,tag=StoneSheep_201,distance=..0.05,limit=1] store result score @s SheepID_Y_201 run data get entity @s Pos[2] 10