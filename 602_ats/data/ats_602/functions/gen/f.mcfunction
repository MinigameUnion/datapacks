title @a[team=602] times 10 30 10
title @a[team=602] title {"text":"GAME START!","bold":true,"color":"gold"}
execute as @a[team=602] positioned as @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1.0 0.5 0.0
execute as @a[team=602] positioned as @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1.0 0.75 0.0
scoreboard players set $602 a_602 3
scoreboard players set $602 pId_602 0
scoreboard players reset $gen602 a_602
execute unless score $602 gamemode_602 matches 1 run function ats_602:set/e

schedule function ats_602:m/s 10t append
