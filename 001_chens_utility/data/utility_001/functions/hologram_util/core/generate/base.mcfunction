#> utility_001:hologram_util/core/generate/base
# @internal

#ItemIconの検査
    data modify storage utility_001:hologram_util Test.String set from storage utility_001:hologram_util TextGroup[-1].Text[-1]
    execute if data storage utility_001:hologram_util Test{String:"ItemIcon()"} run function utility_001:hologram_util/core/generate/item_icon
    execute unless data storage utility_001:hologram_util Test{String:"ItemIcon()"} unless data storage utility_001:hologram_util Test{String:""} run function utility_001:hologram_util/core/generate/text
#Collider
    execute if data storage utility_001:hologram_util TextGroup[-1].Setting{CursorCollider:1b} positioned ~ ~0.15 ~ run summon minecraft:area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:[hologram_001,hologram_collider_001]}
    execute if data storage utility_001:hologram_util TextGroup[-1].Setting{CursorCollider:1b} positioned ~ ~0.15 ~ run tp @e[tag=hologram_collider_001,distance=..0.0001,limit=1] ~ ~ ~ ~90 ~
    execute if data storage utility_001:hologram_util TextGroup[-1].Setting{CursorCollider:1b} positioned ~ ~0.15 ~ store result score @e[tag=hologram_collider_001,distance=..0.0001,limit=1] hologram_id_001 run data get storage utility_001:hologram_util TextGroup[-1].HologramID
#Listから削除
    data remove storage utility_001:hologram_util TextGroup[-1].Text[-1]
#描画する文字がまだある場合の処理
    execute if data storage utility_001:hologram_util TextGroup[-1].Text[0] store result score #Move utility_001 run data get storage utility_001:hologram_util TextGroup[-1].Setting.TextSpaceWidth 10000
    execute if data storage utility_001:hologram_util TextGroup[-1].Text[0] rotated ~ 0 run function utility_001:hologram_util/core/generate/move/31
    execute if data storage utility_001:hologram_util TextGroup[-1].Text[0] at @s run function utility_001:hologram_util/core/generate/base