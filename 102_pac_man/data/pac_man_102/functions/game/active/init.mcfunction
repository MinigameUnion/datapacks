#ゲームプレイ中 初期設定

#info
# as,at:player

#ゲーム中へ移行
scoreboard players set @s _Game_102 20

#スコア設定
scoreboard players set @s _Input_102 2
scoreboard players set #player _Input_102 2
scoreboard players set @e[tag=PacMan_102,type=item_display] _Direction_102 2

execute store result score #spurt_C1_102 _Count_102 run data get storage pac_man_102 Patterns[0].Spurt[0]
execute store result score #spurt_2_102 _Count_102 run data get storage pac_man_102 Patterns[0].Spurt[1]

execute store result score #attack_pattern_102 _Timer_102 run data get storage pac_man_102 Patterns[0].Attack[0]
scoreboard players set #attack_pattern_102 _State_102 1

scoreboard players set #reversal_102 _Timer_102 0

scoreboard players set #stop_102 _Timer_102 0
scoreboard players set #ghost_sound_102 _Operation_102 1