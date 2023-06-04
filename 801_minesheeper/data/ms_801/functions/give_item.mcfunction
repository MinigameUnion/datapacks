#> ms_801:give_item
# アイテム入手
# @internal

# 常時
loot give @s loot ms_801:shears
loot give @s loot ms_801:wheat
loot give @s loot ms_801:golden_apple

# ゲーム中のみ
execute if score $GameInfo General_801 matches 2 if entity @s[y=10,dy=5] run loot give @s loot ms_801:shears_super