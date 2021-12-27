execute unless score $IsWide General_801 matches 1 at @e[type=sheep,tag=Board_801,tag=BoardTp_801] run tag @e[type=sheep,tag=Board_801,tag=!BoardTp_801,distance=1..1.6] add BoardTpNext_801
execute if score $IsWide General_801 matches 1 at @e[type=sheep,tag=Board_801,tag=BoardTp_801] run tag @e[type=sheep,tag=Board_801,tag=!BoardTp_801,distance=1..3.2] add BoardTpNext_801
execute as @e[type=sheep,tag=Board_801,tag=BoardTp_801] at @s run tp @s ~ 10 ~
execute as @e[type=sheep,tag=Board_801,tag=BoardTp_801] at @s run data merge entity @s {NoAI:0b}
tag @e[type=sheep,tag=Board_801,tag=BoardTp_801] remove BoardTp_801
tag @e[type=sheep,tag=Board_801,tag=BoardTpNext_801] add BoardTp_801
tag @e[type=sheep,tag=Board_801,tag=BoardTpNext_801] remove BoardTpNext_801
execute if entity @e[type=sheep,tag=Board_801,tag=BoardTp_801] run schedule function ms_801:game/start_tp 2t append