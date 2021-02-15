##GET TOTAL
scoreboard players operation #PERFECT num_502 = #default count_502
scoreboard players operation #PERFECT num_502 *= #default set_502

##TITLES
execute as @a[tag=ticking_502,tag=playing_502] at @s run function clay_502:game/default/result/player

##COINS
scoreboard players operation @a[tag=ticking_502,tag=playing_502] point_502 /= #10 num_000

##FINISH
scoreboard players set @s progress_502 4
scoreboard players set @s tick_502 70

##RESTART PLATE
execute if data storage clay_502:storage match.list[0] as @e[dx=47,dy=31,dz=31,tag=spawn_target_plate_502,tag=ticking_502,sort=nearest,limit=1] at @s run function clay_502:target_plate/summon/root