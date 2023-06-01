execute as @e[limit=1,tag=stop_602,distance=..5] run function ats_602:unit/type/llama/2
scoreboard players set @s z1_602 1
particle minecraft:sneeze ~ ~ ~ 4.0 4.0 4.0 0.0 20
function ats_602:unit/am/llama