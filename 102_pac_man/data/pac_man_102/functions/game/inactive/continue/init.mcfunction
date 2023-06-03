#コンテニュー初期設定

#info
# as,at: player

#スコア設定
scoreboard players set @s _Game_102 18
scoreboard players set @s _Timer_102 100

#ボスバー
bossbar add pac_man_102:continue {"text":"ゲーム終了まで","color":"blue","bold":true}
bossbar set pac_man_102:continue color blue
bossbar set pac_man_102:continue style notched_10
bossbar set pac_man_102:continue max 100
bossbar set pac_man_102:continue value 100
bossbar set pac_man_102:continue players @s

#アイテムを与える
give @s golden_apple{Continue:1b} 1