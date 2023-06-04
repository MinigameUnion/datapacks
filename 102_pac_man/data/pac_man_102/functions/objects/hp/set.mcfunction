#> pac_man_102:objects/hp/set
### パックマンの残機表示位置のセット

## 召喚
    kill @e[tag=PacMan_HP_102,type=item_display]
    summon item_display 1015.5 93 987.5 {Tags:[Entity_102,PacMan_HP_102],item:{id:"minecraft:yellow_concrete",Count:1b,tag:{CustomModelData:1003}},transformation:[1.5f,0f,0f,0f, 0f,0.1f,0f,1f, 0f,0f,1.5f,0f, 0f,0f,0f,1f],brightness:{sky:15,block:15}}
    summon item_display 1015.5 93 989.0 {Tags:[Entity_102,PacMan_HP_102],item:{id:"minecraft:yellow_concrete",Count:2b,tag:{CustomModelData:1003}},transformation:[1.5f,0f,0f,0f, 0f,0.1f,0f,1f, 0f,0f,1.5f,0f, 0f,0f,0f,1f],brightness:{sky:15,block:15}}
    summon item_display 1015.5 93 990.5 {Tags:[Entity_102,PacMan_HP_102],item:{id:"minecraft:yellow_concrete",Count:3b,tag:{CustomModelData:1003}},transformation:[1.5f,0f,0f,0f, 0f,0.1f,0f,1f, 0f,0f,1.5f,0f, 0f,0f,0f,1f],brightness:{sky:15,block:15}}

## スコアのセット
    execute as @e[tag=PacMan_HP_102,type=item_display] store result score @s _Operation_102 run data get entity @s item.Count