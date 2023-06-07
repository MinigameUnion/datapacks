kill @e[dx=47,dy=31,dz=31,tag=gun_stand_502,tag=ticking_502]

title @a[tag=ticking_502] reset
title @a[tag=ticking_502] times 5 55 20
execute if score @s progress_502 matches 0 run title @a[tag=ticking_502] title [{"text":"START"}]
execute if score @s progress_502 matches 1.. run title @a[tag=ticking_502] title [{"text":"RESTART"}]
execute as @a[tag=ticking_502] at @s run playsound minecraft:entity.firework_rocket.blast neutral @s ^ ^ ^20 1 1 1

scoreboard players set @a[tag=ticking_502,tag=playing_502] point_502 0
scoreboard players set @a[tag=ticking_502,tag=playing_502] hit_502 0

scoreboard players operation @s count_502 = #default count_502
scoreboard players operation @s set_502 = #default set_502
scoreboard players set @s tick_502 120
scoreboard players set @s progress_502 1