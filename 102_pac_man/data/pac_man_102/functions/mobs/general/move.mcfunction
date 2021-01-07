#速度パラメータ分移動 _Speed_102/16の移動

# as,at :entity
# _Group_102=1 → @sとの同IDエンティティ

#向きを角度に反映
execute store result entity @e[tag=Rot_102,scores={_Group_102=1},limit=1] Rotation[0] float 90 run scoreboard players get @s _Direction_102
#速度を角度に反映
execute store result entity @e[tag=Rot_102,scores={_Group_102=1},limit=1] Rotation[1] float 0.0013428698 run scoreboard players get @s _Speed_102

#テレポート
execute rotated as @e[tag=Rot_102,scores={_Group_102=1},limit=1] rotated ~ 0 unless block ^ ^ ^0.51 #pac_man_102:stage rotated as @e[tag=Rot_102,scores={_Group_102=1},limit=1] positioned ^ ^1000 ^ unless block ~ 92 ~ #pac_man_102:stage run tp @s ~ 92 ~
execute rotated as @e[tag=Rot_102,scores={_Group_102=1},limit=1] rotated ~ 0 if block ^ ^ ^0.51 #pac_man_102:stage align xz positioned ~0.5 ~ ~0.5 run tp @s ~ 92 ~
execute rotated as @e[tag=Rot_102,scores={_Group_102=1},limit=1] positioned ^ ^1000 ^ if block ~ 92 ~ #pac_man_102:stage at @s align xz positioned ~0.5 ~ ~0.5 run tp @s ~ 92 ~

#ワープゲート
scoreboard players remove @s _Stop_102 1
tp @s[scores={_Stop_102=1..}] ~ 0 ~
tp @s[scores={_Stop_102=0}] ~ 92 ~
scoreboard players reset @s[scores={_Stop_102=..0}] _Stop_102
execute rotated as @e[tag=Rot_102,scores={_Group_102=1},limit=1] rotated ~ 0 if block ^ ^-2 ^ diamond_block if block ^ ^-2 ^-1 minecraft:white_concrete positioned ^ ^ ^-27 align xz positioned ~0.5 ~ ~0.5 run scoreboard players set @s _Stop_102 3
execute rotated as @e[tag=Rot_102,scores={_Group_102=1},limit=1] rotated ~ 0 if block ^ ^-2 ^ diamond_block if block ^ ^-2 ^-1 minecraft:white_concrete positioned ^ ^ ^-27 align xz positioned ~0.5 ~ ~0.5 run tp @s ~ 0 ~