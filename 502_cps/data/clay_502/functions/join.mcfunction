scoreboard players set @s playing_000 502
function player_000:join_game

execute store result score #SUCCESS num_502 if block 4992 0 2000 shulker_box
execute store result score #FAILED num_502 unless block 4992 0 2000 shulker_box
execute if score #SUCCESS num_502 matches 0 if score #FAILED num_502 matches 0 run forceload add 4992 2000
execute if score #SUCCESS num_502 matches 0 if score #FAILED num_502 matches 0 run forceload remove 4992 2000

data modify entity 0-0-1f6-0-0 {} merge from storage clay_502:storage lobby.spawn
execute at 0-0-1f6-0-0 run tp @s ~ ~ ~ ~ ~
data modify entity 0-0-1f6-0-0 {} merge from storage clay_502:storage lobby.admin


scoreboard players operation #ID num_502 = @s id_000
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_502 if data entity @s Item.tag.502.advancements{tutorial:1b} run scoreboard players set #ID num_502 -1
execute if score #ID num_502 matches -1 run advancement grant @s only clay_502:tutorial

scoreboard players set @s food_000 21
team join cps_player_502 @s