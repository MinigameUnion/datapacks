execute as @a[tag=ticking_502] at @s run playsound minecraft:entity.experience_orb.pickup neutral @s ~ ~ ~ 1 1 1
execute as @e[tag=target_plate_502,tag=ticking_502] at @s run function clay_502:target_plate/delete
scoreboard players set @s progress_502 3

tellraw @a[tag=ticking_502] [{"text":"[Tutorial] ","color":"gold"},{"text": " 頬づけ(ADS)中は","color":"gray","underlined": false},{"text": "精度がかなり上昇","color":"white","underlined": false},{"text": "します","color":"gray","underlined": false}]