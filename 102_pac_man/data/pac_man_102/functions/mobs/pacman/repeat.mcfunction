#> pac_man_102:mobs/pacman/repeat
### パックマン 常時実行処理

#info
# as,at: @e[tag=PacMan_base_102]
# repeat

#食事
    #食事中タイマ
    scoreboard players remove @s[scores={_Timer_102=1..}] _Timer_102 1
    scoreboard players set @s[scores={_Timer_102=10}] _Timer_102 0
    #エサ
        #食事
        execute positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Pellet_102,type=item_display,dx=0,dy=0,dz=0] run function pac_man_102:objects/dots/eat_pellet
    #パワーエサ
        #食事
        execute positioned ~-0.5 ~ ~-0.5 if entity @e[tag=PowerPellet_102,type=item_display,dx=0,dy=0,dz=0] run function pac_man_102:objects/dots/eat_power_pellet
    #イジケ
        #食事
        execute if score #stop_102 _Timer_102 matches 0 positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Ghost_base_102,type=item_display,dx=0,dy=-0.5,dz=0,scores={_State_102=3}] run function pac_man_102:mobs/ghost/eaten
    #フルーツ
        #食事
        execute positioned ~-0.5 ~ ~-0.5 if entity @e[tag=Fruit_102,type=item_display,dx=0,dy=-0.5,dz=0.1] run function pac_man_102:objects/fruit/eat_fruit

#移動方向の設定
execute if score #stop_102 _Timer_102 matches 0 unless score #player_102 _Input_102 = @s _Direction_102 align xz positioned ~0.5 ~ ~0.5 run function pac_man_102:mobs/pacman/direction

#モデルアニメーション
    #向きを角度に反映
    execute store result entity @s Rotation[0] float 90 run scoreboard players get @s _Direction_102
    #アニメーション
    execute rotated as @s rotated ~ 0 unless block ^ ^ ^0.51 #pac_man_102:stage run function pac_man_102:mobs/pacman/model

#移動速度取得
    #通常時
    execute if score #reversal_102 _Timer_102 matches 0 store result score @s[scores={_Timer_102=0}] _Speed_102 run data get storage pac_man_102 Patterns[0].Difficulty[0]
    #通常時 パワーエサ食事中
    execute if score #reversal_102 _Timer_102 matches 0 store result score @s[scores={_Timer_102=1..9}] _Speed_102 run data get storage pac_man_102 Patterns[0].Difficulty[1]
    #通常時 パワーエサ食事中
    execute if score #reversal_102 _Timer_102 matches 0 store result score @s[scores={_Timer_102=11..19}] _Speed_102 run data get storage pac_man_102 Patterns[0].Difficulty[2]
    #逆転時
    execute if score #reversal_102 _Timer_102 matches 1.. store result score @s[scores={_Timer_102=0}] _Speed_102 run data get storage pac_man_102 Patterns[0].Difficulty[3]
    #逆転時 パワーエサ食事中
    execute if score #reversal_102 _Timer_102 matches 1.. store result score @s[scores={_Timer_102=1..9}] _Speed_102 run data get storage pac_man_102 Patterns[0].Difficulty[4]
    #逆転時 パワーエサ食事中
    execute if score #reversal_102 _Timer_102 matches 1.. store result score @s[scores={_Timer_102=11..19}] _Speed_102 run data get storage pac_man_102 Patterns[0].Difficulty[5]

#移動
execute at @s if score #stop_102 _Timer_102 matches 0 run function pac_man_102:mobs/general/move
