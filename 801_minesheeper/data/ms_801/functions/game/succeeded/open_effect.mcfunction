#> ms_801:game/succeeded/open_effect
# クリア時地雷オープンの演出
# 地雷が埋まっていた羊が実行者/実行点
# @internal

data merge entity @s {CustomName:'"jeb_"',Sheared:0b}
particle minecraft:note ~ ~0.5 ~ 0.4 0.4 0.4 1 10 force @a[scores={playing_000=801}]
tag @s add Opened_801