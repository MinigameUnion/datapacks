#> ms_801:init
# ゲーム初期化処理
# @internal

# Score設定
## ゲームの状態
## -1:ゲーム終了待機
## 0:難易度選択中
## 1:最初に開ける前
## 2:ゲーム進行中
## 3:終了演出中
scoreboard players set $GameInfo General_801 0
## 難易度(-1の場合はsetting開始時に自動で0に)
scoreboard players set $Dif General_801 -1
## 難易度履歴(ナイトメア用)
scoreboard players set $DifHistory General_801 0
## タイマー
scoreboard players set $Time General_801 0
## 残り地雷個数
scoreboard players set $Remain General_801 0
## 開けたマス数
scoreboard players set $Opened General_801 0
## 成功flag
scoreboard players set $Succeeded General_801 0
## 記録を表示する難易度
scoreboard players set $RecordDif General_801 0

# bossbar設定
bossbar set disp_801 name {"text":"Mine Sheeper"}
bossbar set disp_801 value 0
bossbar set disp_801 color white
bossbar set time_801 name {"text":"経過時間：000"}
bossbar set time_801 color white
bossbar set time_801 visible false

# entityが残っていたらkill
tp @e[tag=801] 8000 -100 0
kill @e[tag=801]

# 設定フェーズ開始
schedule function ms_801:setting/start 5t
