#> pac_man_102:mobs/ghost/state/in_nest
### 巣のなかにいる

#info
# as,at:@e[tag=Ghost_102](scores={_State_102=1})
#repeat

#上下に移動
    #上
    execute if score @s _Direction_102 matches 3 unless block ~0.51 ~ ~ #pac_man_102:stage run tp @s ~0.2 ~ ~
    execute if block ~0.51 ~ ~ #pac_man_102:stage run scoreboard players set @s _Direction_102 1
    #下
    execute if score @s _Direction_102 matches 1 unless block ~-0.51 ~ ~ #pac_man_102:stage run tp @s ~-0.2 ~ ~
    execute if block ~-0.51 ~ ~ #pac_man_102:stage run scoreboard players set @s _Direction_102 3

#巣からでる条件を満たしたとき
scoreboard players remove @s _Timer_102 1
execute if score @s _Timer_102 matches 0 run scoreboard players set @s _State_102 1
execute if score @s _Count_102 matches 0 run scoreboard players set @s _State_102 1

#モデル適応
    #体
    execute if entity @s[tag=Blinky_102] on passengers if entity @s[tag=Ghost_body_102] unless data entity @s item{id:"minecraft:red_concrete"} run data modify entity @s item.id set value "red_concrete"
    execute if entity @s[tag=Pinky_102] on passengers if entity @s[tag=Ghost_body_102] unless data entity @s item{id:"minecraft:pink_concrete"} run data modify entity @s item.id set value "pink_concrete"
    execute if entity @s[tag=Inky_102] on passengers if entity @s[tag=Ghost_body_102] unless data entity @s item{id:"minecraft:cyan_concrete"} run data modify entity @s item.id set value "cyan_concrete"
    execute if entity @s[tag=Clyde_102] on passengers if entity @s[tag=Ghost_body_102] unless data entity @s item{id:"minecraft:orange_concrete"} run data modify entity @s item.id set value "orange_concrete"
    # 目
    execute on passengers if entity @s[tag=Ghost_eye_102] unless data entity @s item{id:"minecraft:stone_button"} run data modify entity @s item.id set value "stone_button"