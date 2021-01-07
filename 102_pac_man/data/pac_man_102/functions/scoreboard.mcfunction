#スコアボード

scoreboard objectives add _Point_102 dummy
#得点
scoreboard objectives add _Game_102 dummy
#ゲーム進行
scoreboard objectives add _Id_102 dummy
#管理用ID
scoreboard objectives add _Timer_102 dummy
#タイマー
scoreboard objectives add _Pattern_102 dummy
#ステージパターン
scoreboard objectives add _Speed_102 dummy
#移動速度
scoreboard objectives add _Direction_102 dummy
#移動方向
scoreboard objectives add _HP_102 dummy
scoreboard objectives add _State_102 dummy
#ステータス
scoreboard objectives add _Count_102 dummy
#カウンター
scoreboard objectives add _Model_102 dummy
#モデルタイマー
scoreboard objectives add _Group_102 dummy
#グループ
scoreboard objectives add _Input_102 dummy
#入力値
scoreboard objectives add _Stop_102 dummy
#停止時間

scoreboard objectives add _Operation_102 dummy
#演算用

#ボスバー
bossbar add pac_man_102:pre_start {"text":"ゲーム開始まで","color":"gold","bold":true}
bossbar set pac_man_102:pre_start color yellow
bossbar set pac_man_102:pre_start style notched_10
bossbar set pac_man_102:pre_start max 200