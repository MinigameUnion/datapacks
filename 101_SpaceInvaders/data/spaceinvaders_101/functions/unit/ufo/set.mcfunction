#> spaceinvaders_101:unit/ufo/set
### UFOの設置

## id同期
    scoreboard players operation #_id Id_101 = @s id_000
    execute as @e[tag=Entity_101,type=#spaceinvaders_101:all] store success score @s Group_101 if score @s Id_101 = #_id Id_101

## 召喚
    # 既存のUFOを削除
    kill @e[tag=UFO_101,type=item_display,type=item_display,scores={Group_101=1,Timer_101=1..}]
    # 召喚
    execute at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run summon item_display ~10 82 -46 {Tags:[UFO_101,Entity_101,temp],Rotation:[0.0f,0.0f],item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"MHF_MushroomCow"}}}
    # タイムのセット
    scoreboard players set @e[tag=temp,type=item_display] Timer_101 500
    # idの設定
    scoreboard players operation @e[tag=temp,type=item_display] Id_101 = @s id_000
    tag @e[tag=temp,type=item_display] remove temp