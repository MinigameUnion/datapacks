#> ms_801:flag/remove
# 旗削除
# @internal

tag @s remove Flagged_801
data merge entity @s {CustomName:'',Color:0,InLove:0}

playsound item.armor.equip_leather master @a[tag=Feeder_801] ~ ~ ~ 1 1.2 1

# 後始末
tag @s remove Feeded_801