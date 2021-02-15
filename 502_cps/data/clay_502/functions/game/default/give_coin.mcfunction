scoreboard players operation #PERFECT num_502 = #default count_502
scoreboard players operation #PERFECT num_502 *= #default set_502

execute as @a[tag=ticking_502,tag=playing_502] at @s run function clay_502:game/default/result/data

scoreboard players set @s progress_502 5
execute store result score @a[tag=ticking_502,tag=playing_502] tick_502 run scoreboard players set @s tick_502 150