#> reversi_201:menu/action/skin.gacha
#
#
#
# @within function reversi_201:menu/select

#> Val
# @private
#declare score_holder $unlockSkinCount

execute store result score $unlockSkinCount ReversiData_201 if data storage reversi_201:data UnlockSkins[]

execute if score $unlockSkinCount ReversiData_201 matches 14.. run tellraw @s [{"text":"既に全てのスキンを持っているようだ。"}]
execute if score $unlockSkinCount ReversiData_201 matches ..13 run scoreboard players add @s remove_coin_000 3000
execute if score $unlockSkinCount ReversiData_201 matches ..13 run function player_000:remove_coin
execute if score $unlockSkinCount ReversiData_201 matches ..13 if entity @s[tag=!failed_remove_000] run function reversi_201:other/gacha

scoreboard players reset $unlockSkinCount ReversiData_201