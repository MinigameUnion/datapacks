execute as @a[tag=ticking_502] at @s run playsound minecraft:entity.experience_orb.pickup neutral @s ~ ~ ~ 1 1 1
tellraw @a[tag=ticking_502] [{"text":"[Tutorial] ","color":"gold"},{"text": " 実際にクレーを撃ってみましょう (0/3)","color":"gray","underlined": false}]
tellraw @a[tag=ticking_502] [{"text":"[Tutorial] ","color":"gold"},{"text": " クレーの動く少し先を狙うと当てやすいかもしれません","color":"gray","underlined": false}]
tellraw @a[tag=ticking_502] [{"text":"[Tutorial] ","color":"gold"},{"text": " 描画距離を 飛んで行った","color":"gray","underlined": false},{"text":"ダイヤモンド","color":"aqua"},{"text": " が見えるように設定してください","color":"gray"}]
tellraw @a[tag=ticking_502] [{"text":"[Tutorial] ","color":"gold"},{"text": " それより短い場合クレーが表示されないことがあります","color":"gray","underlined": false}]
execute align xyz positioned ~10 ~3 ~16 run summon item ~ ~ ~ {Tags:["distance_check_502"],Item:{id:"minecraft:diamond",Count:1b,tag:{CustomModelData:5000}},Invulnerable:1b,NoGravity:1b,Glowing:0b,Motion:[0.5d,0.1875d,0.0d]}
execute align xyz positioned ~10 ~3 ~16 run scoreboard players operation @e[type=item,tag=distance_check_502,distance=..0.5] match_id_502 = #ADMIN match_id_502
scoreboard players set @a[tag=ticking_502] hit_502 0
scoreboard players set @s tick_502 80
scoreboard players set @s progress_502 4