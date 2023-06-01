#> ms_801:game/open/super_mine
# すごいハサミで地雷を開けたとき
# @internal

# 旗
scoreboard players set $UsedFlag General_801 1
tag @s add Flagged_801
data merge entity @s {CustomName:'{"text":"▼","color":"dark_red","bold":true}',Color:14,Sheared:0b}

# 演出
particle totem_of_undying ~ ~0.8 ~ 0.1 0.1 0.1 0.5 20
playsound item.totem.use master @a[scores={playing_000=801}] ~ ~ ~ 1 1.2