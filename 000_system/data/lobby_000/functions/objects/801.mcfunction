#> lobby_000:objects/801
### 設置

## リセット
    execute positioned ~-0.5 ~ ~-0.5 run kill @e[tag=click_000,dx=0,dy=5,dz=0]

## ブロック
    fill ~ ~ ~ ~ ~1 ~ barrier

## インタラクションの設置
    summon interaction ~ ~ ~ {Tags:[click_000,click.801_000],width:1.1f,height:2}

## ディスプレイの設置
    # 筐体
    summon item_display ~ ~ ~ {Tags:[click_000,click.801_000,temp_000],item:{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16775416},CustomModelData:1}},Rotation:[180f,0f],transformation:{translation:[0f,0.6f,0f],left_rotation:{axis:[0f,1f,0f],angle:3.1415f},scale:[1.2f,1.2f,1.2f],right_rotation:{axis:[0f,0f,1f],angle:0f}},brightness:{sky:15,block:15}}
    # タイトル
    summon text_display ^ ^3.1 ^-0.5 {Tags:[click_000,click.602_000,temp_000],text:'{"text":"\\u0006","font":"lobby_000:default"}',billboard:"vertical",background:0,transformation:[1f,0f,0f,0f, 0f,1f,0f,0f, 0f,0f,1f,0f, 0f,0f,0f,4f],brightness:{sky:15,block:15}}
    # クリック
    summon text_display ~ ~ ~ {Tags:[click_000,click.801_000,temp_000],background:0,text:'{"text":"Right Click","color":"yellow","bold":true,"font":"uniform"}',"alignment":"center",Rotation:[180f,0f],transformation:{translation:[0f,0.95f,0.63f],left_rotation:{axis:[1f,0f,0f],angle:0f},scale:[0.5f,0.7f,1f],right_rotation:{axis:[0f,1f,0f],angle:0f}},brightness:{sky:15,block:15}}
    # 向きを同期
    execute as @e[tag=temp_000] positioned as @s run teleport @s ~ ~ ~ ~ ~

## 後処理
    tag @e[tag=temp_000] remove temp_000