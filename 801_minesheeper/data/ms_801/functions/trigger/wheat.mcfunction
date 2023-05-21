#> ms_801:trigger/wheat
# wheat 使用時処理
# @internal

# 必須処理
advancement revoke @s only ms_801:wheat
clear @s wheat{801:1b}
loot give @s loot ms_801:wheat

# 羊にtag付与
tag @e[type=sheep,tag=801,nbt=!{InLove:0},distance=..8] add Feeded_801

# 分岐
execute if score $GameInfo General_801 matches 0 run function ms_801:setting/triggered_wheat
execute if score $GameInfo General_801 matches 1..2 run function ms_801:flag/triggered
execute unless score $GameInfo General_801 matches 0..2 as @e[type=sheep,tag=Feeded_801] run data merge entity @s {InLove:0}

# 後始末
tag @e[tag=Feeded_801] remove Feeded_801
