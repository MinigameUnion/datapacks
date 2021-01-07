#ステージクリア 常時実行

#info
# as,at:player(score{Game_102=16})
# repeat

#タイマー進行
scoreboard players remove @s _Timer_102 1

#次のステージへ進行
    #値の設定
    execute if score @s _Timer_102 matches ..0 run data remove storage pac_man_102 Patterns[0]
    #初期設定
        #ステージに移行
        execute if score @s _Timer_102 matches ..0 unless data storage pac_man_102 Patterns[0].cm run function pac_man_102:game/inactive/stage_start/init
        #cmに移行
        execute if score @s _Timer_102 matches ..0 if data storage pac_man_102 Patterns[0].cm run function pac_man_102:game/inactive/cm/init

#演出
execute if score @s _Timer_102 matches 40 run kill @e[tag=Ghost_102]
execute if score @s _Timer_102 matches 40 run fill 984 92 987 1014 92 1014 minecraft:white_stained_glass_pane replace minecraft:blue_stained_glass_pane

execute if score @s _Timer_102 matches 35 run fill 984 92 987 1014 92 1014 minecraft:blue_stained_glass_pane replace minecraft:white_stained_glass_pane

execute if score @s _Timer_102 matches 30 run fill 984 92 987 1014 92 1014 minecraft:white_stained_glass_pane replace minecraft:blue_stained_glass_pane

execute if score @s _Timer_102 matches 25 run fill 984 92 987 1014 92 1014 minecraft:blue_stained_glass_pane replace minecraft:white_stained_glass_pane

execute if score @s _Timer_102 matches 20 run fill 984 92 987 1014 92 1014 minecraft:white_stained_glass_pane replace minecraft:blue_stained_glass_pane

execute if score @s _Timer_102 matches 15 run fill 984 92 987 1014 92 1014 minecraft:blue_stained_glass_pane replace minecraft:white_stained_glass_pane

execute if score @s _Timer_102 matches 10 run fill 984 92 987 1014 92 1014 minecraft:white_stained_glass_pane replace minecraft:blue_stained_glass_pane

execute if score @s _Timer_102 matches 5 run fill 984 92 987 1014 92 1014 minecraft:blue_stained_glass_pane replace minecraft:white_stained_glass_pane

#プレイヤーの固定
function pac_man_102:mobs/player/pos