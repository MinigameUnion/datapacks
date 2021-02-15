execute as @e[type=armor_stand,tag=ticking_502,tag=clay_shooter_502,sort=random,limit=1] at @s run function clay_502:clay/shoot

scoreboard players operation #RANGE num_000 = #SECOND_RANDOM num_502
scoreboard players operation #RANGE num_000 *= #20 num_000
function tool_000:random
scoreboard players operation #TICK num_502 = #SECOND_OPTION num_502
scoreboard players operation #TICK num_502 *= #20 num_000
execute store result score @s tick_502 run scoreboard players operation #RANDOM num_000 += #TICK num_502
#scoreboard players operation @s tick_502 *= #20 num_000

scoreboard players remove @s count_502 1
execute if score @s count_502 matches ..0 run scoreboard players set @s progress_502 2
execute if score @s count_502 matches ..0 run scoreboard players set @s tick_502 80