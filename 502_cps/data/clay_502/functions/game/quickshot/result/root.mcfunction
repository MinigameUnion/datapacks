##GET PERFECT
scoreboard players operation #PERFECT num_502 = #quickshot count_502
scoreboard players operation #PERFECT num_502 *= #quickshot set_502
scoreboard players set #TOTAL num_502 0
scoreboard players operation #TOTAL num_502 += @a[tag=ticking_502,tag=playing_502] hit_502

##TITLES
scoreboard players set # num_502 0
execute positioned 4832 0 0 as @a[tag=ticking_502,tag=playing_502,sort=nearest] store result score @s num_502 run scoreboard players add # num_502 1

execute as @a[tag=ticking_502,tag=playing_502,scores={num_502=1}] at @s run function clay_502:game/quickshot/result/player

##COINS
scoreboard players operation @a[tag=ticking_502,tag=playing_502] point_502 /= #15 num_000

##FINISH
scoreboard players set @s progress_502 4
scoreboard players set @s tick_502 70

##RESTART PLATE
execute if data storage clay_502:storage match.list[0] as @e[dx=47,dy=31,dz=31,tag=spawn_target_plate_502,tag=ticking_502,sort=nearest] at @s run function clay_502:target_plate/summon/root