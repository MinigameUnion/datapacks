#> ms_801:game/start
# ゲーム開始時処理
# @internal

# GameInfo変更
scoreboard players set $GameInfo General_801 1
# 旗使用フラグ
scoreboard players set $UsedFlag General_801 0
# サイズ等調整
execute if score $X General_801 matches 31.. run scoreboard players set $X General_801 30
execute if score $X General_801 matches ..8 run scoreboard players set $X General_801 9
execute if score $Z General_801 matches 31.. run scoreboard players set $Z General_801 30
execute if score $Z General_801 matches ..8 run scoreboard players set $Z General_801 9
scoreboard players operation $Tmp General_801 = $X General_801
scoreboard players operation $Tmp2 General_801 = $Z General_801
scoreboard players remove $Tmp General_801 1
scoreboard players remove $Tmp2 General_801 1
scoreboard players operation $Tmp General_801 *= $Tmp2 General_801
execute if score $Mine General_801 > $Tmp General_801 run scoreboard players operation $Mine General_801 = $Tmp General_801
execute if score $Mine General_801 matches ..9 run scoreboard players set $Mine General_801 10
# 原点
summon minecraft:marker 8000 0 0 {UUID:[I;0,801,1,0]}
scoreboard players set $Tmp2 General_801 3
execute if score $IsWide General_801 matches 1 run scoreboard players set $Tmp2 General_801 6
scoreboard players operation $Tmp General_801 = $X General_801
scoreboard players operation $Tmp General_801 *= $Tmp2 General_801
scoreboard players remove $Tmp General_801 32003
execute store result entity 0-0-321-0-100000000 Pos[0] double -0.25 run scoreboard players get $Tmp General_801
scoreboard players operation $Tmp General_801 = $Z General_801
scoreboard players operation $Tmp General_801 *= $Tmp2 General_801
scoreboard players remove $Tmp General_801 3
execute store result entity 0-0-321-0-100000000 Pos[2] double -0.25 run scoreboard players get $Tmp General_801
# 羊召喚loop
scoreboard players operation $Tmp2 General_801 = $Z General_801
scoreboard players set $Tmp3 General_801 0
execute at 0-0-321-0-100000000 run function ms_801:game/summon/sheep_z
# 羊tp予約
tag @e[type=sheep,tag=Board_801,scores={ID_801=0}] add BoardTp_801
function ms_801:game/start_tp
# 処理用marker召喚loop
scoreboard players operation $Tmp2 General_801 = $Z General_801
scoreboard players set $Tmp3 General_801 0
execute positioned 8000.5 0 0.5 run function ms_801:game/summon/marker_z
# bossbar設定
bossbar set disp_801 value 0
scoreboard players set $Opened General_801 0
scoreboard players operation $Remain General_801 = $X General_801
scoreboard players operation $Remain General_801 *= $Z General_801
scoreboard players operation $Remain General_801 -= $Mine General_801
execute store result bossbar disp_801 max run scoreboard players get $Remain General_801
bossbar set disp_801 name [{"translate":"ハズレ数：%1$s  クリアまであと：%2$s","with":[{"score":{"name":"$Mine","objective":"General_801"}},{"score":{"name":"$Remain","objective":"General_801"}}]}]
bossbar set time_801 visible true
bossbar set time_801 name {"text":"経過時間：000"}
# 強制終了用
summon sheep 8000.0 20 5.0 {Color:15,Rotation:[180f,0f],UUID:[I;0,801,-1,0],NoAI:1b,Invulnerable:1b,DeathTime:19s,Team:"801",Tags:["801","Game_801","End_801"]}
execute positioned 8000.0 20 0.0 rotated 0.0 0 run summon text_display ^ ^1.5 ^5 {text:'{"text":"ゲーム終了","bold":true}',billboard:"center",Tags:["801","Game_801"]}

# 後始末
kill 0-0-321-0-100000000
scoreboard players reset $Tmp General_801
scoreboard players reset $Tmp2 General_801
scoreboard players reset $Tmp3 General_801