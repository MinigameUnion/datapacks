#> ms_801:setting/triggered_wheat
# 小麦使用時処理
# 説明を表示
# @internal

# 演出
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1.7 1

# ゲーム説明
execute as 0-0-321-0-0 if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"読みたい情報をクリックしてください。","with":[]}]
execute as 0-0-321-0-0 if entity @s[tag=Feeded_801] as @a[tag=Feeder_801] at @s run function ms_801:info

# 難易度設定
execute as 0-0-321-0-a if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：9x9, ハズレ10匹","with":[{"text":"イージー","color":"aqua","bold":true}]}]
execute as 0-0-321-0-b if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：16x16, ハズレ40匹","with":[{"text":"ノーマル","color":"green","bold":true}]}]
execute as 0-0-321-0-c if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：30x16, ハズレ99匹","with":[{"text":"ハード","color":"red","bold":true}]}]
execute as 0-0-321-0-d if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：9x9, ハズレ10匹, %2$s","with":[{"text":"ハードコア","color":"light_purple","bold":true},{"text":"子羊が動く","color":"red","underlined":true}]}]
execute as 0-0-321-0-e if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：9x9, ハズレ10匹, %2$s","with":[{"text":"ナイトメア","color":"dark_gray","bold":true},{"text":"全ての羊が動く","color":"dark_red","underlined":true}]}]

# ランキング
execute as 0-0-321-0-14 if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：クリアタイム・MVP(羊毛最多獲得者)を確認できます。","with":[{"text":"ランキング","color":"gold","bold":true}]}]

# 退出
execute as 0-0-321-ffff-ffffffffffff if entity @s[tag=Feeded_801] run tellraw @a[tag=Feeder_801] ["",{"translate":"%1$s：ゲームから退出します。","with":[{"text":"退出","color":"dark_green","bold":true}]}]