scoreboard players operation @s count_502 = #COUNT_OPTION num_502
scoreboard players remove @s set_502 1
execute if score @s set_502 matches 1.. store result score @a[tag=ticking_502] tick_502 run scoreboard players set @s tick_502 100
execute if score @s set_502 matches 1.. run title @a[tag=ticking_502] times 10 80 10
execute if score @s set_502 matches 1.. run title @a[tag=ticking_502] title [{"text":"BREAK"}]
execute if score @s set_502 matches 1.. run title @a[tag=ticking_502] subtitle [{"text":"5s","color":"gray"}]
execute if score @s set_502 matches 1.. run scoreboard players set @s progress_502 1
execute if score @s set_502 matches ..0 run function clay_502:game/default/finish