#プレイヤーの位置設定

#info
# as,at :player

#浮遊
    effect give @s minecraft:levitation 1 255 true
#固定
    execute positioned 997.0 115.0 1001.0 unless entity @s[distance=..0.001] run tp @s 997.0 115.0 1001.0