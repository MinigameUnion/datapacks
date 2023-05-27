execute unless score $602 a_602 matches 2.. run function ats_602:a/n
execute as @a[tag=in_602] run function ats_602:p/lobby
execute if score $602 a_602 matches 3.. run function ats_602:game_play

execute if data storage ats_602:error Trigger run function ats_602:error/main
