###
###コンティニュー演出
###

##タイマー進行
scoreboard players add @s[scores={Timer_101=-1..20}] Timer_101 1
##id同期
scoreboard players operation #_id Id_101 = @s id_000
execute as @e[tag=Entity_101] store success score @s Group_101 if score @s Id_101 = #_id Id_101

##自機
#設置
execute if score @s Timer_101 matches 19 run function spaceinvaders_101:unit/player/set
#移動
tp @e[tag=Player_101,scores={Group_101=1}] ~ 62 -46
#発射
execute if score @s Shot_101 matches 1.. run function spaceinvaders_101:unit/player/shot

##弾
#移動
execute as @e[tag=Bullet_101,scores={Group_101=1}] at @s run function spaceinvaders_101:unit/bullet/move

##選択
#赤
execute at @e[tag=BulletOfPlayer_101,scores={Group_101=1}] if block ~ ~0.3 ~ minecraft:red_concrete at @s run scoreboard players set @s remove_coin_000 300
execute at @e[tag=BulletOfPlayer_101,scores={Group_101=1}] if block ~ ~0.3 ~ minecraft:red_concrete at @s run function spaceinvaders_101:game/next
#青
execute at @e[tag=BulletOfPlayer_101,scores={Group_101=1}] if block ~ ~0.3 ~ minecraft:blue_concrete at @s run function spaceinvaders_101:game/reset

##タイトル演出
execute if score @s Timer_101 matches 0.. run title @s actionbar {"translate":"%sを撃つと%s %sを撃つと%sします","color":"white","with":[{"text":"赤の四角","color":"red"},{"text":"300ミニ消費してコンティニュー","color":"red"},{"text":"青の四角","color":"blue"},{"text":"終了","color":"blue"}]}
execute if score @s Timer_101 matches 0 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 983 62 -68 983 85 -68 ~-10 62 -46
execute if score @s Timer_101 matches 1 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 984 62 -68 984 85 -68 ~-9 62 -46
execute if score @s Timer_101 matches 2 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 985 62 -68 985 85 -68 ~-8 62 -46
execute if score @s Timer_101 matches 3 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 986 62 -68 986 85 -68 ~-7 62 -46
execute if score @s Timer_101 matches 4 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 987 62 -68 987 85 -68 ~-6 62 -46
execute if score @s Timer_101 matches 5 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 988 62 -68 988 85 -68 ~-5 62 -46
execute if score @s Timer_101 matches 6 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 989 62 -68 989 85 -68 ~-4 62 -46
execute if score @s Timer_101 matches 7 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 990 62 -68 990 85 -68 ~-3 62 -46
execute if score @s Timer_101 matches 8 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 991 62 -68 991 85 -68 ~-2 62 -46
execute if score @s Timer_101 matches 9 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 992 62 -68 992 85 -68 ~-1 62 -46
execute if score @s Timer_101 matches 10 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 993 62 -68 993 85 -68 ~0 62 -46
execute if score @s Timer_101 matches 11 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 994 62 -68 994 85 -68 ~1 62 -46
execute if score @s Timer_101 matches 12 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 995 62 -68 995 85 -68 ~2 62 -46
execute if score @s Timer_101 matches 13 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 996 62 -68 996 85 -68 ~3 62 -46
execute if score @s Timer_101 matches 14 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 997 62 -68 997 85 -68 ~4 62 -46
execute if score @s Timer_101 matches 15 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 998 62 -68 998 85 -68 ~5 62 -46
execute if score @s Timer_101 matches 16 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 999 62 -68 999 85 -68 ~6 62 -46
execute if score @s Timer_101 matches 17 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 1000 62 -68 1000 85 -68 ~7 62 -46
execute if score @s Timer_101 matches 18 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 1001 62 -68 1001 85 -68 ~8 62 -46
execute if score @s Timer_101 matches 19 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 1002 62 -68 1002 85 -68 ~9 62 -46
execute if score @s Timer_101 matches 20 at @e[tag=StagePoint_101,scores={Group_101=1}] run clone 1003 62 -68 1003 85 -68 ~10 62 -46