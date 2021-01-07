#CM 初期設定

#info
# as,at: player

#スコア設定
scoreboard players set @s _Game_102 18
scoreboard players set @s _Timer_102 40

#CMをスキップ (CMは次期アプデで実装)
data remove storage pac_man_102 Patterns[0]
function pac_man_102:game/inactive/stage_start/init