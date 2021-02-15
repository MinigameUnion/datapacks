#> utility_001:hologram_util/core/generate/offset
# @internal

#Offset.y
    execute if data storage utility_001:hologram_util TextGroup[-1].Offset[-1] store result score #Move utility_001 run data get storage utility_001:hologram_util TextGroup[-1].Offset[-1] 10000
    execute if data storage utility_001:hologram_util TextGroup[-1].Offset[-1] if score #Move utility_001 matches 1.. rotated ~ 90 run function utility_001:hologram_util/core/generate/move/31
    execute if data storage utility_001:hologram_util TextGroup[-1].Offset[-1] if score #Move utility_001 matches ..-1 run scoreboard players operation #Move utility_001 *= #-1 num_000
    execute if data storage utility_001:hologram_util TextGroup[-1].Offset[-1] if score #Move utility_001 matches 1.. rotated ~ -90 run function utility_001:hologram_util/core/generate/move/31
    execute if data storage utility_001:hologram_util TextGroup[-1].Offset[-1] run data remove storage utility_001:hologram_util TextGroup[-1].Offset[-1]
#Offset.x
    execute if data storage utility_001:hologram_util TextGroup[-1].Offset[-1] store result score #Move utility_001 run data get storage utility_001:hologram_util TextGroup[-1].Offset[-1] 10000
    execute if data storage utility_001:hologram_util TextGroup[-1].Offset[-1] if score #Move utility_001 matches 1.. at @s rotated ~ 0 run function utility_001:hologram_util/core/generate/move/31
    execute if data storage utility_001:hologram_util TextGroup[-1].Offset[-1] if score #Move utility_001 matches ..-1 run scoreboard players operation #Move utility_001 *= #-1 num_000
    execute if data storage utility_001:hologram_util TextGroup[-1].Offset[-1] if score #Move utility_001 matches 1.. at @s rotated ~180 0 run function utility_001:hologram_util/core/generate/move/31
    execute if data storage utility_001:hologram_util TextGroup[-1].Offset[-1] run data remove storage utility_001:hologram_util TextGroup[-1].Offset[-1]
#Text反転
    execute if data storage utility_001:hologram_util TextGroup[-1].Text[1] run data modify storage utility_001:array_util Array set from storage utility_001:hologram_util TextGroup[-1].Text
    execute if data storage utility_001:hologram_util TextGroup[-1].Text[1] run function utility_001:array_util/api/reverse
    execute if data storage utility_001:hologram_util TextGroup[-1].Text[1] run data modify storage utility_001:hologram_util TextGroup[-1].Text set from storage utility_001:array_util Array
#ItemIcon反転
    execute if data storage utility_001:hologram_util TextGroup[-1].ItemIcon[1] run data modify storage utility_001:array_util Array set from storage utility_001:hologram_util TextGroup[-1].ItenIcon
    execute if data storage utility_001:hologram_util TextGroup[-1].ItemIcon[1] run function utility_001:array_util/api/reverse
    execute if data storage utility_001:hologram_util TextGroup[-1].ItemIcon[1] run data modify storage utility_001:hologram_util TextGroup[-1].ItenIcon set from storage utility_001:array_util Array
#Text描画
    execute if data storage utility_001:hologram_util TextGroup[-1].Text[-1] unless data storage utility_001:hologram_util TextGroup[-1].Setting.TextSpaceWidth run data modify storage utility_001:hologram_util TextGroup[-1].Setting.TextSpaceWidth set value 0.12f
    execute if data storage utility_001:hologram_util TextGroup[-1].Text[-1] at @s run function utility_001:hologram_util/core/generate/base
#Listから削除
    data remove storage utility_001:hologram_util TextGroup[-1]
#描画するホログラムがまだある場合の処理
    execute if data storage utility_001:hologram_util TextGroup[0] positioned ~ ~ ~ run function utility_001:hologram_util/core/generate/offset