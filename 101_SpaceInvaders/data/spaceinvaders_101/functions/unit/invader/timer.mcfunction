#> spaceinvaders_101:unit/invader/timer
### インベーダー用タイマー

## タイム設定
    # 生存しているインベーダーの数を取得
    execute store result score @s operation_101 if entity @e[tag=Invader_101,type=item_display,scores={Group_101=1}]
    # 
    scoreboard players set @s[scores={operation_101=1}] Timer_101 1
    scoreboard players set @s[scores={operation_101=2..4}] Timer_101 2
    scoreboard players set @s[scores={operation_101=5..9}] Timer_101 4
    scoreboard players set @s[scores={operation_101=10..14}] Timer_101 6
    scoreboard players set @s[scores={operation_101=15..19}] Timer_101 8
    scoreboard players set @s[scores={operation_101=20..24}] Timer_101 10
    scoreboard players set @s[scores={operation_101=25..29}] Timer_101 12
    scoreboard players set @s[scores={operation_101=30..34}] Timer_101 14
    scoreboard players set @s[scores={operation_101=35..39}] Timer_101 16
    scoreboard players set @s[scores={operation_101=40..44}] Timer_101 18
    scoreboard players set @s[scores={operation_101=45..55}] Timer_101 20

## サウンド演出
    scoreboard players add @s Count_101 1
    scoreboard players set @s[scores={Count_101=4}] Count_101 0
    execute if entity @s[scores={Count_101=0}] run playsound minecraft:block.note_block.bass voice @a ~ ~ ~ 2 0.75
    execute if entity @s[scores={Count_101=1}] run playsound minecraft:block.note_block.bass voice @a ~ ~ ~ 2 0.66
    execute if entity @s[scores={Count_101=2}] run playsound minecraft:block.note_block.bass voice @a ~ ~ ~ 2 0.61
    execute if entity @s[scores={Count_101=3}] run playsound minecraft:block.note_block.bass voice @a ~ ~ ~ 2 0.57

## エンティティの移動用スコア
    scoreboard players set @e[tag=Invader_101,type=item_display,scores={Group_101=1}] Move_101 0

## 移動方向の設定
    scoreboard players set @s[scores={Direction_101=2}] Direction_101 3
    scoreboard players set @s[scores={Direction_101=4}] Direction_101 1
    execute at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] positioned ~-9.5 62 -45.6 if entity @e[tag=Invader_101,type=item_display,dx=0,dy=24,dz=0] run scoreboard players set @s[scores={Direction_101=3}] Direction_101 4
    execute at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] positioned ~8.5 62 -45.6 if entity @e[tag=Invader_101,type=item_display,dx=0,dy=24,dz=0] run scoreboard players set @s[scores={Direction_101=1}] Direction_101 2

## 発射
    execute if score @s operation_101 matches 10.. if predicate spaceinvaders_101:invader/shot_10 at @e[tag=Invader_101,type=item_display,scores={Group_101=1},limit=1,sort=random] positioned ~-0.5 ~-10 ~-0.5 at @e[tag=Invader_101,type=item_display,scores={Group_101=1},limit=1,sort=nearest,dx=0,dy=15,dz=0] run function spaceinvaders_101:unit/invader/shot
    execute if score @s operation_101 matches 5..9 if predicate spaceinvaders_101:invader/shot_5 at @e[tag=Invader_101,type=item_display,scores={Group_101=1},limit=1,sort=random] positioned ~-0.5 ~-10 ~-0.5 at @e[tag=Invader_101,type=item_display,scores={Group_101=1},limit=1,sort=nearest,dx=0,dy=15,dz=0] run function spaceinvaders_101:unit/invader/shot
    execute if score @s operation_101 matches 2..4 if predicate spaceinvaders_101:invader/shot_2 at @e[tag=Invader_101,type=item_display,scores={Group_101=1},limit=1,sort=random] positioned ~-0.5 ~-10 ~-0.5 at @e[tag=Invader_101,type=item_display,scores={Group_101=1},limit=1,sort=nearest,dx=0,dy=15,dz=0] run function spaceinvaders_101:unit/invader/shot
    execute if score @s operation_101 matches 1 if predicate spaceinvaders_101:invader/shot_1 at @e[tag=Invader_101,type=item_display,scores={Group_101=1},limit=1,sort=random] positioned ~-0.5 ~-10 ~-0.5 at @e[tag=Invader_101,type=item_display,scores={Group_101=1},limit=1,sort=nearest,dx=0,dy=15,dz=0] run function spaceinvaders_101:unit/invader/shot