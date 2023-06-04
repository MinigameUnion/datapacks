function ats_602:bossbar/timer_main
execute as @a[tag=in_602] run function ats_602:p/lobby

execute if score $602 a_602 matches 1 run function ats_602:system/state_1_main
execute if score $602 a_602 matches 3.. run function ats_602:system/state_3-5_main

execute if data storage ats_602:error Trigger run function ats_602:error/main
