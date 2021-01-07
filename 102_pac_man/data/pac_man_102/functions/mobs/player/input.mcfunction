#方向入力取得

#info
# as,at :player
# execute positioned 997.0 115.0 1001.0 unless entity @s[distance=..0.001] run

#下
execute positioned ~1000 ~ ~-1000 if entity @s[distance=1414.213562..] positioned ~ ~ ~2000 if entity @s[distance=1414.213562..] run scoreboard players set #player_102 _Input_102 1
#左
execute positioned ~-1000 ~ ~1000 if entity @s[distance=1414.213562..] positioned ~2000 ~ ~ if entity @s[distance=1414.213562..] run scoreboard players set #player_102 _Input_102 2
#上
execute positioned ~-1000 ~ ~-1000 if entity @s[distance=1414.213562..] positioned ~ ~ ~2000 if entity @s[distance=1414.213562..] run scoreboard players set #player_102 _Input_102 3
#右
execute positioned ~-1000 ~ ~-1000 if entity @s[distance=1414.213562..] positioned ~2000 ~ ~ if entity @s[distance=1414.213562..] run scoreboard players set #player_102 _Input_102 4