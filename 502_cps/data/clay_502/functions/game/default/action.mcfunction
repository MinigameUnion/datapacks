scoreboard players reset @s tick_502

execute if score @s progress_502 matches 6 run function clay_502:game/default/start
execute if score @s progress_502 matches 5 run tag @s add delete_502
execute if score @s progress_502 matches 4 run function clay_502:game/default/give_coin
execute if score @s progress_502 matches 3 run function clay_502:game/default/result/root
execute if score @s progress_502 matches 2 run function clay_502:game/default/break
execute if score @s progress_502 matches 1 unless score @s tick_502 matches 0.. if score @s count_502 matches 1.. run function clay_502:game/default/shot