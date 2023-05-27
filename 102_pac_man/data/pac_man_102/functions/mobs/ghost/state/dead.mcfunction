#> pac_man_102:mobs/ghost/state/dead
### 巣に戻るとき

#info
# as,at: @e[tag=Ghost_base_102,type=item_display,scores={_State_102=4}]

#速度の設定
scoreboard players set @s _Speed_102 28

#移動方向決定
    #向きを角度に反映
    execute store result entity @s Rotation[0] float 90 run scoreboard players get @s _Direction_102
    #曲がり角
    execute rotated as @s rotated ~ 0 unless block ~ ~-2 ~ minecraft:gold_block if block ^ ^ ^0.51 #pac_man_102:stage run function pac_man_102:mobs/ghost/turn/corner
    #交差点
        #交差点に入ったことを検知
        execute if score @s _Operation_102 matches 0 rotated as @s rotated ~ 0 if block ^ ^-2 ^-0.49 minecraft:gold_block align xz positioned ~0.5 ~ ~0.5 run function pac_man_102:mobs/ghost/turn/eye
        #地面が金ブロックかどうかを保存
        execute store success score @s _Operation_102 rotated as @s rotated ~ 0 if block ^ ^-2 ^-0.49 minecraft:gold_block

#巣の前に来たら中に入る
    execute at @s if block ~-1 ~ ~ minecraft:red_stained_glass_pane run scoreboard players set @s _State_102 1
    execute at @s if block ~-1 ~ ~ minecraft:red_stained_glass_pane run scoreboard players set @s _Direction_102 3
    execute at @s if block ~-1 ~ ~ minecraft:red_stained_glass_pane run tp @s 1001 92 1001.0

#モデル適応
    execute on passengers if entity @s[tag=Ghost_body_102] unless data entity @s item{id:"minecraft:air"} run data modify entity @s item.id set value "minecraft:air"
    execute on passengers if entity @s[tag=Ghost_eye_102] unless data entity @s item{id:"minecraft:stone_button"} run data modify entity @s item.id set value "stone_button"