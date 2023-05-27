#> ms_801:setting/start
# 設定フェーズ開始
# @internal

# 状態変更
scoreboard players set $GameInfo General_801 0

# もし $Dif が -1 なら 0 に
execute if score $Dif General_801 matches -1 run function ms_801:setting/difficulty/easy

# 入力召喚
summon sheep 8000.0 20 5.0 {CustomName:'"jeb_"',Color:0,Rotation:[180f,0f],UUID:[I;0,801,0,0],CustomNameVisible:0b,NoAI:1b,Invulnerable:1b,DeathTime:19s,Team:"801",Tags:["801","Setting_801"]}
execute positioned 8000.0 20 0.0 rotated 0.0 0 run summon text_display ^ ^1.5 ^5 {text:'{"text":"ゲーム開始/ゲーム説明","bold":true}',billboard:"center",Tags:["801","Setting_801"]}
execute if score $Dif General_801 matches 0 positioned 8000.0 20 0.0 rotated -60.0 0 run summon sheep ^ ^ ^5 {Glowing:1b,CustomName:'{"text":"イージー","color":"aqua","bold":true}',CustomNameVisible:1b,Color:3,Rotation:[120f,0f],UUID:[I;0,801,0,10],NoAI:1b,Invulnerable:1b,DeathTime:19s,Team:"801_visible",Tags:["801","Setting_801","SettingDif_801"]}
execute unless score $Dif General_801 matches 0 positioned 8000.0 20 0.0 rotated -60.0 0 run summon sheep ^ ^ ^5 {CustomName:'{"text":"イージー","color":"aqua","bold":true}',CustomNameVisible:1b,Color:3,Rotation:[120f,0f],UUID:[I;0,801,0,10],NoAI:1b,Invulnerable:1b,DeathTime:19s,Team:"801_visible",Tags:["801","Setting_801","SettingDif_801"]}
execute if score $Dif General_801 matches 1 positioned 8000.0 20 0.0 rotated -80.0 0 run summon sheep ^ ^ ^5 {Glowing:1b,CustomName:'{"text":"ノーマル","color":"green","bold":true}',CustomNameVisible:1b,Color:5,Rotation:[100f,0f],UUID:[I;0,801,0,11],NoAI:1b,Invulnerable:1b,DeathTime:19s,Team:"801_visible",Tags:["801","Setting_801","SettingDif_801"]}
execute unless score $Dif General_801 matches 1 positioned 8000.0 20 0.0 rotated -80.0 0 run summon sheep ^ ^ ^5 {CustomName:'{"text":"ノーマル","color":"green","bold":true}',CustomNameVisible:1b,Color:5,Rotation:[100f,0f],UUID:[I;0,801,0,11],NoAI:1b,Invulnerable:1b,DeathTime:19s,Team:"801_visible",Tags:["801","Setting_801","SettingDif_801"]}
execute if score $Dif General_801 matches 2 positioned 8000.0 20 0.0 rotated -100.0 0 run summon sheep ^ ^ ^5 {Glowing:1b,CustomName:'{"text":"ハード","color":"red","bold":true}',CustomNameVisible:1b,Color:6,Rotation:[80f,0f],UUID:[I;0,801,0,12],NoAI:1b,Invulnerable:1b,DeathTime:19s,Team:"801_visible",Tags:["801","Setting_801","SettingDif_801"]}
execute unless score $Dif General_801 matches 2 positioned 8000.0 20 0.0 rotated -100.0 0 run summon sheep ^ ^ ^5 {CustomName:'{"text":"ハード","color":"red","bold":true}',CustomNameVisible:1b,Color:6,Rotation:[80f,0f],UUID:[I;0,801,0,12],NoAI:1b,Invulnerable:1b,DeathTime:19s,Team:"801_visible",Tags:["801","Setting_801","SettingDif_801"]}
execute if score $Dif General_801 matches 3 positioned 8000.0 20 0.0 rotated -120.0 0 run summon sheep ^ ^ ^5 {Glowing:1b,CustomName:'{"text":"ハードコア","color":"light_purple","bold":true}',CustomNameVisible:1b,Color:10,Rotation:[60f,0f],UUID:[I;0,801,0,13],NoAI:1b,Invulnerable:1b,DeathTime:19s,Team:"801_visible",Tags:["801","Setting_801","SettingDif_801"]}
execute unless score $Dif General_801 matches 3 positioned 8000.0 20 0.0 rotated -120.0 0 run summon sheep ^ ^ ^5 {CustomName:'{"text":"ハードコア","color":"light_purple","bold":true}',CustomNameVisible:1b,Color:10,Rotation:[60f,0f],UUID:[I;0,801,0,13],NoAI:1b,Invulnerable:1b,DeathTime:19s,Team:"801_visible",Tags:["801","Setting_801","SettingDif_801"]}
execute if score $Dif General_801 matches 4 positioned 8000.0 20 0.0 rotated -90.0 -30 run summon sheep ^ ^ ^5 {Glowing:1b,CustomName:'{"text":"ナイトメア","color":"dark_gray","bold":true}',CustomNameVisible:1b,Color:15,Rotation:[90f,30f],UUID:[I;0,801,0,14],NoAI:1b,Invulnerable:1b,DeathTime:19s,Team:"801_visible",Tags:["801","Setting_801","SettingDif_801"]}
execute unless entity 0-0-321-ffff-ffffffffffff positioned 8000.0 20 0.0 rotated 180.0 0 run summon sheep ^ ^ ^5 {CustomName:'{"text":"退出する","color":"dark_green","bold":true}',CustomNameVisible:1b,Color:13,Rotation:[0f,0f],UUID:[I;0,801,-1,-1],NoAI:1b,Invulnerable:1b,DeathTime:19s,Team:"801_visible",Tags:["801","Exit_801"]}
execute positioned 8000.0 20 0.0 rotated 90.0 0 run summon sheep ^ ^ ^5 {Color:1,Rotation:[-90f,0f],UUID:[I;0,801,0,20],NoAI:1b,Invulnerable:1b,DeathTime:19s,Team:"801",Tags:["801","Setting_801"]}
execute positioned 8000.0 20 0.0 rotated 90.0 0 run summon text_display ^ ^1.5 ^5 {Tags:["801","Setting_801","Record_801"],UUID:[I;0,801,0,25],Rotation:[-90.0f,0.0f]}
execute positioned 8000.0 20 0.0 rotated 90.0 0 run summon text_display ^ ^1.8 ^5 {Tags:["801","Setting_801","Record_801"],UUID:[I;0,801,0,24],Rotation:[-90.0f,0.0f]}
execute positioned 8000.0 20 0.0 rotated 90.0 0 run summon text_display ^ ^2.1 ^5 {Tags:["801","Setting_801","Record_801"],UUID:[I;0,801,0,23],Rotation:[-90.0f,0.0f]}
execute positioned 8000.0 20 0.0 rotated 90.0 0 run summon text_display ^ ^2.4 ^5 {Tags:["801","Setting_801","Record_801"],UUID:[I;0,801,0,22],Rotation:[-90.0f,0.0f]}
execute positioned 8000.0 20 0.0 rotated 90.0 0 run summon text_display ^ ^2.7 ^5 {Tags:["801","Setting_801","Record_801"],UUID:[I;0,801,0,21],Rotation:[-90.0f,0.0f]}
execute positioned 8000.0 20 0.0 rotated 90.0 0 run summon text_display ^ ^3.0 ^5 {Tags:["801","Setting_801","Record_801"],UUID:[I;0,801,0,26],Rotation:[-90.0f,0.0f],transformation:{right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.5f,1.5f,1.0f],left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]}}

# 記録表示
function ms_801:setting/record/show

# bossbar設定
bossbar set disp_801 value 0
bossbar set disp_801 name {"text":"Mine Sheeper"}
