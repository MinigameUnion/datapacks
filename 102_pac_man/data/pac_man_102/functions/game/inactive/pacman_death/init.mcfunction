#パックマンやられ演出 初期設定

#info
# as,at: player

#スコア設定
scoreboard players set @s _Game_102 15
scoreboard players set @s _Timer_102 80

#ゴーストの削除
kill @e[tag=Ghost_102]
# 残留思念の削除
    kill @e[tag=Point_Display_102,type=text_display]

#残機の減少
scoreboard players remove @s _HP_102 1