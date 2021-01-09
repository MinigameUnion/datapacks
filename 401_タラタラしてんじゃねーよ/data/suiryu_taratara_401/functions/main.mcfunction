#ゲームプレイ時間
scoreboard players add #taratara_gaming_time_401 tara_score1_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 281.. run function suiryu_taratara_401:bonus_item

#ゲームスタート
execute if score #taratara_gaming_time_401 tara_score1_401 matches 1..80 run function suiryu_taratara_401:start

#kill
execute as @e[tag=taratara_falling_401] if data entity @s {OnGround: 1b} run function suiryu_taratara_401:on_ground

#killed
execute as @e[type=item,sort=nearest,limit=1,nbt={Item: {tag: {taratara_cod_401: 1}}}] at @s run function suiryu_taratara_401:killed_cod
execute as @e[type=item,sort=nearest,limit=1,nbt={Item: {tag: {taratara_salmon_401: 1}}}] at @s run function suiryu_taratara_401:killed_salmon
execute as @e[type=item,sort=nearest,limit=1,nbt={Item: {tag: {taratara_tropical_fish_401: 1}}}] at @s run function suiryu_taratara_401:killed_tropical_fish
execute as @e[type=item,sort=nearest,limit=1,nbt={Item: {tag: {taratara_pufferfish_401: 1}}}] at @s run function suiryu_taratara_401:killed_pufferfish
execute as @e[type=item,sort=nearest,limit=1,nbt={Item: {tag: {taratara_squid_401: 1}}}] at @s run function suiryu_taratara_401:killed_squid

#イカ
execute as @a[scores={tara_score1_401=1}] positioned as @s if entity @e[type=squid,tag=taratara_squid_401,distance=..1.5] run effect give @s blindness 4 99

#スコア増加
execute if score #taratara_gaming_time_401 tara_score1_401 matches 80.. unless data entity @a[scores={tara_score1_401=1},limit=1] ActiveEffects[{Id: 19b}] run scoreboard players add #taratara_gaming_score_401 tara_score1_401 1
execute if score #taratara_gaming_time_401 tara_score1_401 matches 80.. if score #taratara_select_trident_401 tara_score1_401 matches 9 unless data entity @a[scores={tara_score1_401=1},limit=1] ActiveEffects[{Id: 19b}] run scoreboard players add #taratara_gaming_score_401 tara_score1_401 9

#スコア表示
execute if score #taratara_gaming_time_401 tara_score1_401 matches 80.. run title @a[scores={playing_000=401}] actionbar [{"text":"SCORE ","color":"green","bold":true,"italic":false},{"score":{"name":"#taratara_gaming_score_401","objective":"tara_score1_401"},"color":"gold","italic":false}]

#ゲームオーバー
execute if score #taratara_gaming_time_401 tara_score1_401 matches 80.. unless entity @e[type=cod,tag=taratara_cod_401] run function suiryu_taratara_401:gameover

#アイテム
execute as @a[scores={playing_000=401}] if data entity @s Inventory[].tag.taratara_bonus_item_401 run function suiryu_taratara_401:bonus

#観戦者
execute as @a[scores={tara_score1_401=0}] at @s unless entity @a[scores={tara_score1_401=1},distance=..100] run tp @s @a[scores={tara_score1_401=1},limit=1]

#FEVER
execute if score #taratara_fever_401 tara_score1_401 matches 1 run function suiryu_taratara_401:fever

#壁反射
execute as @e[type=cod,tag=taratara_cod_401] positioned as @s unless block ~1 ~ ~ air store result entity @s Motion[0] double -0.01 run data get entity @s Pos[1]
execute as @e[type=cod,tag=taratara_cod_401] positioned as @s unless block ~-1 ~ ~ air store result entity @s Motion[0] double 0.01 run data get entity @s Pos[1]
execute as @e[type=cod,tag=taratara_cod_401] positioned as @s unless block ~ ~ ~1 air store result entity @s Motion[2] double -0.01 run data get entity @s Pos[1]
execute as @e[type=cod,tag=taratara_cod_401] positioned as @s unless block ~ ~ ~-1 air store result entity @s Motion[2] double 0.01 run data get entity @s Pos[1]
