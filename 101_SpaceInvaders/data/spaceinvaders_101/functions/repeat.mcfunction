###
###常時実行
###

###ゲームの進行
#開始
execute as @a[scores={playing_000=101,Progress_101=1}] at @s run function spaceinvaders_101:repeat/start
#ステージ遷移
execute as @a[scores={playing_000=101,Progress_101=2}] at @s run function spaceinvaders_101:repeat/next
#進行
execute as @a[scores={playing_000=101,Progress_101=3}] at @s run function spaceinvaders_101:repeat/active
#ステージクリア
execute as @a[scores={playing_000=101,Progress_101=4}] at @s run function spaceinvaders_101:repeat/clear
#ゲームオーバー
execute as @a[scores={playing_000=101,Progress_101=5}] at @s run function spaceinvaders_101:repeat/fail
#コンティニュー選択
execute as @a[scores={playing_000=101,Progress_101=6}] at @s run function spaceinvaders_101:repeat/continue