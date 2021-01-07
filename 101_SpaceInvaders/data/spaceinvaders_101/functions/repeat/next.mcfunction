###
###ステージ移行演出
###

##タイマー進行
scoreboard players add @s[scores={Timer_101=-1..110}] Timer_101 1
##id同期
scoreboard players operation #_id Id_101 = @s id_000
execute as @e[tag=Entity_101] store success score @s Group_101 if score @s Id_101 = #_id Id_101

##移行
execute if score @s Timer_101 matches 110 run function spaceinvaders_101:game/active

##タイトル演出
execute if score @s Timer_101 matches 0 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 983 62 -49 983 85 -49 ~-10 62 -46
execute if score @s Timer_101 matches 1 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 984 62 -49 984 85 -49 ~-9 62 -46
execute if score @s Timer_101 matches 2 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 985 62 -49 985 85 -49 ~-8 62 -46
execute if score @s Timer_101 matches 3 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 986 62 -49 986 85 -49 ~-7 62 -46
execute if score @s Timer_101 matches 4 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 987 62 -49 987 85 -49 ~-6 62 -46
execute if score @s Timer_101 matches 5 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 988 62 -49 988 85 -49 ~-5 62 -46
execute if score @s Timer_101 matches 6 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 989 62 -49 989 85 -49 ~-4 62 -46
execute if score @s Timer_101 matches 7 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 990 62 -49 990 85 -49 ~-3 62 -46
execute if score @s Timer_101 matches 8 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 991 62 -49 991 85 -49 ~-2 62 -46
execute if score @s Timer_101 matches 9 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 992 62 -49 992 85 -49 ~-1 62 -46
execute if score @s Timer_101 matches 10 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 993 62 -49 993 85 -49 ~0 62 -46
execute if score @s Timer_101 matches 11 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 994 62 -49 994 85 -49 ~1 62 -46
execute if score @s Timer_101 matches 12 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 995 62 -49 995 85 -49 ~2 62 -46
execute if score @s Timer_101 matches 13 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 996 62 -49 996 85 -49 ~3 62 -46
execute if score @s Timer_101 matches 14 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 997 62 -49 997 85 -49 ~4 62 -46
execute if score @s Timer_101 matches 15 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 998 62 -49 998 85 -49 ~5 62 -46
execute if score @s Timer_101 matches 16 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 999 62 -49 999 85 -49 ~6 62 -46
execute if score @s Timer_101 matches 17 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 1000 62 -49 1000 85 -49 ~7 62 -46
execute if score @s Timer_101 matches 18 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 1001 62 -49 1001 85 -49 ~8 62 -46
execute if score @s Timer_101 matches 19 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 1002 62 -49 1002 85 -49 ~9 62 -46
execute if score @s Timer_101 matches 20 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 1003 62 -49 1003 85 -49 ~10 62 -46

execute if score @s Timer_101 matches 30 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 990 71 -50 990 74 -50 ~-3 71 -46
execute if score @s Timer_101 matches 31 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 991 71 -50 991 74 -50 ~-2 71 -46
execute if score @s Timer_101 matches 32 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 992 71 -50 992 74 -50 ~-1 71 -46
execute if score @s Timer_101 matches 33 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 993 71 -50 993 74 -50 ~0 71 -46
execute if score @s Timer_101 matches 34 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 994 71 -50 994 74 -50 ~1 71 -46
execute if score @s Timer_101 matches 35 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 995 71 -50 995 74 -50 ~2 71 -46
execute if score @s Timer_101 matches 36 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 996 71 -50 996 74 -50 ~3 71 -46

execute if score @s Timer_101 matches 76 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 983 62 -61 983 85 -61 ~-10 62 -46
execute if score @s Timer_101 matches 78 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 984 62 -61 984 85 -61 ~-9 62 -46
execute if score @s Timer_101 matches 79 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 985 62 -61 985 85 -61 ~-8 62 -46
execute if score @s Timer_101 matches 80 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 986 62 -61 986 85 -61 ~-7 62 -46
execute if score @s Timer_101 matches 81 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 987 62 -61 987 85 -61 ~-6 62 -46
execute if score @s Timer_101 matches 82 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 988 62 -61 988 85 -61 ~-5 62 -46
execute if score @s Timer_101 matches 83 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 989 62 -61 989 85 -61 ~-4 62 -46
execute if score @s Timer_101 matches 84 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 990 62 -61 990 85 -61 ~-3 62 -46
execute if score @s Timer_101 matches 85 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 991 62 -61 991 85 -61 ~-2 62 -46
execute if score @s Timer_101 matches 86 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 992 62 -61 992 85 -61 ~-1 62 -46
execute if score @s Timer_101 matches 87 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 993 62 -61 993 85 -61 ~0 62 -46
execute if score @s Timer_101 matches 88 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 994 62 -61 994 85 -61 ~1 62 -46
execute if score @s Timer_101 matches 89 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 995 62 -61 995 85 -61 ~2 62 -46
execute if score @s Timer_101 matches 90 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 996 62 -61 996 85 -61 ~3 62 -46
execute if score @s Timer_101 matches 91 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 997 62 -61 997 85 -61 ~4 62 -46
execute if score @s Timer_101 matches 92 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 998 62 -61 998 85 -61 ~5 62 -46
execute if score @s Timer_101 matches 93 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 999 62 -61 999 85 -61 ~6 62 -46
execute if score @s Timer_101 matches 94 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 1000 62 -61 1000 85 -61 ~7 62 -46
execute if score @s Timer_101 matches 95 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 1001 62 -61 1001 85 -61 ~8 62 -46
execute if score @s Timer_101 matches 96 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 1002 62 -61 1002 85 -61 ~9 62 -46
execute if score @s Timer_101 matches 97 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 1003 62 -61 1003 85 -61 ~10 62 -46

##盤面配置
execute if score @s Timer_101 matches 90 run function spaceinvaders_101:unit/invader/set
execute if score @s Timer_101 matches 90 at @e[tag=StagePoint_101,scores={Group_101=1}] positioned ~-10000 ~ -46 as @e[tag=Invader_101,limit=5,sort=nearest] run data modify entity @s ArmorItems[3] set from entity @s ArmorItems[0]
execute if score @s Timer_101 matches 91 at @e[tag=StagePoint_101,scores={Group_101=1}] positioned ~-10000 ~ -46 as @e[tag=Invader_101,limit=10,sort=nearest] run data modify entity @s ArmorItems[3] set from entity @s ArmorItems[0]
execute if score @s Timer_101 matches 92 at @e[tag=StagePoint_101,scores={Group_101=1}] positioned ~-10000 ~ -46 as @e[tag=Invader_101,limit=15,sort=nearest] run data modify entity @s ArmorItems[3] set from entity @s ArmorItems[0]
execute if score @s Timer_101 matches 93 at @e[tag=StagePoint_101,scores={Group_101=1}] positioned ~-10000 ~ -46 as @e[tag=Invader_101,limit=20,sort=nearest] run data modify entity @s ArmorItems[3] set from entity @s ArmorItems[0]
execute if score @s Timer_101 matches 94 at @e[tag=StagePoint_101,scores={Group_101=1}] positioned ~-10000 ~ -46 as @e[tag=Invader_101,limit=25,sort=nearest] run data modify entity @s ArmorItems[3] set from entity @s ArmorItems[0]
execute if score @s Timer_101 matches 95 at @e[tag=StagePoint_101,scores={Group_101=1}] positioned ~-10000 ~ -46 as @e[tag=Invader_101,limit=30,sort=nearest] run data modify entity @s ArmorItems[3] set from entity @s ArmorItems[0]
execute if score @s Timer_101 matches 96 at @e[tag=StagePoint_101,scores={Group_101=1}] positioned ~-10000 ~ -46 as @e[tag=Invader_101,limit=35,sort=nearest] run data modify entity @s ArmorItems[3] set from entity @s ArmorItems[0]
execute if score @s Timer_101 matches 97 at @e[tag=StagePoint_101,scores={Group_101=1}] positioned ~-10000 ~ -46 as @e[tag=Invader_101,limit=40,sort=nearest] run data modify entity @s ArmorItems[3] set from entity @s ArmorItems[0]
execute if score @s Timer_101 matches 98 at @e[tag=StagePoint_101,scores={Group_101=1}] positioned ~-10000 ~ -46 as @e[tag=Invader_101,limit=45,sort=nearest] run data modify entity @s ArmorItems[3] set from entity @s ArmorItems[0]
execute if score @s Timer_101 matches 99 at @e[tag=StagePoint_101,scores={Group_101=1}] positioned ~-10000 ~ -46 as @e[tag=Invader_101,limit=50,sort=nearest] run data modify entity @s ArmorItems[3] set from entity @s ArmorItems[0]
execute if score @s Timer_101 matches 100 at @e[tag=StagePoint_101,scores={Group_101=1}] positioned ~-10000 ~ -46 as @e[tag=Invader_101,limit=55,sort=nearest] run data modify entity @s ArmorItems[3] set from entity @s ArmorItems[0]

execute if score @s Timer_101 matches 100 run function spaceinvaders_101:unit/player/set
execute if score @s Timer_101 matches 100 run function spaceinvaders_101:unit/ufo/set