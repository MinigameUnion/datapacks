execute unless score $602 gamemode_602 matches 1 run function ats_602:unit/hit/score

say 怒
function ats_602:unit/rot/rand

tag @s remove c_execute_602
execute as @e[limit=1,tag=c_execute_602] run function ats_602:unit/main