#> ms_801:game/failed/root
# ゲームオーバー時処理
# 地雷が埋まっていた羊が実行者/実行点
# @internal

bossbar set disp_801 color red
bossbar set time_801 color white
scoreboard players set $GameInfo General_801 3
scoreboard players set $Succeeded General_801 0
function ms_801:game/failed/open_effect
schedule function ms_801:game/failed/open 20t append