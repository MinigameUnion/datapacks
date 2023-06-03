#ゲーム参加確認 初期設定

#info
# as,at: player

#プレイヤー情報を記録
scoreboard players operation @e[tag=Center_102,type=marker,limit=1] _Id_102 = @s id_000

#参加確認へ移行
scoreboard players set @s _Game_102 11
scoreboard players set @s _Timer_102 200

#アイテムの処理
clear @s apple{Gate:1b}
give @s apple{PreStart:1b}

#演出
playsound entity.generic.eat voice @a[scores={playing_000=102}] ~ ~ ~ 2 1
particle item apple ~ ~1 ~ 0.2 0.2 0.2 0.1 15

#ボスバー
bossbar add pac_man_102:pre_start {"text":"ゲーム開始まで","color":"gold","bold":true}
bossbar set pac_man_102:pre_start color yellow
bossbar set pac_man_102:pre_start style notched_10
bossbar set pac_man_102:pre_start max 200
bossbar set pac_man_102:pre_start value 200
bossbar set pac_man_102:pre_start players @s