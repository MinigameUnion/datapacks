#巣から出る

#info
# as,at: @e[tag=Ghost_base_102,scores={_State_102=1}]
#repeat

#巣の中央に移動
    #右
    scoreboard players set @s[x=999.0,y=91.0,z=998.0,dx=3,dy=2,dz=2.5] _Direction_102 4
    execute if score @s _Direction_102 matches 4 if entity @s[tag=Inky_102] run tp ~ ~ ~0.2
    #左
    scoreboard players set @s[x=999.0,y=91.0,z=1001.5,dx=3,dy=2,dz=2.5] _Direction_102 2
    execute if score @s _Direction_102 matches 2 if entity @s[tag=Clyde_102] run tp ~ ~ ~-0.2
    #真ん中に来た時
    execute unless score @s _Direction_102 matches 3 if entity @s[x=999.0,y=91.0,z=1000.5,dx=3,dy=2,dz=0] run tp @s ~ ~ 1001.0
    execute unless score @s _Direction_102 matches 3 if entity @s[x=999.0,y=91.0,z=1000.5,dx=3,dy=2,dz=0] run scoreboard players set @s _Direction_102 3

#巣から出る
    #上
    execute if score @s _Direction_102 matches 3 run tp @s ~0.2 ~ ~
    execute if score @s _Direction_102 matches 3 if block ~0.51 ~ ~ minecraft:blue_stained_glass_pane align xz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~
    execute if score @s _Direction_102 matches 3 if block ~0.51 ~ ~ minecraft:blue_stained_glass_pane run scoreboard players set @s _State_102 2
    execute if score @s _Direction_102 matches 3 if block ~0.51 ~ ~ minecraft:blue_stained_glass_pane run scoreboard players set @s _Direction_102 2

#モデル適応
    #体
    data modify entity @s ArmorItems[3] set from entity @s ArmorItems[0]