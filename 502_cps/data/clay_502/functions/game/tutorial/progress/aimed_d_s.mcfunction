execute as @a[tag=ticking_502] at @s run playsound minecraft:entity.experience_orb.pickup neutral @s ~ ~ ~ 1 1 1
tellraw @a[tag=ticking_502] [{"text":"[Tutorial] ","color":"gold"},{"text": " 実際にクレーを撃ってみましょう (0/5)","color":"gray","underlined": "false"}]
tellraw @a[tag=ticking_502] [{"text":"[Tutorial] ","color":"gold"},{"text": " クレーの動く少し先を狙うと当てやすいかもしれません","color":"gray","underlined": "false"}]
tellraw @a[tag=ticking_502] [{"text":"[Tutorial] ","color":"gold"},{"text": " 表示の都合上、描画距離は ","color":"gray","underlined": "false"},{"text":"16 チャンク","color":"red","underlined": true},{"text": " 以上に設定してください","color":"gray"}]
tellraw @a[tag=ticking_502] [{"text":"[Tutorial] ","color":"gold"},{"text": " それより短い場合クレーが表示されないことがあります","color":"gray","underlined": "false"}]
scoreboard players set @a[tag=ticking_502] hit_502 0
scoreboard players set @s tick_502 80
scoreboard players set @s progress_502 4