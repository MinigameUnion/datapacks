execute as @a[tag=ticking_502] at @s run playsound minecraft:entity.experience_orb.pickup neutral @s ~ ~ ~ 1 1 1
tellraw @a[tag=ticking_502] [{"text":"[Tutorial] ","color":"gold"},{"text": " リロード中に ","color":"gray","underlined": "false"},{"keybind": "key.swapHands","color":"white","underlined": true},{"text": " をもう一度押すとリロードを","color":"gray","underlined": "false"},{"text": "中断","color":"white","underlined": "false"},{"text": "できます","color":"gray","underlined": "false"}]
execute as @e[dx=47,dy=31,dz=31,tag=spawn_target_plate_502,tag=ticking_502] at @s run function clay_502:target_plate/summon/root
scoreboard players set @s progress_502 2
tag @a[tag=ticking_502,tag=shot_502] remove shot_502