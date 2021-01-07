###
###UFOの設置
###

##id同期
scoreboard players operation #_id Id_101 = @s id_000
execute as @e[tag=Entity_101] store success score @s Group_101 if score @s Id_101 = #_id Id_101

##召喚
#既存のUFOを削除
kill @e[tag=UFO_101,scores={Group_101=1,Timer_101=1..}]
#召喚
execute at @e[tag=StagePoint_101,scores={Group_101=1}] run summon armor_stand ~10 82 -46 {Tags:[UFO_101,Entity_101,temp],NoGravity:1b,Invisible:1b,Marker:1b,Rotation:[0.0f,0.0f],ArmorItems:[{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"MHF_MushroomCow"}},{},{},{}]}
#タイムのセット
scoreboard players set @e[tag=temp] Timer_101 500

#idの設定
scoreboard players operation @e[tag=temp] Id_101 = @s id_000
tag @e[tag=temp] remove temp