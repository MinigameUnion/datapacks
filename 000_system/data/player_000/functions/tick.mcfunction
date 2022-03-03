#> player_000:tick
# @within
#   tag/function minecraft:tick

execute as @a[scores={login_000=1..}] at @s run function #minecraft:handler/000_login

execute as @a if score @s foodLevel_000 < @s food_000 if score @s foodLevel_000 matches ..19 run effect give @s minecraft:saturation 1 0
execute as @a if score @s foodLevel_000 > @s food_000 run effect give @s minecraft:hunger 1 255 true
effect give @a[gamemode=!creative,gamemode=!spectator,nbt=!{foodSaturationLevel:0.0f},scores={food_000=0..20}] minecraft:hunger 1 255 true
execute as @a[nbt={foodSaturationLevel:0.0f},scores={food_000=0..}] if score @s foodLevel_000 <= @s food_000 run effect clear @s minecraft:hunger

execute as @a[scores={exp_num_000=0..,exp_max_000=0..,level_000=0..}] unless score @s level_000 = @s XpLevel_000 run function player_000:experience/set
execute as @a[scores={exp_num_000=0..,exp_max_000=0..,level_000=0..}] store result score @s temp_000 run data get entity @s XpP 1000
execute as @a[scores={exp_num_000=0..,exp_max_000=0..,level_000=0..}] unless score @s XpP_000 = @s temp_000 run function player_000:experience/set

execute as @a[scores={add_coin_000=1..}] at @s run function player_000:add_coin
tag @a remove failed_remove_000
execute as @a[scores={remove_coin_000=1..}] at @s run function player_000:remove_coin

#scoreboard players operation @a coin_000 < #999999999 num_000

#function tool_000:get_ms
#title @a actionbar [{"text":"ms:"},{"score":{"objective": "num_000","name": "#ms"}}]