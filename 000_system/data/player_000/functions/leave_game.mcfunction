#> player_000:leave_game
# @public

scoreboard players set @s playing_000 0
scoreboard players operation #ID num_000 = @s id_000
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 run data modify entity @s Item.tag.status set value 0b
function inv_000:ender/get
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 run data modify entity @s Item.tag.000.EnderItems set from storage inv_000:api EnderItems

#プレイヤーをデフォルトの状態に戻す
gamemode adventure @s
experience set @s 0 levels
experience set @s 0 points
effect clear @s
effect give @s resistance infinite 4 true
effect give @s minecraft:instant_health 1 124 true
scoreboard players set @s food_000 21
data modify storage tool_000:api teleport set from storage system_000:storage pos.lobby
function tool_000:teleport