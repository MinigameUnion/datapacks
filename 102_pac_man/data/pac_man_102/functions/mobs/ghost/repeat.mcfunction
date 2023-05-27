#ゴースト 常時実行

#info
# as,at :@s
# repeat

#ステータス
    #巣にいるとき
    execute if score @s _State_102 matches 0 run function pac_man_102:mobs/ghost/state/in_nest
    #巣から出るとき
    execute if score @s _State_102 matches 1 run function pac_man_102:mobs/ghost/state/leave_nest
    #通常状態
    execute if score @s _State_102 matches 2 run function pac_man_102:mobs/ghost/state/active
    #イジケ状態
    execute if score @s _State_102 matches 3 run function pac_man_102:mobs/ghost/state/izike
    #巣に戻る
    execute if score @s _State_102 matches 4 run function pac_man_102:mobs/ghost/state/dead


#モデルアニメーション
execute as @s at @s run function pac_man_102:mobs/ghost/model

#移動
execute at @s if score @s _State_102 matches 2..4 if score #stop_102 _Timer_102 matches 0 run function pac_man_102:mobs/general/move