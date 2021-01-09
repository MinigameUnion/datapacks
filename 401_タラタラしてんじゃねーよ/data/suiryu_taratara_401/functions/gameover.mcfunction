execute positioned 4000 50 100 run kill @e[type=minecraft:experience_orb,distance=..100]
execute positioned 4000 50 100 run kill @e[type=trident,distance=..100]

clear @a[scores={playing_000=401}]
schedule clear suiryu_taratara_401:flame_flower
schedule clear suiryu_taratara_401:phantom

execute as @a[scores={tara_score1_401=1}] run function suiryu_taratara_401:select_trident0
execute as @a[scores={tara_score1_401=1}] run function suiryu_taratara_401:select_crossbow0



#スコア
execute unless score #taratara_highest_score_401 tara_score1_401 matches 0.. run scoreboard players set #taratara_highest_score_401 tara_score1_401 0

scoreboard players operation #taratara_gaming_score_401 tara_score1_401 *= #taratara_score_up_401 tara_score1_401
execute if score #taratara_gaming_score_401 tara_score1_401 matches 1.. run scoreboard players operation #taratara_gaming_score_401 tara_score1_401 /= #100_401 tara_score1_401
execute if score #taratara_gaming_score_401 tara_score1_401 matches ..-1 run scoreboard players set #taratara_gaming_score_401 tara_score1_401 999999999
execute if score #taratara_gaming_score_401 tara_score1_401 matches 1000000000.. run scoreboard players set #taratara_gaming_score_401 tara_score1_401 999999999

title @a[scores={playing_000=401}] times 5 100 5
title @a[scores={playing_000=401}] title {"text":"タラタラしてんじゃねーよ！","color":"dark_red","bold":true}
execute unless score #taratara_highest_score_401 tara_score1_401 < #taratara_gaming_score_401 tara_score1_401 run title @a[scores={playing_000=401}] subtitle [{"text":"SCORE ","color":"green","bold":true,"italic":false},{"score":{"name":"#taratara_gaming_score_401","objective":"tara_score1_401"},"color":"gold","italic":false}]
execute if score #taratara_highest_score_401 tara_score1_401 < #taratara_gaming_score_401 tara_score1_401 run title @a[scores={playing_000=401}] subtitle [{"text":"HIGHEST SCORE ","color":"yellow","bold":true,"italic":false},{"score":{"name":"#taratara_gaming_score_401","objective":"tara_score1_401"},"color":"gold","italic":false}]
title @a[scores={playing_000=401}] actionbar {"text":""}
execute if score #taratara_highest_score_401 tara_score1_401 < #taratara_gaming_score_401 tara_score1_401 run setblock 4000 51 -5 air
execute if score #taratara_highest_score_401 tara_score1_401 < #taratara_gaming_score_401 tara_score1_401 run setblock 4000 51 -5 minecraft:oak_wall_sign[facing=south]{Text1: '{"text":"最高スコア","color":"green","bold":true,"italic":false}', Text2: '{"text":"==========","color":"green","bold":true,"italic":false}', Text3: '{"selector":"@a[scores={tara_score1_401=1}]","color":"aqua","bold":true,"italic":false}', Text4: '{"score":{"name":"#taratara_gaming_score_401","objective":"tara_score1_401"},"color":"gold","bold":true,"italic":false}'} replace
execute if score #taratara_highest_score_401 tara_score1_401 < #taratara_gaming_score_401 tara_score1_401 store result storage temp_000:loading game.401.high_score.score int 1 run scoreboard players operation #taratara_highest_score_401 tara_score1_401 = #taratara_gaming_score_401 tara_score1_401

execute as @a[scores={tara_score1_401=1}] if score @s tara_hscore_401 < #taratara_gaming_score_401 tara_score1_401 run scoreboard players operation @s tara_hscore_401 = #taratara_gaming_score_401 tara_score1_401
execute as @a[scores={tara_score1_401=1}] run scoreboard players operation #ID num_000 = @s id_000
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_000 store result entity @s Item.tag.401.high_score int 1 run scoreboard players get @a[scores={tara_score1_401=1},limit=1] tara_hscore_401
tellraw @a[scores={tara_score1_401=1}] {"text":"-------------------","color":"green"}
tellraw @a[scores={tara_score1_401=1}] ["",{"text":"SCORE ","color":"yellow"},{"score":{"name":"#taratara_gaming_score_401","objective":"tara_score1_401"},"color":"gold","italic":false}]
tellraw @a ["",{"text":"("},{"text":"HIGH SCORE"},{"text":" "},{"score":{"name":"@a[scores={tara_score1_401=1},limit=1]","objective":"tara_hscore_401"},"italic":false},{"text":")"}]

#ミニ加算
scoreboard players operation #taratara_gaming_score_401 tara_score1_401 /= #6000_401 tara_score1_401
execute if score #taratara_select_trident_401 tara_score1_401 matches 12 run scoreboard players operation #taratara_gaming_score_401 tara_score1_401 += #taratara_gaming_score_401 tara_score1_401
execute if score #taratara_start_bonus_mini_401 tara_score1_401 matches 1 run scoreboard players operation #taratara_gaming_score_401 tara_score1_401 += #taratara_gaming_score_401 tara_score1_401
scoreboard players operation @a[scores={tara_score1_401=1}] add_coin_000 = #taratara_gaming_score_401 tara_score1_401

schedule function suiryu_taratara_401:gameover0 1t
bossbar set minecraft:taratara_fever_401 visible false

#帰還
tp @a[scores={playing_000=401}] 3999 50 4 180 0
gamemode adventure @a[scores={playing_000=401}]
scoreboard players set #taratara_gaming_time_401 tara_score1_401 0
scoreboard players set #taratara_gaming_score_401 tara_score1_401 0
scoreboard players set #playing_taratara_401 tara_score1_401 0
scoreboard players set @a tara_score1_401 0
scoreboard players set @a tara_score2_401 0
scoreboard players set #taratara_gameover_401 tara_score1_401 0
scoreboard players set #taratara_fall_cod_401 tara_score1_401 0

#ボーナス効果
scoreboard players set #taratara_start_bonus_kill_count_401 tara_score1_401 0
scoreboard players set #taratara_start_bonus_score_401 tara_score1_401 0
scoreboard players set #taratara_start_bonus_air_401 tara_score1_401 0
scoreboard players set #taratara_start_bonus_fever_401 tara_score1_401 0
scoreboard players set #taratara_start_bonus_mini_401 tara_score1_401 0
scoreboard players set #taratara_start_bonus_pticket_401 tara_score1_401 0
data modify block 3991 51 6 Text4 set value '{"text":"OFF","color":"dark_gray","italic":false}'
data modify block 3991 51 5 Text4 set value '{"text":"OFF","color":"dark_gray","italic":false}'
data modify block 3991 51 4 Text4 set value '{"text":"OFF","color":"dark_gray","italic":false}'
data modify block 3991 51 3 Text4 set value '{"text":"OFF","color":"dark_gray","italic":false}'
data modify block 3991 51 2 Text4 set value '{"text":"OFF","color":"dark_gray","italic":false}'
data modify block 3991 51 0 Text4 set value '{"text":"OFF","color":"dark_gray","italic":false}'
data modify block 3991 51 6 Text2 set value '{"text":"500ミニ","color":"yellow","italic":false}'
data modify block 3991 51 5 Text2 set value '{"text":"500ミニ","color":"yellow","italic":false}'
data modify block 3991 51 4 Text2 set value '{"text":"500ミニ","color":"yellow","italic":false}'
data modify block 3991 51 3 Text2 set value '{"text":"500ミニ","color":"yellow","italic":false}'
data modify block 3991 51 2 Text2 set value '{"text":"500ミニ","color":"yellow","italic":false}'

execute positioned 4000 50 100 run kill @e[type=squid,distance=..100]

data modify storage temp_000:loading game.401.high_score.Text3 set from block 4000 51 -5 Text3
data modify storage temp_000:loading game.401.high_score.Text4 set from block 4000 51 -5 Text4
