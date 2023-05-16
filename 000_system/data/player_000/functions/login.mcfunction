#> player_000:login
# @within
#   function player_000:first_login
#   tag/function minecraft:handler:000_login

execute store result score #TEMP num_000 run data get entity @s DataVersion
execute unless score #DataVersion id_000 = #TEMP num_000 run function system_000:warning/minecraft_version

#プレイデータidの相違があればプレイデータstorage(player_000:playdata.names)を見に行く
execute unless score @s playdata_000 = #playdata id_000 if data storage temp_000:loading player.raw[0] run function player_000:data/check

scoreboard players operation @s playdata_000 = #playdata id_000

scoreboard players set @s login_000 0