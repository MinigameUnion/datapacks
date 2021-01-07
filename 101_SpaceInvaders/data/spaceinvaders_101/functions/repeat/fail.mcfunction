###
###ゲームオーバー演出
###

##タイマー進行
scoreboard players add @s[scores={Timer_101=-1..100}] Timer_101 1
##id同期
scoreboard players operation #_id Id_101 = @s id_000
execute as @e[tag=Entity_101] store success score @s Group_101 if score @s Id_101 = #_id Id_101

##コンティニューに移行
    #コインがない時
    execute if score @s Timer_101 matches 100 run function spaceinvaders_101:game/reset
    #コインがあるとき
    execute if score @s Timer_101 matches 30 if score @s coin_000 matches 300.. run function spaceinvaders_101:game/continue
##

##タイトル演出
execute if score @s Timer_101 matches 0 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 983 62 -62 983 85 -62 ~-10 62 -46
execute if score @s Timer_101 matches 1 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 984 62 -62 984 85 -62 ~-9 62 -46
execute if score @s Timer_101 matches 2 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 985 62 -62 985 85 -62 ~-8 62 -46
execute if score @s Timer_101 matches 3 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 986 62 -62 986 85 -62 ~-7 62 -46
execute if score @s Timer_101 matches 4 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 987 62 -62 987 85 -62 ~-6 62 -46
execute if score @s Timer_101 matches 5 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 988 62 -62 988 85 -62 ~-5 62 -46
execute if score @s Timer_101 matches 6 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 989 62 -62 989 85 -62 ~-4 62 -46
execute if score @s Timer_101 matches 7 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 990 62 -62 990 85 -62 ~-3 62 -46
execute if score @s Timer_101 matches 8 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 991 62 -62 991 85 -62 ~-2 62 -46
execute if score @s Timer_101 matches 9 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 992 62 -62 992 85 -62 ~-1 62 -46
execute if score @s Timer_101 matches 10 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 993 62 -62 993 85 -62 ~0 62 -46
execute if score @s Timer_101 matches 11 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 994 62 -62 994 85 -62 ~1 62 -46
execute if score @s Timer_101 matches 12 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 995 62 -62 995 85 -62 ~2 62 -46
execute if score @s Timer_101 matches 13 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 996 62 -62 996 85 -62 ~3 62 -46
execute if score @s Timer_101 matches 14 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 997 62 -62 997 85 -62 ~4 62 -46
execute if score @s Timer_101 matches 15 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 998 62 -62 998 85 -62 ~5 62 -46
execute if score @s Timer_101 matches 16 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 999 62 -62 999 85 -62 ~6 62 -46
execute if score @s Timer_101 matches 17 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 1000 62 -62 1000 85 -62 ~7 62 -46
execute if score @s Timer_101 matches 18 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 1001 62 -62 1001 85 -62 ~8 62 -46
execute if score @s Timer_101 matches 19 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 1002 62 -62 1002 85 -62 ~9 62 -46
execute if score @s Timer_101 matches 20 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 1003 62 -62 1003 85 -62 ~10 62 -46

##ミニの計算
execute if score @s Timer_101 matches 100 run scoreboard players reset @s Coin_101
execute if score @s Timer_101 matches 100 run scoreboard players operation @s Coin_101 = @s Point_101
execute if score @s Timer_101 matches 100 run scoreboard players operation @s Coin_101 /= #_const_10 operation_101
execute if score @s Timer_101 matches 100 run scoreboard players operation @s add_coin_000 = @s Coin_101

##得点表示
execute if score @s Timer_101 matches 100 run tellraw @s {"translate":"------------------------\nあなたのスコア : %s\n獲得ミニ : %s\n------------------------","with":[{"score":{"name":"@s","objective":"Point_101"},"color":"green"},{"score":{"name":"@s","objective":"Coin_101"},"color":"green"}]}