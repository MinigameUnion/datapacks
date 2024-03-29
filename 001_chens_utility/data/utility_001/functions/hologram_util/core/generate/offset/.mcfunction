#> utility_001:hologram_util/core/generate/offset/
# @within function
#   utility_001:hologram_util/core/generate/defer_tp
#   utility_001:hologram_util/core/generate/offset/

#Text反転
    execute if data storage utility_001:hologram_util TextGroup[-1].Text[1] run data modify storage utility_001:array_util Array set from storage utility_001:hologram_util TextGroup[-1].Text
    execute if data storage utility_001:hologram_util TextGroup[-1].Text[1] run function utility_001:array_util/api/reverse
    execute if data storage utility_001:hologram_util TextGroup[-1].Text[1] run data modify storage utility_001:hologram_util TextGroup[-1].Text set from storage utility_001:array_util Array
#ItemIcon反転
    execute if data storage utility_001:hologram_util TextGroup[-1].ItemIcon[1] run data modify storage utility_001:array_util Array set from storage utility_001:hologram_util TextGroup[-1].ItemIcon
    execute if data storage utility_001:hologram_util TextGroup[-1].ItemIcon[1] run function utility_001:array_util/api/reverse
    execute if data storage utility_001:hologram_util TextGroup[-1].ItemIcon[1] run data modify storage utility_001:hologram_util TextGroup[-1].ItemIcon set from storage utility_001:array_util Array
#TextSpaceWidthのデフォルト値設定
    execute if data storage utility_001:hologram_util TextGroup[-1].Text[-1] unless data storage utility_001:hologram_util TextGroup[-1].Setting.TextSpaceWidth run data modify storage utility_001:hologram_util TextGroup[-1].Setting.TextSpaceWidth set value 0.12f
#Offset.x
    execute if data storage utility_001:hologram_util TextGroup[-1].Offset[0] run function utility_001:hologram_util/core/generate/offset/x
#Offset.y
    execute if data storage utility_001:hologram_util TextGroup[-1].Offset[1] run function utility_001:hologram_util/core/generate/offset/y
#Text描画
    execute if data storage utility_001:hologram_util TextGroup[-1].Text[-1] at @s run function utility_001:hologram_util/core/generate/base
#Listから削除
    data remove storage utility_001:hologram_util TextGroup[-1]
#描画するホログラムがまだある場合の処理
    execute if data storage utility_001:hologram_util TextGroup[0] run function utility_001:hologram_util/core/generate/offset/