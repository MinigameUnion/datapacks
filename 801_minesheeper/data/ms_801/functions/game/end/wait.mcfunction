#> ms_801:game/end/wait
# ゲームクリア/ゲームオーバー後の終了待ち開始処理
# @internal

# 通貨計算・付与
function ms_801:game/coin/root

# 記録処理
execute if score $Succeeded General_801 matches 1 run function ms_801:game/record/root
tag @a[tag=MVP_801] remove MVP_801

# 終了待機
scoreboard players set $GameInfo General_801 -1

# 終了強調
data merge entity 0-0-321-ffff-ffff00000000 {Glowing:1b}

# 後処理
scoreboard players reset $Tmp General_801
scoreboard players reset $Tmp2 General_801
scoreboard players reset $Tmp3 General_801