#> spaceinvaders_101:unit/ufo/beated
### UFOの撃墜演出

## スコア設定
    scoreboard players set @s[scores={Timer_101=10}] Timer_101 0
    scoreboard players add @s Timer_101 1

## 演出
    # 音
    execute if score @s Timer_101 matches 1 at @a[scores={Group_101=1,playing_000=101}] run playsound block.note_block.bit voice @a ~ ~ ~ 1 0.3 1
    execute if score @s Timer_101 matches 2 at @a[scores={Group_101=1,playing_000=101}] run playsound block.note_block.bit voice @a ~ ~ ~ 1 0.5 1
    execute if score @s Timer_101 matches 3 at @a[scores={Group_101=1,playing_000=101}] run playsound block.note_block.bit voice @a ~ ~ ~ 1 0.7 1
    execute if score @s Timer_101 matches 4 at @a[scores={Group_101=1,playing_000=101}] run playsound block.note_block.bit voice @a ~ ~ ~ 1 0.9 1
    execute if score @s Timer_101 matches 5 at @a[scores={Group_101=1,playing_000=101}] run playsound block.note_block.bit voice @a ~ ~ ~ 1 1.1 1
    execute if score @s Timer_101 matches 6 at @a[scores={Group_101=1,playing_000=101}] run playsound block.note_block.bit voice @a ~ ~ ~ 1 1.3 1
    execute if score @s Timer_101 matches 7 at @a[scores={Group_101=1,playing_000=101}] run playsound block.note_block.bit voice @a ~ ~ ~ 1 1.1 1
    execute if score @s Timer_101 matches 8 at @a[scores={Group_101=1,playing_000=101}] run playsound block.note_block.bit voice @a ~ ~ ~ 1 0.9 1
    execute if score @s Timer_101 matches 9 at @a[scores={Group_101=1,playing_000=101}] run playsound block.note_block.bit voice @a ~ ~ ~ 1 0.7 1
    execute if score @s Timer_101 matches 10 at @a[scores={Group_101=1,playing_000=101}] run playsound block.note_block.bit voice @a ~ ~ ~ 1 0.5 1
    # パーティクル
    execute if score @s Timer_101 matches 1 run particle minecraft:dust 0.9 0.05 0.05 1 ~ ~2 ~ 0 0 0 0.01 5 force
    execute if score @s Timer_101 matches 2 run particle minecraft:dust 0.9 0.05 0.05 1 ~ ~2 ~ 0.2 0.2 0.2 0.01 5 force
    execute if score @s Timer_101 matches 3 run particle minecraft:dust 0.9 0.05 0.05 1 ~ ~2 ~ 0.4 0.4 0.4 0.01 5 force
    execute if score @s Timer_101 matches 4 run particle minecraft:dust 0.9 0.05 0.05 1 ~ ~2 ~ 0.6 0.6 0.6 0.01 5 force
    execute if score @s Timer_101 matches 5 run particle minecraft:dust 0.9 0.05 0.05 1 ~ ~2 ~ 0.8 0.8 0.8 0.01 5 force
    execute if score @s Timer_101 matches 6 run particle minecraft:dust 0.9 0.05 0.05 1 ~ ~2 ~ 1 1 1 0.01 5 force
    execute if score @s Timer_101 matches 7 run particle minecraft:dust 0.9 0.05 0.05 1 ~ ~2 ~ 0.8 0.8 0.8 0.01 5 force
    execute if score @s Timer_101 matches 8 run particle minecraft:dust 0.9 0.05 0.05 1 ~ ~2 ~ 0.6 0.6 0.6 0.01 5 force
    execute if score @s Timer_101 matches 9 run particle minecraft:dust 0.9 0.05 0.05 1 ~ ~2 ~ 0.4 0.4 0.4 0.01 5 force
    execute if score @s Timer_101 matches 10 run particle minecraft:dust 0.9 0.05 0.05 1 ~ ~2 ~ 0.2 0.2 0.1 0.01 5 force