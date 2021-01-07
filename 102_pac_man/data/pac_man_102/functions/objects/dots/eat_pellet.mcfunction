#エサを食べた時

#info
# as :player(score{Game_102=20})
# at :@e[tag=PacMan_102]
# if :@e[tag=Pellet_102,dx=0,dy=0,dz=0]

#タイマーの設定
scoreboard players set @e[tag=PacMan_102] _Timer_102 5

#得点の追加
scoreboard players add @a[tag=Playing_102] _Point_102 10

#残りエサ数の減算
scoreboard players remove #pellet_102 _Count_102 1
scoreboard players remove @e[tag=Ghost_base_102,scores={_State_102=0}] _Count_102 1

#サウンド
execute as @a[scores={playing_000=102}] at @s run playsound minecraft:block.note_block.didgeridoo voice @s ~ ~ ~ 1 2

#エサの削除
kill @e[tag=Pellet_102,dx=0,dy=0,dz=0,limit=1]