function ats_602:system/state_3/turn/0_0
execute unless entity @a[tag=join_game_602] run function ats_602:exitr
execute if score $pid_mismatch_602 a_602 matches 40.. run function ats_602:error/system/pid_mismatch
scoreboard players reset $pid_mismatch_602 a_602