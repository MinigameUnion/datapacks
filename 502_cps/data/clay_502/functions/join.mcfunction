scoreboard players set @s playing_000 502
function player_000:join_game

execute store result score #SUCCESS num_502 if block 4992 0 2000 shulker_box
execute store result score #FAILED num_502 unless block 4992 0 2000 shulker_box
execute if score #SUCCESS num_502 matches 0 if score #FAILED num_502 matches 0 run forceload add 4992 2000
execute if score #SUCCESS num_502 matches 0 if score #FAILED num_502 matches 0 run forceload remove 4992 2000

#data modify entity 1f6-0-0-0-0 Pos set from storage clay_502:storage lobby.spawn.Pos
#data modify entity 1f6-0-0-0-0 Rotation set from storage clay_502:storage lobby.spawn.Rotation
data modify entity 1f6-0-0-0-0 {} merge from storage clay_502:storage lobby.spawn

execute at 1f6-0-0-0-0 run tp @s ~ ~ ~ ~ ~

data modify entity 1f6-0-0-0-0 {} merge from storage clay_502:storage lobby.admin
#data modify entity 1f6-0-0-0-0 Pos set from storage clay_502:storage lobby.admin.Pos
#data modify entity 1f6-0-0-0-0 Rotation set from storage clay_502:storage lobby.admin.Rotation

scoreboard players set @s food_000 21
team join player_502 @s