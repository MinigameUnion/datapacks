#> spaceinvaders_101:unit/ufo/set
### UFOの設置

## 召喚
    # 召喚
    execute at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run summon item_display ~10 82 -46 {Tags:[UFO_101,Entity_101,temp],Rotation:[0.0f,0.0f],item:{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"MHF_MushroomCow"}},transformation:[0f,0f,0f,0f, 0f,0f,0f,0f, 0f,0f,0f,0f, 0f,0f,0f,1f]}
    # タイムのセット
    scoreboard players set @e[tag=temp,type=item_display] Timer_101 500
    # idの設定
    scoreboard players operation @e[tag=temp,type=item_display] Id_101 = @s id_000
    tag @e[tag=temp,type=item_display] remove temp