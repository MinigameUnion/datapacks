tellraw @s ["",{"text": "✓ ","color":"green","bold": true},{"translate":"射撃 : %s","color":"white","with":[{"keybind": "key.use","color":"white","underlined": true}]}]
tellraw @s {"translate":"的を狙って撃ってみましょう (%s/%s)","color":"gray","with":["0","3"]}
tag @s add shot_502
scoreboard players set @s hit_502 0