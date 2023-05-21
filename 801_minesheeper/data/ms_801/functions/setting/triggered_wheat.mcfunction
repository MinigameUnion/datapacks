#> ms_801:setting/triggered_wheat
# 小麦使用時処理
# 説明を表示
# @internal

# 前処理
tag @s add Feeder_801
execute as @e[type=sheep,tag=Feeded_801] run data merge entity @s {InLove:0}
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.7 1

# ゲーム開始
execute as 0-0-321-0-0 if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s %2$s %1$s\n MineSweeperの羊バージョンです。\n ハズレの羊を避けてすべての羊の毛を刈るとクリアです。","with":[{"text":".....","color":"gray","obfuscated":true},{"text":"Mine Sheeper","underlined":true}]}]

# 難易度設定
execute as 0-0-321-0-a if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：9x9,ハズレ10個","with":[{"text":"イージー","color":"aqua","bold":true}]}]
execute as 0-0-321-0-b if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：16x16,ハズレ40個","with":[{"text":"ノーマル","color":"green","bold":true}]}]
execute as 0-0-321-0-c if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：30x16,ハズレ99個","with":[{"text":"ハード","color":"red","bold":true}]}]
execute as 0-0-321-0-d if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：9x9,ハズレ10個,%2$s","with":[{"text":"ハードコア","color":"light_purple","bold":true},{"text":"開けた羊が動きます","color":"red","underlined":true}]}]
execute as 0-0-321-0-e if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：9x9,ハズレ10個,%2$s","with":[{"text":"ナイトメア","color":"dark_gray","bold":true},{"text":"全ての羊が動きます","color":"dark_red","underlined":true}]}]

# ランキング
execute as 0-0-321-0-14 if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：クリアタイム・MVP(羊毛最多獲得者)を確認できます。","with":[{"text":"ランキング","color":"gold","bold":true}]}]

# 後始末
tag @s remove Feeder_801
