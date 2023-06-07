scoreboard players set @s progress_502 6
title @a[tag=ticking_502] reset
title @a[tag=ticking_502] times 10 60 10
title @a[tag=ticking_502] title [{"text":"FINISH"}]
execute as @a[tag=ticking_502] at @s run playsound minecraft:entity.firework_rocket.blast neutral @s ^ ^ ^20 1 1 1
scoreboard players set @s tick_502 80