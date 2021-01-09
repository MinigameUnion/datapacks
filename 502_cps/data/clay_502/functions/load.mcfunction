scoreboard objectives add num_502 dummy {"text":"(502)数値"}
scoreboard objectives add hit_502 dummy {"text":"(502)ヒット回数"}
scoreboard objectives add match_id_502 dummy {"text":"(502)マッチID"}
scoreboard objectives add type_502 dummy {"text":"(502)ゲーム内容"}
scoreboard objectives add progress_502 dummy {"text":"(502)進行度"}
scoreboard objectives add tick_502 dummy {"text":"(502)tick"}
scoreboard objectives add count_502 dummy {"text":"(502)カウント"}
scoreboard objectives add set_502 dummy {"text":"(502)セット"}

#stat
scoreboard objectives add avg_hit_502 dummy {"text":"(502)平均ヒット数"}
scoreboard objectives add max_hit_502 dummy {"text":"(502)最高ヒット数"}
scoreboard objectives add total_hit_502 dummy {"text":"(502)総ヒット数"}
scoreboard objectives add total_shot_502 dummy {"text":"(502)総射撃数"}
scoreboard objectives add total_reload_502 dummy {"text":"(502)総リロード数"}


scoreboard players set #Rotation[1]_min num_502 -900
scoreboard players set #COUNT_OPTION num_502 5
scoreboard players set #SET_OPTION num_502 3
scoreboard players set #SECOND_OPTION num_502 2
scoreboard players set #SECOND_RANDOM num_502 2
scoreboard players set #START_POS[0] num_502 4832
scoreboard players set #START_POS[2] num_502 2000
scoreboard players set #SPACE[0] num_502 0
scoreboard players set #SPACE[2] num_502 64
scoreboard players set #HIT_min num_502 1

scoreboard players set #COIN_max num_502 150
scoreboard players set #COIN_min num_502 10
scoreboard players set #PERFECT_BONUS num_502 50

team add collision_502
team modify collision_502 collisionRule never
team add player_502
team modify player_502 friendlyFire false

execute store result score #SUCCESS num_502 if block 4992 0 2000 shulker_box
execute store result score #FAILED num_502 unless block 4992 0 2000 shulker_box
execute if score #SUCCESS num_502 matches 0 if score #FAILED num_502 matches 0 run forceload add 4992 2000
execute if score #SUCCESS num_502 matches 0 if score #FAILED num_502 matches 0 run forceload remove 4992 2000

execute if score #SUCCESS num_502 matches 0 positioned 4992 0 2000 run function clay_502:structure/lobby
execute if score #SUCCESS num_502 matches 0 run setblock 4992 0 2000 shulker_box{Lock:"?",CustomName:'{"text":"clay_502"}'}
execute if score #SUCCESS num_502 matches 0 run function clay_502:hologram/sandbag
execute if score #SUCCESS num_502 matches 0 run function clay_502:hologram/start
summon armor_stand 4992.0 0.0 2000.0 {Tags:["clay_502","admin_502"],Invulnerable:1b,Marker:1b,Invisible:1b,Small:1b,UUID:[I;502,0,0,0]}
#1f6-0-0-0-0

execute unless data storage clay_502:storage match run data merge storage clay_502:storage {match:{default:{Slot:-1b,id:"minecraft:stone",Count:1b},playing:[],list:[{Slot:1b,id:"minecraft:stone",Count:1b},{Slot:2b,id:"minecraft:stone",Count:1b},{Slot:3b,id:"minecraft:stone",Count:1b},{Slot:4b,id:"minecraft:stone",Count:1b},{Slot:5b,id:"minecraft:stone",Count:1b},{Slot:6b,id:"minecraft:stone",Count:1b},{Slot:7b,id:"minecraft:stone",Count:1b},{Slot:8b,id:"minecraft:stone",Count:1b},{Slot:9b,id:"minecraft:stone",Count:1b},{Slot:10b,id:"minecraft:stone",Count:1b}]}}
data merge storage clay_502:storage {lobby:{admin:{Pos:[4992.0d,0.0d,2000.0d],Rotation:[0.0f,0.0f]}}}
data merge storage clay_502:storage {lobby:{spawn:{Pos:[5002.5d,1.9375d,2032.5d],Rotation:[-90.0f,0.0f]}}}
data merge storage clay_502:storage {lobby:{return:{Pos:[5020.5d,0.9375d,2033.0d],Rotation:[90.0f,0.0f]}}}