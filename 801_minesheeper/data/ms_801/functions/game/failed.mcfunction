#地雷が埋まっていた羊が実行者/実行点
bossbar set disp_801 color red
bossbar set time_801 color white
scoreboard players set $GameInfo General_801 3
scoreboard players set $Succeeded General_801 0
function ms_801:game/failed_open_effect
schedule function ms_801:game/failed_open 20t append