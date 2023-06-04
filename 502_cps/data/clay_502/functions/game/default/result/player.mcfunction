##TITLES
title @a[tag=ticking_502] times 10 50 10
execute if score @s hit_502 matches 2.. if score @s hit_502 >= #PERFECT num_502 run title @a[tag=ticking_502] title [{"text":"PERFECT !!","color":"gold","bold":true}]
execute if score @s hit_502 < #PERFECT num_502 run title @a[tag=ticking_502] title ""
execute if score @s hit_502 matches 2.. run title @a[tag=ticking_502] subtitle [{"translate":"%s/%s HITS","color":"gray","with":[{"score":{"objective":"hit_502","name":"@s"},"color":"white","bold":true},{"score":{"objective":"num_502","name":"#PERFECT"}}]}]
execute if score @s hit_502 matches ..1 run title @a[tag=ticking_502] subtitle [{"translate":"%s/%s HIT","color":"gray","with":[{"score":{"objective":"hit_502","name":"@s"},"color":"white","bold":true},{"score":{"objective":"num_502","name":"#PERFECT"}}]}]
execute if entity @s[tag=!perfect_502] as @a[tag=ticking_502] at @s run playsound minecraft:entity.player.levelup player @s ^ ^ ^20 1 1 1
execute if entity @s[tag=perfect_502] as @a[tag=ticking_502] at @s run playsound minecraft:ui.toast.challenge_complete master @s ^ ^ ^20 0.75 1 0.75