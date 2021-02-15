scoreboard players operation #PERFECT num_502 = #quickshot count_502
scoreboard players operation #PERFECT num_502 *= #quickshot set_502
scoreboard players set #TOTAL num_502 0
scoreboard players operation #TOTAL num_502 += @a[tag=ticking_502,tag=playing_502] hit_502

execute as @a[tag=ticking_502,tag=playing_502] at @s run function clay_502:game/quickshot/result/data

tag @a[tag=ticking_502,tag=playing_502,tag=winner_502] remove winner_502
tag @e[dx=47,dy=31,dz=31,tag=ticking_502,tag=sign_502,tag=leave_match_502] remove disabled_502
function clay_502:game/sign/leave_match/restore

scoreboard players set @s progress_502 5
execute store result score @a[tag=ticking_502,tag=playing_502] tick_502 run scoreboard players set @s tick_502 150