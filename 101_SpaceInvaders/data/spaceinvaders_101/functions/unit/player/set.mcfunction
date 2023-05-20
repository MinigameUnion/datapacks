#> spaceinvaders_101:unit/player/set
### 自機の召喚
###

## id同期
    scoreboard players operation #_id Id_101 = @s id_000
    execute as @e[tag=Entity_101,type=#spaceinvaders_101:all] store success score @s Group_101 if score @s Id_101 = #_id Id_101

## 召喚
    # 既存の自機を削除
    kill @e[tag=Player_101,type=item_display,scores={Group_101=1}]
    # 召喚
    summon item_display ~ 62 -46 {Tags:[Player_101,Entity_101,temp]}
    loot replace entity @e[tag=temp,type=item_display] container.0 loot player_000:head
    # idの設定
    scoreboard players operation @e[tag=temp,type=item_display] Id_101 = @s id_000
    tag @e[tag=temp,type=item_display] remove temp