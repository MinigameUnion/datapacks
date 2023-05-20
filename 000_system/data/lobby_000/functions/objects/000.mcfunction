#> lobby_000:objects/000
### 設置

## リセット
    kill @e[tag=click_000,distance=..3]

## ブロック
    fill ~ ~ ~ ~ ~1 ~ white_concrete

## インタラクションの設置
    execute align xyz run summon interaction ~0.5 ~ ~0.5 {Tags:[click_000,click.000_000],width:1.1f,height:2}

## ディスプレイの設置
    # タイトル
    summon text_display ~ ~ ~ {Tags:[click_000,click.000_000,temp_000],background:0,text:'{"text":" BACK TO \\nLOBBY","color":"white","bold":true,"font":"uniform"}',"alignment":"center",Rotation:[180f,0f],transformation:{translation:[0f,1f,0.52f],left_rotation:{axis:[0f,0f,1f],angle:0f},scale:[1f,1.4f,1f],right_rotation:{axis:[0f,0f,1f],angle:0f}},brightness:{sky:15,block:15},shadow:true}
    # クリック
    summon text_display ~ ~ ~ {Tags:[click_000,click.000_000,temp_000],background:0,text:'{"text":"Right Click","color":"white","bold":true,"font":"uniform"}',"alignment":"center",Rotation:[180f,0f],transformation:{translation:[0f,0.95f,0.63f],left_rotation:{axis:[1f,0f,0f],angle:0f},scale:[0.5f,0.7f,1f],right_rotation:{axis:[0f,1f,0f],angle:0f}},brightness:{sky:15,block:15}}
    # 背景
    summon text_display ~ ~ ~ {Tags:[click_000,click.000_000,temp_000],background:1111111111,text:'{"text":"         ","font":"uniform"}',"alignment":"center",Rotation:[180f,0f],transformation:{translation:[0f,0.5f,0.51f],left_rotation:{axis:[0f,0f,1f],angle:0f},scale:[1f,5f,1f],right_rotation:{axis:[0f,0f,1f],angle:0f}},brightness:{sky:15,block:15},shadow:true}
    # 向きを同期
    execute align xyz run teleport @e[tag=temp_000] ~0.5 ~ ~0.5 ~ ~

## 後処理
    tag @e[tag=temp_000] remove temp_000