scoreboard players reset @s tick_502

execute if score @s progress_502 matches 7 run tag @s add delete_502
execute if score @s progress_502 matches 6 run tellraw @a[tag=ticking_502] ["",{"text": "✓ ","color":"green","bold": true},{"text": "クレー射撃 チュートリアル","color":"white","underlined": false}]
execute if score @s progress_502 matches 6 run scoreboard players set @s tick_502 60
execute if score @s progress_502 matches 6 run scoreboard players set @s progress_502 7
execute if score @s progress_502 matches 5 run function clay_502:game/tutorial/finish
execute if score @s progress_502 matches 4 unless score @s tick_502 matches 0.. run function clay_502:game/tutorial/shot