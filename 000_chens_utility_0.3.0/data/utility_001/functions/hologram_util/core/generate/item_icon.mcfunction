#> utility_001:hologram_util/core/generate/item_icon
# @internal

#>
# @private
    #declare tag summonNow_001

#ベースsummon
    summon armor_stand ~ 300 ~ {Marker:1b,Invisible:1b,Tags:[hologram_001,hologram_stand_001,summonNow_001],Passengers:[{id:"item",Item:{id:"barrier",Count:1b,tag:{CustomModelData:0}},NoGravity:1b,PickupDelay:32767s,Tags:[hologram_001,hologram_item_001]}]}
#HologramID
    execute store result score @e[tag=hologram_item_001,distance=..0,y=300,limit=1] hologram_id_001 run data get storage utility_001:hologram_util TextGroup[-1].HologramID
#えんちゃ
    execute if data storage utility_001:hologram_util TextGroup[-1].ItemIcon[-1].Setting{Enchant:1b} run data merge entity @e[type=item,tag=hologram_item_001,distance=..0,y=300,limit=1] {Item:{tag:{Enchantments:[{id:"dummy",lvl:1s}]}}}
#ItemID
    data modify entity @e[type=item,tag=hologram_item_001,distance=..0,y=300,limit=1] Item.id set from storage utility_001:hologram_util TextGroup[-1].ItemIcon[-1].id
#CMD
    data modify entity @e[type=item,tag=hologram_item_001,distance=..0,y=300,limit=1] Item.tag.CustomModelData set from storage utility_001:hologram_util TextGroup[-1].ItemIcon[-1].Setting.CMD
#CustomModelData
    execute if data storage utility_001:hologram_util TextGroup[-1].ItemIcon[-1].Setting.CustomModelData run data modify entity @e[type=item,tag=hologram_item_001,distance=..0,y=300,limit=1] Item.tag.CustomModelData set from storage utility_001:hologram_util TextGroup[-1].ItemIcon[-1].Setting.CustomModelData
#AnyNBT
    data modify entity @e[type=item,tag=hologram_item_001,distance=..0,y=300,limit=1] {} merge from storage utility_001:hologram_util TextGroup[-1].ItemIcon[-1].Setting.NBT
#Offset.y
    tp @e[type=armor_stand,tag=hologram_stand_001,tag=summonNow_001,distance=..0.001,y=300,limit=1] ~ ~ ~
    execute store result score #Move utility_001 run data get storage utility_001:hologram_util TextGroup[-1].ItemIcon[-1].Offset 10000
    execute if score #Move utility_001 matches 50000.. run scoreboard players set #Move utility_001 49999
    execute if score #Move utility_001 matches ..-50000 run scoreboard players set #Move utility_001 -49999
    execute if score #Move utility_001 matches 1.. as @e[type=armor_stand,tag=hologram_stand_001,tag=summonNow_001,distance=..0.001,limit=1] rotated ~ -90 run function utility_001:hologram_util/core/generate/move/31
    execute if score #Move utility_001 matches ..-1 run scoreboard players operation #Move utility_001 *= #-1 num_000
    execute if score #Move utility_001 matches 1.. as @e[type=armor_stand,tag=hologram_stand_001,tag=summonNow_001,distance=..0.001,limit=1] rotated ~ 90 run function utility_001:hologram_util/core/generate/move/31
#TagDelete
    tag @e[type=armor_stand,tag=hologram_stand_001,tag=summonNow_001,distance=..5,limit=1] remove summonNow_001
#remove
    data remove storage utility_001:hologram_util TextGroup[-1].ItemIcon[-1]