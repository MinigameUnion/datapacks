tp @s ~ ~ ~ ~ ~
tag @s add playing_502
tag @s add ticking_502
tag @s remove join_player_502
function gun_501:join
scoreboard players operation @s type_502 = #ADMIN type_502

execute if score @s type_502 matches 0 run function clay_502:game/tutorial/join