#> reversi_201:game/stone/sheep/respawn
#
# Generated by MCF-Utility
#
# @within function
#   reversi_201:game/turn/player/long_think/timeover.second
#   reversi_201:game/end/direct
#   reversi_201:game/force_end

execute as @e[type=sheep,tag=StoneSheep_201] store result entity @s Pos[0] double 0.1 run scoreboard players get @s SheepID_X_201
execute as @e[type=sheep,tag=StoneSheep_201] store result entity @s Pos[2] double 0.1 run scoreboard players get @s SheepID_Y_201
execute as @e[type=sheep,tag=StoneSheep_201] at @s run tp @s ~ 40.6 ~
execute as @e[type=sheep,tag=StoneSheep_201] run data modify entity @s Attributes[{Name:"minecraft:generic.movement_speed"}].Base set value 0.0d
team join NoCollision_201 @e[type=sheep,tag=StoneSheep_201]