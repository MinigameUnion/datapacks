#> reversi_201:menu/area_linker/join
#
# Generated by MCF-Utility
#
# @private

scoreboard players set @s playing_000 201
function player_000:join_game
scoreboard players set @s food_000 21
tp @s 2053.0 39.6 30.0 180 0

execute if score $isPlay ReversiData_201 matches 1 if score #Think ReversiData_201 matches 1 unless score $vsAI ReversiData_201 matches 0 run bossbar set reversi_201:player1_201 players @a[scores={playing_000=201}]
execute if score $isPlay ReversiData_201 matches 1 if score #Think ReversiData_201 matches 1 unless score $vsAI ReversiData_201 matches 1 run bossbar set reversi_201:player2_201 players @a[scores={playing_000=201}]