#> player_000:first_login
# @within
#   advancement player_000:first_login

#既存データ削除(デバッグ用)
scoreboard players operation #ID num_000 = @s id_000
execute if score @s id_000 matches 0.. as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 run kill @s
scoreboard players reset @s
#

scoreboard players set @s food_000 21
scoreboard players set @s playing_000 0

function player_000:login

execute unless score @s id_000 matches 0.. run function player_000:data/create

function #minecraft:handler/000_first_login