#> ms_801:info
# ゲーム説明
# @internal

# 演出
execute if score @s InfoTrigger_801 matches 1.. run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.2

# tellraw
execute if score @s InfoTrigger_801 matches 1 run tellraw @s ["",{"translate":"[基本ルール] ゲームを開始すると下ステージに羊たちが現れます。何匹かは%1$sで、ハズレの羊の毛を刈ると%2$sになります。ハズレでない羊の毛を刈ると子羊になり、隣接する8方向にハズレの羊がいる場合はその数が表示され、そうでないときは隣接する羊の毛も自動的に刈られます。ハズレでない羊の毛を全て刈ると%3$sです。また小麦を使うと%4$sをつけることができます。目印をつけた羊は毛を刈れません。","with":[{"text":"ハズレ","bold":true},{"text":"ゲームオーバー","bold":true},{"text":"ゲームクリア","bold":true},{"text":"目印","bold":true}]}]
execute if score @s InfoTrigger_801 matches 2 run tellraw @s ["",{"translate":"[すごいハサミについて] すごいハサミではハズレの羊の毛を刈っても%1$s！(かわりに目印をつけます。)ゲーム毎に一定回数まで使用でき、残り使用可能回数に応じて最終的なミニにボーナスが得られます。","with":[{"text":"ゲームオーバーになりません","underlined":true}]}]
execute if score @s InfoTrigger_801 matches 3 run tellraw @s ["",{"translate":"[獲得ミニについて] 羊の毛を刈ると%1$sが手に入り、最終的に持っていた羊毛の個数に%2$sを考慮したミニが得られます。またクリア時間に対してミニ取得量が多い/少ない場合には補正があります。","with":[{"text":"羊毛","bold":true},{"text":"ボーナス","bold":true}]}]
execute if score @s InfoTrigger_801 matches 4 run tellraw @s ["",{"translate":"[うまく動かないときは] ・アイテムがない→再ログインしてみてください。\n・エンティティが出ない→下ステージのロゴ反対側の看板から退出/初期化してみてください。","with":[]}]

tellraw @s ["",{"text":"[基本ルール]","color":"green","clickEvent":{"action":"run_command","value":"/trigger InfoTrigger_801 set 1"}}," ",{"text":"[すごいハサミについて]","color":"green","clickEvent":{"action":"run_command","value":"/trigger InfoTrigger_801 set 2"}}," ",{"text":"[取得ミニについて]","color":"green","clickEvent":{"action":"run_command","value":"/trigger InfoTrigger_801 set 3"}}," ",{"text":"[うまく動かないときは]","color":"green","clickEvent":{"action":"run_command","value":"/trigger InfoTrigger_801 set 4"}}," "]

# enable trigger
scoreboard players reset @s InfoTrigger_801
scoreboard players enable @s InfoTrigger_801