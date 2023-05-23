###
###ステージクリア演出
###

##タイマー進行
scoreboard players add @s[scores={Timer_101=-1..60}] Timer_101 1
##id同期
scoreboard players operation #_id Id_101 = @s id_000
execute as @e[tag=Entity_101,type=#spaceinvaders_101:all] store success score @s Group_101 if score @s Id_101 = #_id Id_101

##移行
execute if score @s Timer_101 matches 60 run function spaceinvaders_101:game/next

##サウンド演出
execute if score @s Timer_101 matches 0 run playsound entity.player.levelup voice @a ~ ~ ~ 2 1.7