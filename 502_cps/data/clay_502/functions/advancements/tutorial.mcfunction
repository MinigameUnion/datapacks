tellraw @s ["",{"text":"[Standard] ","color":"blue"},{"text": "スタンダード","color":"white","underlined": true},{"text":"が","color":"gray","underlined": false},{"text":"解放されました","color":"white","underlined": false}]
tellraw @s ["",{"text":"[QuickShot] ","color":"yellow"},{"text": "クイックショット","color":"white","underlined": true},{"text":"が","color":"gray","underlined": false},{"text":"解放されました","color":"white","underlined": false}]
scoreboard players operation #ID num_502 = @s id_000
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] if score @s id_000 = #ID num_502 run data modify entity @s Item.tag.502.advancements.tutorial set value 1b
