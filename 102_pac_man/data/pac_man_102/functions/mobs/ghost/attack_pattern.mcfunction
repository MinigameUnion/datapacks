#攻撃/待機モードの切り替え

#info
# as,at : player

#タイマーのリセット
data remove storage pac_man_102 Patterns[0].Attack[0]
execute store result score #attack_pattern_102 _Timer_102 run data get storage pac_man_102 Patterns[0].Attack[0]

#スコアの切り替え
scoreboard players add #attack_pattern_102 _State_102 1
execute if score #attack_pattern_102 _State_102 matches 3 run scoreboard players set #attack_pattern_102 _State_102 1

#ゴーストの視点切り替え
    #スパートではないとき
    execute if score #spurt_102 _State_102 matches 0 as @e[tag=Ghost_base_102,type=item_display] run function pac_man_102:mobs/ghost/turn/back
    #スパートしているとき アカベエは反転しない
    execute if score #spurt_102 _State_102 matches 1.. as @e[tag=Ghost_base_102,type=item_display] unless entity @s[tag=Blinky_102] run function pac_man_102:mobs/ghost/turn/back

#目的地の切り替え
execute unless score #spurt_102 _State_102 matches 1.. if score #attack_pattern_102 _State_102 matches 1 run tp @e[tag=Blinky_point_102] 1019 92 1010
execute if score #attack_pattern_102 _State_102 matches 1 run tp @e[tag=Pinky_point_102] 1019 92 990
execute if score #attack_pattern_102 _State_102 matches 1 run tp @e[tag=Inky_point_102] 979 92 1011
execute if score #attack_pattern_102 _State_102 matches 1 run tp @e[tag=Clyde_point_102] 979 92 990