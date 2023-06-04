#> ms_801:game/succeeded/root
# ゲームクリア時処理
# 最後に開けた羊が実行者/実行点
# @internal

clear @a[scores={playing_000=801}] shears{801:1b,801Super:1b}
bossbar set disp_801 color yellow
bossbar set time_801 color white
scoreboard players set $GameInfo General_801 3
scoreboard players set $Succeeded General_801 1
playsound entity.player.levelup master @a[scores={playing_000=801}] ~ ~ ~ 1 0.6 1
schedule function ms_801:game/succeeded/open 20t append