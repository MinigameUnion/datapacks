#> reversi_201:game/turn/player/long_think/init
#
# Generated by MCF-Utility
#
# @within function reversi_201:game/start.common

execute unless score $Think.MAX ReversiData_201 matches 1.. run scoreboard players set #Think.Flag.Black ReversiData_201 1
execute unless score $Think.MAX ReversiData_201 matches 1.. run scoreboard players set #Think.Flag.White ReversiData_201 1
execute unless score $Think.MAX ReversiData_201 matches 1.. store result bossbar reversi_201:player1_201 value store result bossbar reversi_201:player1_201 max run scoreboard players operation #Think.Black ReversiData_201 = $Think.COUNT ReversiData_201
execute unless score $Think.MAX ReversiData_201 matches 1.. store result bossbar reversi_201:player2_201 value store result bossbar reversi_201:player2_201 max run scoreboard players operation #Think.White ReversiData_201 = $Think.COUNT ReversiData_201

execute if score $Think.MAX ReversiData_201 matches 1.. run scoreboard players set #Think.Flag.Black ReversiData_201 0
execute if score $Think.MAX ReversiData_201 matches 1.. run scoreboard players set #Think.Flag.White ReversiData_201 0
execute if score $Think.MAX ReversiData_201 matches 1.. run scoreboard players operation #Think.Black ReversiData_201 = $Think.MAX ReversiData_201
execute if score $Think.MAX ReversiData_201 matches 1.. run scoreboard players operation #Think.White ReversiData_201 = $Think.MAX ReversiData_201
execute if score $Think.MAX ReversiData_201 matches 1.. store result bossbar reversi_201:player1_201 max run scoreboard players get $Think.MAX ReversiData_201
execute if score $Think.MAX ReversiData_201 matches 1.. store result bossbar reversi_201:player2_201 max run scoreboard players get $Think.MAX ReversiData_201
execute if score $Think.MAX ReversiData_201 matches 1.. store result bossbar reversi_201:player1_201 value run scoreboard players get $Think.MAX ReversiData_201
execute if score $Think.MAX ReversiData_201 matches 1.. store result bossbar reversi_201:player2_201 value run scoreboard players get $Think.MAX ReversiData_201
execute unless score $vsAI ReversiData_201 matches 0 run bossbar set reversi_201:player1_201 players @a[scores={playing_000=201}]
execute unless score $vsAI ReversiData_201 matches 1 run bossbar set reversi_201:player2_201 players @a[scores={playing_000=201}]