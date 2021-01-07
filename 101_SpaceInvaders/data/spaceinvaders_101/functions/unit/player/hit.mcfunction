###
###プレイヤーの被弾
###

##弾の処理
tag @s add hitted_101

##スコア処理
execute unless entity @e[tag=Player_damaged_101,scores={Group_101=1}] run scoreboard players remove @a[scores={Group_101=1,playing_000=101}] HP_101 1

##ダメージ演出のフラグ付与
execute unless entity @e[tag=Player_damaged_101,scores={Group_101=1}] run scoreboard players set @e[tag=Player_101,scores={Group_101=1}] Timer_101 -1
execute unless entity @e[tag=Player_damaged_101,scores={Group_101=1}] run tag @e[tag=Player_101,scores={Group_101=1}] add Player_damaged_101

##スロット用の表示設定
execute if score @a[scores={Group_101=1,playing_000=101},limit=1] HP_101 matches 2 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 991 65 -64 995 65 -64 ~-2 ~-3 ~
execute if score @a[scores={Group_101=1,playing_000=101},limit=1] HP_101 matches 2 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 991 65 -65 995 65 -65 ~-2 ~-4 ~
execute if score @a[scores={Group_101=1,playing_000=101},limit=1] HP_101 matches 1 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 991 65 -65 995 65 -65 ~-2 ~-3 ~
execute if score @a[scores={Group_101=1,playing_000=101},limit=1] HP_101 matches 1 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 991 65 -66 995 65 -66 ~-2 ~-4 ~
execute if score @a[scores={Group_101=1,playing_000=101},limit=1] HP_101 matches 0 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 991 65 -66 995 65 -67 ~-2 ~-3 ~
execute if score @a[scores={Group_101=1,playing_000=101},limit=1] HP_101 matches 0 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 991 65 -67 995 65 -67 ~-2 ~-4 ~