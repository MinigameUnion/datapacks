execute as @e[tag=ticking_502,tag=sign_502,tag=leave_match_502,tag=!disabled_502] at @s run data modify block ~ ~ ~ {} merge from storage clay_502:storage sign.leave.enabled
execute as @e[tag=ticking_502,tag=sign_502,tag=leave_match_502,tag=disabled_502] at @s run data modify block ~ ~ ~ {} merge from storage clay_502:storage sign.leave.disabled