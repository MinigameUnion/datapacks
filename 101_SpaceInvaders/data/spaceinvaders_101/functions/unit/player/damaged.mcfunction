###
###ダメージ演出
###

##スコアの加算
scoreboard players add @e[tag=Player_damaged_101,type=item_display,scores={Group_101=1}] Timer_101 1
##タグの設定
execute if score @s Timer_101 matches 86 run tag @e[tag=Player_damaged_101,type=item_display,scores={Group_101=1}] remove Player_damaged_101

##サウンド
#execute if score @s Timer_101 matches 0 run playsound

##体力スロットの点滅
execute if score @s Timer_101 matches 0 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone ~-2 ~-4 ~ ~2 ~-4 ~ ~-2 ~-1 ~-6
execute if score @s Timer_101 matches 5 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone ~-2 ~-3 ~ ~2 ~-3 ~ ~-2 ~-1 ~-6
execute if score @s Timer_101 matches 10 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone ~-2 ~-4 ~ ~2 ~-4 ~ ~-2 ~-1 ~-6
execute if score @s Timer_101 matches 15 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone ~-2 ~-3 ~ ~2 ~-3 ~ ~-2 ~-1 ~-6
execute if score @s Timer_101 matches 20 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone ~-2 ~-4 ~ ~2 ~-4 ~ ~-2 ~-1 ~-6
execute if score @s Timer_101 matches 25 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone ~-2 ~-3 ~ ~2 ~-3 ~ ~-2 ~-1 ~-6
execute if score @s Timer_101 matches 30 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone ~-2 ~-4 ~ ~2 ~-4 ~ ~-2 ~-1 ~-6
execute if score @s Timer_101 matches 35 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone ~-2 ~-3 ~ ~2 ~-3 ~ ~-2 ~-1 ~-6
execute if score @s Timer_101 matches 40 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone ~-2 ~-4 ~ ~2 ~-4 ~ ~-2 ~-1 ~-6
execute if score @s Timer_101 matches 45 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone ~-2 ~-3 ~ ~2 ~-3 ~ ~-2 ~-1 ~-6
execute if score @s Timer_101 matches 50 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone ~-2 ~-4 ~ ~2 ~-4 ~ ~-2 ~-1 ~-6
execute if score @s Timer_101 matches 55 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone ~-2 ~-3 ~ ~2 ~-3 ~ ~-2 ~-1 ~-6
execute if score @s Timer_101 matches 60 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone ~-2 ~-4 ~ ~2 ~-4 ~ ~-2 ~-1 ~-6
execute if score @s Timer_101 matches 65 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone ~-2 ~-3 ~ ~2 ~-3 ~ ~-2 ~-1 ~-6
execute if score @s Timer_101 matches 70 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone ~-2 ~-4 ~ ~2 ~-4 ~ ~-2 ~-1 ~-6
execute if score @s Timer_101 matches 75 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone ~-2 ~-3 ~ ~2 ~-3 ~ ~-2 ~-1 ~-6
execute if score @s Timer_101 matches 80 at @e[tag=StagePoint_101,type=marker,scores={Group_101=1}] run clone ~-2 ~-4 ~ ~2 ~-4 ~ ~-2 ~-1 ~-6

##自機の点滅
execute if score @s Timer_101 matches 0 run data modify entity @s Glowing set value true
execute if score @s Timer_101 matches 5 run data modify entity @s Glowing set value false
execute if score @s Timer_101 matches 10 run data modify entity @s Glowing set value true
execute if score @s Timer_101 matches 15 run data modify entity @s Glowing set value false
execute if score @s Timer_101 matches 20 run data modify entity @s Glowing set value true
execute if score @s Timer_101 matches 25 run data modify entity @s Glowing set value false
execute if score @s Timer_101 matches 30 run data modify entity @s Glowing set value true
execute if score @s Timer_101 matches 35 run data modify entity @s Glowing set value false
execute if score @s Timer_101 matches 40 run data modify entity @s Glowing set value true
execute if score @s Timer_101 matches 45 run data modify entity @s Glowing set value false
execute if score @s Timer_101 matches 50 run data modify entity @s Glowing set value true
execute if score @s Timer_101 matches 55 run data modify entity @s Glowing set value false
execute if score @s Timer_101 matches 60 run data modify entity @s Glowing set value true
execute if score @s Timer_101 matches 65 run data modify entity @s Glowing set value false
execute if score @s Timer_101 matches 70 run data modify entity @s Glowing set value true
execute if score @s Timer_101 matches 75 run data modify entity @s Glowing set value false
execute if score @s Timer_101 matches 80 run data modify entity @s Glowing set value true
execute if score @s Timer_101 matches 85 run data modify entity @s Glowing set value false