#> ms_801:setting/summon_nightmare
# ナイトメア設定用の羊を召喚
# @internal

# 召喚
execute positioned 8000.0 20 0.0 rotated -90.0 -30 run summon sheep ^ ^ ^5 {CustomName:'{"text":"ナイトメア","color":"dark_gray","bold":true}',CustomNameVisible:1b,Color:15,Rotation:[90f,30f],UUID:[I;0,801,0,14],NoAI:1b,Invulnerable:1b,DeathTime:19s,Team:"801_visible",Tags:["801","Setting_801","SettingDif_801"]}

# 演出
execute at 0-0-321-0-e run playsound entity.lightning_bolt.impact master @a[scores={playing_000=801}] ~ ~ ~ 1 0.7 0.5
execute at 0-0-321-0-e run particle end_rod ~ ~ ~ 0 0 0 0.5 30 force @a[scores={playing_000=801}]
