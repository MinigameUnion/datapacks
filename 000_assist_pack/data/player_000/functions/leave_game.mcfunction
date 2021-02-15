#> player_000:leave_game
# @public

scoreboard players set @s playing_000 0
scoreboard players operation #ID num_000 = @s id_000
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 run data modify entity @s Item.tag.status set value 0b
function inv_000:ender/get
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 run data modify entity @s Item.tag.000.EnderItems set from storage inv_000:api EnderItems

gamemode adventure @s
experience set @s 0 levels
experience set @s 0 points
effect clear @s
effect give @s resistance 1000000 4 true
effect give @s minecraft:instant_health 1 124 true
scoreboard players set @s food_000 21
data modify entity 0-0-0-0-0 {} merge from storage system_000:storage pos.lobby
tp @s 0-0-0-0-0
data modify entity 0-0-0-0-0 {} merge from storage system_000:storage pos.admin