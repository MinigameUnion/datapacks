###
###ダメージ演出
###

##スコアの加算
scoreboard players add @e[tag=Player_damaged_101,scores={Group_101=1}] Timer_101 1
##タグの設定
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=86..}] run tag @e[tag=Player_damaged_101,scores={Group_101=1}] remove Player_damaged_101

##サウンド
#execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=0}] run playsound

##体力スロットの点滅
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=0}] at @e[tag=StagePoint_101,scores={Group_101=1}] run clone ~-2 ~-4 ~ ~2 ~-4 ~ ~-2 ~-1 ~-6
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=5}] at @e[tag=StagePoint_101,scores={Group_101=1}] run clone ~-2 ~-3 ~ ~2 ~-3 ~ ~-2 ~-1 ~-6
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=10}] at @e[tag=StagePoint_101,scores={Group_101=1}] run clone ~-2 ~-4 ~ ~2 ~-4 ~ ~-2 ~-1 ~-6
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=15}] at @e[tag=StagePoint_101,scores={Group_101=1}] run clone ~-2 ~-3 ~ ~2 ~-3 ~ ~-2 ~-1 ~-6
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=20}] at @e[tag=StagePoint_101,scores={Group_101=1}] run clone ~-2 ~-4 ~ ~2 ~-4 ~ ~-2 ~-1 ~-6
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=25}] at @e[tag=StagePoint_101,scores={Group_101=1}] run clone ~-2 ~-3 ~ ~2 ~-3 ~ ~-2 ~-1 ~-6
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=30}] at @e[tag=StagePoint_101,scores={Group_101=1}] run clone ~-2 ~-4 ~ ~2 ~-4 ~ ~-2 ~-1 ~-6
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=35}] at @e[tag=StagePoint_101,scores={Group_101=1}] run clone ~-2 ~-3 ~ ~2 ~-3 ~ ~-2 ~-1 ~-6
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=40}] at @e[tag=StagePoint_101,scores={Group_101=1}] run clone ~-2 ~-4 ~ ~2 ~-4 ~ ~-2 ~-1 ~-6
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=45}] at @e[tag=StagePoint_101,scores={Group_101=1}] run clone ~-2 ~-3 ~ ~2 ~-3 ~ ~-2 ~-1 ~-6
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=50}] at @e[tag=StagePoint_101,scores={Group_101=1}] run clone ~-2 ~-4 ~ ~2 ~-4 ~ ~-2 ~-1 ~-6
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=55}] at @e[tag=StagePoint_101,scores={Group_101=1}] run clone ~-2 ~-3 ~ ~2 ~-3 ~ ~-2 ~-1 ~-6
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=60}] at @e[tag=StagePoint_101,scores={Group_101=1}] run clone ~-2 ~-4 ~ ~2 ~-4 ~ ~-2 ~-1 ~-6
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=65}] at @e[tag=StagePoint_101,scores={Group_101=1}] run clone ~-2 ~-3 ~ ~2 ~-3 ~ ~-2 ~-1 ~-6
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=70}] at @e[tag=StagePoint_101,scores={Group_101=1}] run clone ~-2 ~-4 ~ ~2 ~-4 ~ ~-2 ~-1 ~-6
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=75}] at @e[tag=StagePoint_101,scores={Group_101=1}] run clone ~-2 ~-3 ~ ~2 ~-3 ~ ~-2 ~-1 ~-6
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=80}] at @e[tag=StagePoint_101,scores={Group_101=1}] run clone ~-2 ~-4 ~ ~2 ~-4 ~ ~-2 ~-1 ~-6

##自機の点滅
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=0}] run effect give @e[tag=Player_101,scores={Group_101=1}] minecraft:glowing
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=5}] run effect clear @e[tag=Player_101,scores={Group_101=1}] minecraft:glowing
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=10}] run effect give @e[tag=Player_101,scores={Group_101=1}] minecraft:glowing
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=15}] run effect clear @e[tag=Player_101,scores={Group_101=1}] minecraft:glowing
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=20}] run effect give @e[tag=Player_101,scores={Group_101=1}] minecraft:glowing
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=25}] run effect clear @e[tag=Player_101,scores={Group_101=1}] minecraft:glowing
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=30}] run effect give @e[tag=Player_101,scores={Group_101=1}] minecraft:glowing
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=35}] run effect clear @e[tag=Player_101,scores={Group_101=1}] minecraft:glowing
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=40}] run effect give @e[tag=Player_101,scores={Group_101=1}] minecraft:glowing
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=45}] run effect clear @e[tag=Player_101,scores={Group_101=1}] minecraft:glowing
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=50}] run effect give @e[tag=Player_101,scores={Group_101=1}] minecraft:glowing
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=55}] run effect clear @e[tag=Player_101,scores={Group_101=1}] minecraft:glowing
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=60}] run effect give @e[tag=Player_101,scores={Group_101=1}] minecraft:glowing
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=65}] run effect clear @e[tag=Player_101,scores={Group_101=1}] minecraft:glowing
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=70}] run effect give @e[tag=Player_101,scores={Group_101=1}] minecraft:glowing
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=75}] run effect clear @e[tag=Player_101,scores={Group_101=1}] minecraft:glowing
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=80}] run effect give @e[tag=Player_101,scores={Group_101=1}] minecraft:glowing
execute if entity @e[tag=Player_damaged_101,scores={Group_101=1,Timer_101=85}] run effect clear @e[tag=Player_101,scores={Group_101=1}] minecraft:glowing