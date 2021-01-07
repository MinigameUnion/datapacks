###
###ゲームに入室
###

##ステージポイントの設定
scoreboard players operation @e[tag=StagePoint_101,limit=1,sort=nearest] Id_101 = @s id_000
tag @e[tag=StagePoint_101,limit=1,sort=nearest] add Active_101

##id同期
scoreboard players operation #_id Id_101 = @s id_000
execute as @e[tag=Entity_101] store success score @s Group_101 if score @s Id_101 = #_id Id_101

##プレイヤーの移動
tp @s @e[tag=StagePoint_101,scores={Group_101=1},limit=1]

##スコアの設定
scoreboard players set @s Stage_101 0
scoreboard players set @s Progress_101 1
scoreboard players set @s Point_101 0
scoreboard players set @s Timer_101 -1
scoreboard players set @s Shot_101 0
scoreboard players set @s HP_101 3

##そのほか
give @s carrot_on_a_stick{display:{Name:"{\"text\":\"発射\"}"}} 1
effect give @s jump_boost 1000000 128 true
gamemode adventure @s