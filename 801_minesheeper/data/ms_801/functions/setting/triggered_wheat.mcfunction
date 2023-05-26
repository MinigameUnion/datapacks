#> ms_801:setting/triggered_wheat
# 小麦使用時処理
# 説明を表示
# @internal

# 演出
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.7 1

# ゲーム開始
execute as 0-0-321-0-0 if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s %2$s %1$s\nMineSweeperの羊バージョンです。ハズレの羊を避けてすべての羊の毛を刈るとクリアです。複数人でプレイできます！\n%3$s %4$s","with":[{"text":".....","color":"gray","obfuscated":true},{"text":"Mine Sheeper","underlined":true,"bold":true},{"text":"[取得ミニについて]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"羊の毛を刈ると羊毛が入手できます。複数マスが連鎖で開いた場合は開いたマスの分手に入ります。\n最終的に持っていた羊毛の個数にボーナスを考慮したミニが得られます。\nボーナスの例：ゲームクリア、難易度、タイム、旗不使用"}}},{"text":"[うまく動かないときは]","color":"green","hoverEvent":{"action":"show_text","value":{"text":"・アイテムがない\n→再ログインしてみてください。\n・エンティティが出ない\n→下ステージのロゴ反対側の看板から退出/初期化してみてください。"}}}]}]

# 難易度設定
execute as 0-0-321-0-a if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：9x9, ハズレ10個","with":[{"text":"イージー","color":"aqua","bold":true}]}]
execute as 0-0-321-0-b if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：16x16, ハズレ40個","with":[{"text":"ノーマル","color":"green","bold":true}]}]
execute as 0-0-321-0-c if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：30x16, ハズレ99個","with":[{"text":"ハード","color":"red","bold":true}]}]
execute as 0-0-321-0-d if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：9x9, ハズレ10個, %2$s","with":[{"text":"ハードコア","color":"light_purple","bold":true},{"text":"開けた羊が動く","color":"red","underlined":true}]}]
execute as 0-0-321-0-e if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：9x9, ハズレ10個, %2$s","with":[{"text":"ナイトメア","color":"dark_gray","bold":true},{"text":"全ての羊が動く","color":"dark_red","underlined":true}]}]

# ランキング
execute as 0-0-321-0-14 if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：クリアタイム・MVP(羊毛最多獲得者)を確認できます。","with":[{"text":"ランキング","color":"gold","bold":true}]}]

# 退出
execute as 0-0-321-ffff-ffffffffffff if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：ゲームから退出します。","with":[{"text":"退出","color":"dark_green","bold":true}]}]