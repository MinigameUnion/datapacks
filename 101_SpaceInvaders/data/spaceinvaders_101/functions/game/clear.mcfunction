###
###ステージクリア演出移行
###

##id同期
scoreboard players operation #_id Id_101 = @s id_000
execute as @e[tag=Entity_101] store success score @s Group_101 if score @s Id_101 = #_id Id_101

##スコアの設定
scoreboard players set @s Progress_101 4
scoreboard players set @s Timer_101 -1