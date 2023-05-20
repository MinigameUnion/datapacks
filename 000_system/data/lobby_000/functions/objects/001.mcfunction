#> lobby_000:objects/001
### 設置

## リセット
    execute positioned ~-0.5 ~ ~-0.5 run kill @e[tag=click_000,dx=0,dy=5,dz=0]

## ブロック
    fill ~ ~ ~ ~ ~1 ~ white_concrete

## ディスプレイの設置
    # タイトル
    summon text_display ~ ~ ~ {Tags:[click_000,click.001_000,temp_000],background:0,text:'{"text":"Comming\\nsoon...","color":"white","bold":true,"font":"uniform"}',"alignment":"center",Rotation:[180f,0f],transformation:{translation:[-0.05f,1f,0.51f],left_rotation:{axis:[0f,0f,1f],angle:-0.35f},scale:[1f,1.2f,1f],right_rotation:{axis:[0f,0f,1f],angle:0.3f}},brightness:{sky:15,block:15},shadow:true}
    # 向きを同期
    execute align xyz run teleport @e[tag=temp_000] ~0.5 ~ ~0.5 ~ ~

## 後処理
    tag @e[tag=temp_000] remove temp_000