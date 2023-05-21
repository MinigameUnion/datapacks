#> ms_801:flag/add
# 旗追加
# @internal

scoreboard players set $UsedFlag General_801 1
tag @s add Flagged_801
data merge entity @s {CustomName:'{"text":"▼","color":"dark_red","bold":true}',Color:14,InLove:0}

playsound item.armor.equip_leather master @a[tag=Feeder_801] ~ ~ ~ 1 1.2 1

# 後始末
tag @s remove Feeded_801