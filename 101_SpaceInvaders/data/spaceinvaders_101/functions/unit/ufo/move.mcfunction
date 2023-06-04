#> spaceinvaders_101:unit/ufo/move
### ufo移動

## 移動
    # 移動
    tp @s ~-0.2 ~ ~
    # 削除
    execute at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] positioned ~-10 81 -45.6 run kill @s[dx=0,dy=3,dz=0]
    # 顔
    execute if data entity @s transformation{scale:[0f,0f,0f]} run data modify entity @s transformation.scale set value [1f,1f,1f]
    # タグ
    tag @s add Moving_101

## サウンド演出
    execute at @a[scores={Group_101=1,playing_000=101}] run playsound minecraft:block.note_block.banjo voice @a[scores={playing_000=101}] ~ ~ ~ 0.2 0.7
    execute at @a[scores={Group_101=1,playing_000=101}] run playsound minecraft:block.note_block.banjo voice @a[scores={playing_000=101}] ~ ~ ~ 0.2 0.3