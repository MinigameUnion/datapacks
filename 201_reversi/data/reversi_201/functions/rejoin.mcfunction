#> reversi_201:rejoin
#
# Generated by MCF-Utility
#
# @within function reversi_201:rejoin_handler

execute if entity @s[tag=Player_White_201] unless score $Current SessionID.W_201 = @s SessionID.W_201 run tag @s remove Player_White_201
execute if entity @s[tag=Player_Black_201] unless score $Current SessionID.B_201 = @s SessionID.B_201 run tag @s remove Player_Black_201