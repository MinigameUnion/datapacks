#最後に開けた羊が実行者/実行点
bossbar set disp_801 color yellow
bossbar set time_801 color white
scoreboard players set $GameInfo General_801 3
scoreboard players set $Succeeded General_801 1
playsound entity.player.levelup master @a[scores={playing_000=801}] ~ ~ ~ 1 0.6 1
schedule function ms_801:game/succeeded_open 20t append