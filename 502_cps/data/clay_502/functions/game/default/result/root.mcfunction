##GET TOTAL
scoreboard players operation #TOTAL num_502 = #COUNT_OPTION num_502
scoreboard players operation #TOTAL num_502 *= #SET_OPTION num_502

##TITLES
execute as @a[tag=ticking_502,tag=playing_502] at @s run function clay_502:game/default/result/player

##COINS
scoreboard players operation #COIN num_502 = #COIN_max num_502
scoreboard players operation #COIN num_502 -= #COIN_min num_502
scoreboard players operation #HIT num_502 = @a[tag=ticking_502,tag=playing_502] hit_502
scoreboard players operation #HIT num_502 -= #HIT_min num_502
scoreboard players operation #COIN num_502 *= #HIT num_502
scoreboard players operation #COIN num_502 > #0 num_000
scoreboard players operation #TOTAL num_502 -= #HIT_min num_502
scoreboard players operation #COIN num_502 /= #TOTAL num_502
execute if score #HIT num_502 matches 0.. run scoreboard players operation #COIN num_502 += #COIN_min num_502
execute if entity @a[tag=ticking_502,tag=playing_502,tag=perfect_502] run scoreboard players operation #COIN num_502 += #PERFECT_BONUS num_502
scoreboard players operation @s num_502 = #COIN num_502

##FINISH
tag @a[tag=ticking_502,tag=playing_502,tag=perfect_502] remove perfect_502
scoreboard players set @s progress_502 4
scoreboard players set @s tick_502 70

##RESTART PLATE
execute as @e[dx=47,dy=31,dz=31,tag=spawn_target_plate_502,tag=ticking_502,sort=nearest,limit=1] at @s run function clay_502:target_plate/summon/root