##TITLES
title @a[tag=ticking_502] times 10 50 10
execute if score @s hit_502 matches 2.. if score @s hit_502 >= #TOTAL num_502 run tag @s add perfect_502
execute if score @s hit_502 matches 2.. if score @s hit_502 >= #TOTAL num_502 run title @a[tag=ticking_502] title [{"text":"PERFECT !!","color":"gold","bold":true}]
execute if score @s hit_502 matches 2.. if score @s hit_502 < #TOTAL num_502 run title @a[tag=ticking_502] title [{"score":{"objective":"hit_502","name":"@s"},"color":"white","bold":true},{"text":" HITS","color":"gray","bold":"false"}]
execute if score @s hit_502 matches ..1 run title @a[tag=ticking_502] title [{"score":{"objective":"hit_502","name":"@s"},"color":"white","bold":true},{"text":" HIT","color":"gray","bold":"false"}]
title @a[tag=ticking_502] subtitle [{"text":"in ","color":"gray","bold":"false"},{"score":{"objective":"num_502","name":"#TOTAL"},"color":"gray","bold":"false"},{"text":" clays","color":"gray","bold":"false"}]
execute if entity @s[tag=!perfect_502] as @a[tag=ticking_502] at @s run playsound minecraft:entity.player.levelup player @s ^ ^ ^20 1 1 1
execute if entity @s[tag=perfect_502] as @a[tag=ticking_502] at @s run playsound minecraft:ui.toast.challenge_complete master @s ^ ^ ^20 0.75 1 0.75