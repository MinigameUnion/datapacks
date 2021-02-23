#scoreboard宣言
scoreboard objectives add ID_801 dummy
scoreboard objectives add Count_801 dummy

#team宣言
team add 801
team modify 801 collisionRule never

#bossbar追加
bossbar add disp_801 ""
bossbar set disp_801 style progress
bossbar add time_801 ""
bossbar set time_801 style progress
bossbar set time_801 max 1
bossbar set time_801 value 1

#storage設定
execute unless data storage ms_801:record Data run data merge storage ms_801:record {Data:{Time:0,Player:""},Easy:[{Time:100000,Player:"MineSheeper"},{Time:100000,Player:"MineSheeper"},{Time:100000,Player:"MineSheeper"},{Time:100000,Player:"MineSheeper"},{Time:100000,Player:"MineSheeper"}],Normal:[{Time:100000,Player:"MineSheeper"},{Time:100000,Player:"MineSheeper"},{Time:100000,Player:"MineSheeper"},{Time:100000,Player:"MineSheeper"},{Time:100000,Player:"MineSheeper"}],Hard:[{Time:100000,Player:"MineSheeper"},{Time:100000,Player:"MineSheeper"},{Time:100000,Player:"MineSheeper"},{Time:100000,Player:"MineSheeper"},{Time:100000,Player:"MineSheeper"}],Hardcore:[{Time:100000,Player:"MineSheeper"},{Time:100000,Player:"MineSheeper"},{Time:100000,Player:"MineSheeper"},{Time:100000,Player:"MineSheeper"},{Time:100000,Player:"MineSheeper"}],Nightmare:[{Time:100000,Player:"MineSheeper"},{Time:100000,Player:"MineSheeper"},{Time:100000,Player:"MineSheeper"},{Time:100000,Player:"MineSheeper"},{Time:100000,Player:"MineSheeper"}]}

#変数等初期化
function ms_801:initialize