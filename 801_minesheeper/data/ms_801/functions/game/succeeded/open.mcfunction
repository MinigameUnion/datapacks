#> ms_801:game/succeeded/open
# クリア時地雷オープン処理
# @internal

scoreboard players set #RANGE num_000 3
function tool_000:random
execute if score #RANDOM num_000 matches 0 as @a[scores={playing_000=801}] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.79 1
execute if score #RANDOM num_000 matches 1 as @a[scores={playing_000=801}] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.00 1
execute if score #RANDOM num_000 matches 2 as @a[scores={playing_000=801}] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1.26 1

execute as @e[type=sheep,tag=Board_801,tag=!Opened_801,scores={Count_801=-1},limit=1,sort=random] at @s run function ms_801:game/succeeded/open_effect
execute if score $Mine General_801 matches 40.. as @e[type=sheep,tag=Board_801,tag=!Opened_801,scores={Count_801=-1},limit=1,sort=random] at @s run function ms_801:game/succeeded/open_effect
execute if score $Mine General_801 matches 80.. as @e[type=sheep,tag=Board_801,tag=!Opened_801,scores={Count_801=-1},limit=1,sort=random] at @s run function ms_801:game/succeeded/open_effect
execute if entity @e[type=sheep,tag=Board_801,tag=!Opened_801,scores={Count_801=-1}] run schedule function ms_801:game/succeeded/open 3t append
execute unless entity @e[type=sheep,tag=Board_801,tag=!Opened_801,scores={Count_801=-1}] run schedule function ms_801:game/end/wait 20t append