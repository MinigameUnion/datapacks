#> pac_man_102:tick
### 常時実行

#info
# as,at:server
# repeat

#リンゴを拾ったとき
execute as @a[scores={playing_000=102},nbt={Inventory:[{tag:{Gate:1b}}]}] run function pac_man_102:game/inactive/pre_start/init

#ゲーム中以外
execute as @a[scores={playing_000=102,_Game_102=10..19}] at @s run function pac_man_102:game/inactive/repeat

#ゲーム中
execute as @a[scores={playing_000=102,_Game_102=20..29}] at @s run function pac_man_102:game/active/repeat