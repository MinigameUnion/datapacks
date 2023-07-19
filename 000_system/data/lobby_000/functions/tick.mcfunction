#> lobby_000:tick
### ロビーにおける常時実行

## スペースインベーダー
    # 移動
    execute as @a[x=-20.0,y=14.0,z=-51.0,dx=2,dy=3,dz=1] run function spaceinvaders_101:join

## パックマン
    # 移動
    execute as @a[x=-35.0,y=15.0,z=-41.0,dx=0,dy=1,dz=0] run function pac_man_102:join

## リバーシ
    # ホログラム操作
    execute as @a[x=30.0,y=14.0,z=-19.5,dx=7,dy=4,dz=7] run tag @s add hologram_operator_001

## ATS
    # 移動
    execute as @a[x=48.0,y=14.0,z=-47.0,dx=2,dy=2,dz=0] run function ats_602:join