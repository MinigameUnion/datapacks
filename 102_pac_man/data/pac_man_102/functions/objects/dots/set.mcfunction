#> pac_man_102:objects/dots/set
### エサの設置

#info
# as,at:free

#削除
kill @e[tag=Dot_102]

#ストラクチャの設置
place template pac_man_102:dots 984 91 987 

#スコアの設定
scoreboard players set #pellet_102 _Count_102 244