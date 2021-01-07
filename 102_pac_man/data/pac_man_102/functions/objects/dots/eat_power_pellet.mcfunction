#パワーエサを食べた時

#info
# as :player(score{Game_102=5})
# at :@e[tag=PacMan_102]
# if :@e[tag=PowerPellet_102,dx=0,dy=0,dz=0]

#タイマーの設定
execute store result score #reversal_102 _Timer_102 run data get storage pac_man_102 Patterns[0].PowerTime

#イジケ
    #スコアの設定
    scoreboard players set @e[tag=Ghost_base_102,scores={_State_102=2}] _State_102 3
    scoreboard players set #izike_102 _Point_102 100
    #ゴーストの視点切り替え
    execute as @e[tag=Ghost_base_102] run function pac_man_102:mobs/ghost/turn/back

#得点の追加
scoreboard players add @a[tag=Playing_102] _Point_102 100

#残りエサ数の減算
scoreboard players remove #pellet_102 _Count_102 1
scoreboard players remove @e[tag=Ghost_base_102,scores={_State_102=1..}] _Count_102 1

#サウンド
execute as @a[scores={playing_000=102}] at @s run playsound minecraft:block.note_block.didgeridoo voice @s ~ ~ ~ 1 2

#エサの削除
kill @e[tag=PowerPellet_102,dx=0,dy=0,dz=0,limit=1]