#> ms_801:game/failed/open_effect
# ゲームオーバー時地雷オープン演出
# 地雷が埋まっていた羊が実行者/実行点
# @internal

data merge entity @s {CustomName:'"jeb_"',CustomNameVisible:0b,Sheared:0b}
particle minecraft:angry_villager ~ ~0.5 ~ 0.4 0.4 0.4 0 10 force @a[scores={playing_000=801}]
tag @s add Opened_801