#> clay_502:load
# @within
#   tag/function minecraft:load

#>
# @within
#   function clay_502:**
    #declare storage clay_502:storage
    #declare tag ticking_502
    #declare tag playing_502
    #declare tag spectating_502

scoreboard objectives add num_502 dummy [{"text":"(502)","color":"green"},{"text":"数値"}]
scoreboard objectives add hit_502 dummy [{"text":"(502)","color":"green"},{"text":"ヒット回数"}]
scoreboard objectives add point_502 dummy [{"text":"(502)","color":"green"},{"text":"暫定獲得ミニ"}]
scoreboard objectives add age_502 dummy [{"text":"(502)","color":"green"},{"text":"発射後経過時間"}]
scoreboard objectives add match_id_502 dummy [{"text":"(502)","color":"green"},{"text":"マッチID"}]
scoreboard objectives add type_502 dummy [{"text":"(502)","color":"green"},{"text":"ゲーム内容"}]
scoreboard objectives add progress_502 dummy [{"text":"(502)","color":"green"},{"text":"進行度"}]
scoreboard objectives add tick_502 dummy [{"text":"(502)","color":"green"},{"text":"tick"}]
scoreboard objectives add count_502 dummy [{"text":"(502)","color":"green"},{"text":"カウント"}]
scoreboard objectives add set_502 dummy [{"text":"(502)","color":"green"},{"text":"セット"}]

#stat
scoreboard objectives add avg_hit_502 dummy [{"text":"(502)","color":"green"},{"text":"平均ヒット数"}]
scoreboard objectives add max_hit_502 dummy [{"text":"(502)","color":"green"},{"text":"最高ヒット数"}]
scoreboard objectives add total_hit_502 dummy [{"text":"(502)","color":"green"},{"text":"総ヒット数"}]
scoreboard objectives add total_shot_502 dummy [{"text":"(502)","color":"green"},{"text":"総射撃数"}]
scoreboard objectives add total_reload_502 dummy [{"text":"(502)","color":"green"},{"text":"総リロード数"}]


scoreboard players set #Rotation[1]_min num_502 -900
scoreboard players set #default count_502 5
scoreboard players set #default set_502 3
scoreboard players set #quickshot count_502 6
scoreboard players set #quickshot set_502 3
scoreboard players set #SECOND_OPTION num_502 2
scoreboard players set #SECOND_RANDOM num_502 2
scoreboard players set #START_POS[0] num_502 4832
scoreboard players set #START_POS[2] num_502 2000
scoreboard players set #SPACE[0] num_502 0
scoreboard players set #SPACE[2] num_502 80
scoreboard players set #HIT_min num_502 1

#scoreboard players set #COIN_max num_502 150
scoreboard players set #COIN_min num_502 14
scoreboard players set #WIN_BONUS num_502 50
scoreboard players set #PERFECT_BONUS num_502 50

team add collision_502 [{"text":"(502)","color":"green"},{"text":"当たり判定無効化用"}]
team modify collision_502 collisionRule never
team add cps_player_502 [{"text":"(502)","color":"green"},{"text":"CPSプレイヤー"}]
team modify cps_player_502 friendlyFire false
#team modify cps_player_502 prefix [{"text":"[CPS] ","color": "gold"}]
team add cps_spectator_502 [{"text":"(502)","color":"green"},{"text":"CPS観戦者"}]
team modify cps_spectator_502 friendlyFire false
team modify cps_spectator_502 nametagVisibility hideForOtherTeams

execute store result score #SUCCESS num_502 if block 4992 0 2000 shulker_box
execute store result score #FAILED num_502 unless block 4992 0 2000 shulker_box
execute if score #SUCCESS num_502 matches 0 if score #FAILED num_502 matches 0 positioned 4992 0 2000 run forceload add ~ ~ ~48 ~48
execute if score #SUCCESS num_502 matches 0 if score #FAILED num_502 matches 0 positioned 4992 0 2000 if block 4992 0 2000 shulker_box run forceload remove ~ ~ ~48 ~48
execute if score #SUCCESS num_502 matches 0 unless block 4992 0 2000 shulker_box run schedule function clay_502:structure/schedule 1t
execute unless entity 0-0-1f6-0-0 run summon armor_stand 4992.0 0.0 2000.0 {UUID:[I; 0, 502, 0, 0],Tags:["clay_502","admin_502"],Invulnerable:1b,Marker:1b,Invisible:1b,Small:1b}
#0-0-1f6-0-0

execute unless data storage clay_502:storage match run data merge storage clay_502:storage {match:{default:{Slot:-1b,id:"minecraft:stone",Count:1b},playing:[],list:[{Slot:1b,id:"minecraft:stone",Count:1b},{Slot:2b,id:"minecraft:stone",Count:1b},{Slot:3b,id:"minecraft:stone",Count:1b},{Slot:4b,id:"minecraft:stone",Count:1b},{Slot:5b,id:"minecraft:stone",Count:1b},{Slot:6b,id:"minecraft:stone",Count:1b},{Slot:7b,id:"minecraft:stone",Count:1b},{Slot:8b,id:"minecraft:stone",Count:1b},{Slot:9b,id:"minecraft:stone",Count:1b},{Slot:10b,id:"minecraft:stone",Count:1b}]}}
data merge storage clay_502:storage {lobby:{admin:{Pos:[4992.0d,0.0d,2000.0d],Rotation:[0.0f,0.0f]}}}
data merge storage clay_502:storage {lobby:{spawn:{Pos:[5002.5d,1.9375d,2032.5d],Rotation:[-90.0f,0.0f]}}}
data merge storage clay_502:storage {lobby:{return:{Pos:[5020.5d,0.9375d,2033.0d],Rotation:[90.0f,0.0f]}}}

data merge storage clay_502:storage {sign:{delete:{Text2:'{"text":"強制終了","underlined":true,"clickEvent":{"action":"run_command","value":"/tag @s[tag=playing_502] add delete_match_502"}}',Text3:'[{"score":{"name":"#delete","objective":"num_502"}},{"text":" / "},{"score":{"name":"#","objective":"num_502"}}]',Text4:'[{"text":"< ","color":"dark_blue"},{"keybind":"key.use","color":"dark_blue"},{"text":" >","color":"dark_blue"}]'}}}
data merge storage clay_502:storage {sign:{leave:{enabled:{Text2:'{"text":"離脱する","clickEvent":{"action":"run_command","value":"/tag @s[tag=playing_502] add leave_match_502"}}',Text3:'[{"text":"< ","color":"dark_blue"},{"keybind":"key.use","color":"dark_blue"},{"text":" >","color":"dark_blue"}]'}}}}
data merge storage clay_502:storage {sign:{leave:{disabled:{Text2:'{"text":"離脱する"}',Text3:'[{"text":"< ","color":"dark_red"},{"keybind":"key.use","color":"dark_red","strikethrough":true},{"text":" >","color":"dark_red"}]'}}}}

data modify storage clay_502:storage match.games set value []
data modify storage clay_502:storage match.games append from storage clay_502:storage match.default
data modify storage clay_502:storage match.games[-1].name set value "tutorial"
data modify storage clay_502:storage match.games[-1].tag.type set value 0b
data modify storage clay_502:storage match.games[-1].tag.join set value -1b
data modify storage clay_502:storage match.games[-1].tag.spectate set value 0b
data modify storage clay_502:storage match.games[-1].tag.display.Name set value '{"text":"チュートリアル"}'
data modify storage clay_502:storage match.games[-1].tag.display.Lore set value ['チ','ュ','ー','ト','リ','ア','ル']

data modify storage clay_502:storage match.games append from storage clay_502:storage match.default
data modify storage clay_502:storage match.games[-1].name set value "default"
data modify storage clay_502:storage match.games[-1].tag.type set value 1b
data modify storage clay_502:storage match.games[-1].tag.join set value 0b
data modify storage clay_502:storage match.games[-1].tag.spectate set value 1b
data modify storage clay_502:storage match.games[-1].tag.display.Name set value '{"text":"スタンダード"}'
data modify storage clay_502:storage match.games[-1].tag.display.Lore set value ['ス','タ','ン','ダ','ー','ド']

data modify storage clay_502:storage match.games append from storage clay_502:storage match.default
data modify storage clay_502:storage match.games[-1].name set value "quickshot"
data modify storage clay_502:storage match.games[-1].tag.type set value 2b
data modify storage clay_502:storage match.games[-1].tag.join set value 2b
data modify storage clay_502:storage match.games[-1].tag.spectate set value 1b
data modify storage clay_502:storage match.games[-1].tag.display.Name set value '{"text":"クイックショット"}'
data modify storage clay_502:storage match.games[-1].tag.display.Lore set value ['ク','イ','ッ','ク','シ','ョ','ッ','ト']