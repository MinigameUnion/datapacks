#巣のなかにいる

#info
# as,at:@e[tag=Ghost_102](scores={_State_102=1})
#repeat

#上下に移動
    #上
    execute if score @s _Direction_102 matches 3 unless block ~0.51 ~ ~ #pac_man_102:stage run tp @s ~0.2 ~ ~
    execute if block ~0.51 ~ ~ #pac_man_102:stage run scoreboard players set @s _Direction_102 1
    #下
    execute if score @s _Direction_102 matches 1 unless block ~-0.51 ~ ~ #pac_man_102:stage run tp @s ~-0.2 ~ ~
    execute if block ~-0.51 ~ ~ #pac_man_102:stage run scoreboard players set @s _Direction_102 3

#巣からでる条件を満たしたとき
scoreboard players remove @s _Timer_102 1
execute if score @s _Timer_102 matches 0 run scoreboard players set @s _State_102 1
execute if score @s _Count_102 matches 0 run scoreboard players set @s _State_102 1

#モデル適応
    #体
    data modify entity @s ArmorItems[3] set from entity @s ArmorItems[0]