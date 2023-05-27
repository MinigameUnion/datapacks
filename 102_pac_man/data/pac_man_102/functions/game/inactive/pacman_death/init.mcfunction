#パックマンやられ演出 初期設定

#info
# as,at: player

#スコア設定
scoreboard players set @s _Game_102 15
scoreboard players set @s _Timer_102 80

#ゴーストの削除
kill @e[tag=Ghost_102]

#残機の減少
scoreboard players remove @s _HP_102 1
#表示の変更
execute as @e[tag=PacMan_Health_102,type=item_display] if score @s _Operation_102 > @a[tag=Playing_102,limit=1] _HP_102 run data modify entity @s item set value {}
execute as @e[tag=PacMan_Health_102,type=item_display] if score @s _Operation_102 <= @a[tag=Playing_102,limit=1] _HP_102 run data modify entity @s item set value {id:"minecraft:yellow_concrete",Count:1b,tag:{CustomModelData:1003}}