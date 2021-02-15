tellraw @s ["",{"text":"・ヒット数 : ","color":"gray"},{"score":{"objective": "hit_502","name": "@s"},"color":"white"}]

execute store result score #MS num_502 store result score #SECONDS num_502 run scoreboard players operation @s age_502 /= @s hit_502
scoreboard players operation #SECONDS num_502 /= #20 num_000
scoreboard players operation #MS num_502 %= #20 num_000
execute store result score #100MS num_502 store result score #10MS num_502 run scoreboard players operation #MS num_502 *= #5 num_000
scoreboard players operation #100MS num_502 /= #10 num_000
scoreboard players operation #10MS num_502 %= #10 num_000
tellraw @s ["",{"text":"・ヒットまでの平均時間 : ","color":"gray"},{"score":{"objective": "num_502","name": "#SECONDS"},"color":"white"},{"text":".","color":"white"},{"score":{"objective": "num_502","name": "#100MS"},"color":"white"},{"score":{"objective": "num_502","name": "#10MS"},"color":"white"},{"text":"s","color":"white"}]

tellraw @s ["",{"text":"↳ ","color":"gray"},{"score":{"objective": "point_502","name": "@s"},"color":"white"},{"text":"ミニ","color":"white"}]

execute if score @s hit_502 >= #PERFECT num_502 run tellraw @s ["",{"text":"・パーフェクト : ","color":"gray"},{"score":{"objective": "num_502","name": "#PERFECT_BONUS"},"color":"white"},{"text":"ミニ","color":"white"}]
execute if score @s hit_502 >= #PERFECT num_502 run scoreboard players operation @s point_502 += #PERFECT_BONUS num_502

scoreboard players operation @s add_coin_000 = @s point_502
function player_000:add_coin